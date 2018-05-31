<?php    
	include './inicijalizacija.php';
	include 'vanjske_biblioteke/recaptchalib.php';

    $naslov = "Dodaj u tablicu"; 	
	$smarty->assign('h2_naslov', $naslov);	

	$funkcija = new Funkcije();
	
	if(isset($_POST['imeTablice'])){
		$tablica = $_POST['imeTablice'];
		
		if($tablica == 'natjecaj'){
			if(isset($_SESSION['uloga'])){ 
				if($_SESSION['uloga'] != 'moderator' && $_SESSION['uloga'] != 'admin')
				{
					$tablica = 'prijava_natjecaj';
					$idNatjecaj = $_POST['id_natjecaj'];
					$smarty->assign('id_natjecaj', $idNatjecaj);
					$baza =  new Baza();
					$baza -> spojiDB();
					$sql =  "SELECT id_korisnik FROM korisnik WHERE kor_ime = '" . $_SESSION['korime'] ."'";
					$rez = $baza->selectDB($sql);
					$rezUpita = mysqli_fetch_array($rez)['id_korisnik'];
					$smarty->assign('id_korisnik', $rezUpita);					
				}
			}
			else{				
				$tablica = 'prijava_natjecaj';
				$idNatjecaj = $_POST['id_natjecaj'];
				$smarty->assign('id_natjecaj', $idNatjecaj);				
				$smarty->assign('id_korisnik', 0);				
			}
		}

		$stupci = $funkcija->stupciTablice($tablica);		
			
		$smarty->assign('stupci', $stupci);
		$smarty->assign('imeTablice', $tablica);
		$ext = $funkcija->vanjskiKljucevi($stupci,$tablica);
		$smarty->assign('ext', $ext);	
	}

	if(isset($_POST['upisi']))
    	$poruka = $funkcija->upisUTablicu($tablica, $stupci,$_POST);    
    
	$smarty->display('predlosci/_header.tpl');

	if(isset($tablica) && $tablica == 'korisnik'){
		$smarty->assign('h2_naslov', 'Upis novog korisnika');
		$smarty->assign('mod', 'reg');
    	$smarty->display('predlosci/_prijavaRegistracija.tpl');
	}
	
	elseif (isset($_POST['korimeRegistracija'])){
		 // your secret key
        $secret = "6LerT1wUAAAAAHDEPONx2Tz-33ZZ-Na7qW-bMkXh";
         
        // empty response
        $response = null;
         
        // check secret key
        $reCaptcha = new ReCaptcha($secret);

        if ($_POST["g-recaptcha-response"]) {
            $response = $reCaptcha->verifyResponse(
                $_SERVER["REMOTE_ADDR"],
                $_POST["g-recaptcha-response"]
            );
        }

         if ($response != null && $response->success) {
           $funkcija -> registracija('crud');
          }    	       
	}
	else
    	$smarty->display('predlosci/_dodajUTablicu.tpl');   

    if(isset($poruka) && $poruka != ""){    	
    	$smarty->assign('poruka', $poruka);
    	$smarty->display('predlosci/_poruka.tpl');
    }

    $smarty->display('predlosci/_footer.tpl');   
?>