<?php    
	include './inicijalizacija.php';
	include 'vanjske_biblioteke/recaptchalib.php';

    $naslov = "Dodaj u tablicu"; 	
	$smarty->assign('h2_naslov', $naslov);	
	
	$tablica="";

	$funkcija = new Funkcije();
	
	if(isset($_GET['imeTablice'])){
		$_POST['imeTablice'] = $_GET['imeTablice'];
	}

	//ucitavanje za przikaz 
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

	if(isset($_POST['upisi'])){
		if($tablica == 'korisnik')
			$poruka = $funkcija->upisiKorisnik($_POST);
		else
    		$poruka = $funkcija->upisUTablicu($tablica, $stupci,$_POST);
	}
    
	$smarty->display('predlosci/_header.tpl');

	
    $smarty->display('predlosci/_dodajUTablicu.tpl');   

    if(isset($poruka) && $poruka != ""){ 
    	if ($tablica == 'korisnik') {
   		 	$smarty->assign('poruka', $poruka[0]);
	        $smarty->assign('prazno', $poruka[1]);
	        $smarty->assign('nedozvoljeno', $poruka[2]);
	        $smarty->display('predlosci/_poruka.tpl');
	   	}   	
	   	else{
	    	$smarty->assign('poruka', $poruka);
	    	$smarty->display('predlosci/_poruka.tpl');
    	}
    }

    $smarty->display('predlosci/_footer.tpl');   
?>