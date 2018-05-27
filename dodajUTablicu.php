<?php    
	include './inicijalizacija.php';
    $naslov = "Dodaj u tablicu"; 	
	$smarty->assign('h2_naslov', $naslov);	



	$funkcija = new Funkcije();
	$tablica = $_POST['imeTablice'];
	
	$stupci = $funkcija->stupciTablice($tablica);
		
	$smarty->assign('stupci', $stupci);
	$smarty->assign('imeTablice', $tablica);
	$smarty->display('predlosci/_header.tpl');
	if($tablica == 'korisnik'){
		$smarty->assign('h2_naslov', 'Upis novog korisnika');
		$smarty->assign('mod', 'reg');
    	$smarty->display('predlosci/_prijavaRegistracija.tpl');
	}
	else
    	$smarty->display('predlosci/_dodajUTablicu.tpl');
    

    if(isset($_POST['upisi']))
    	$funkcija->upisUTablicu($tablica, $stupci,$_POST);

    $smarty->display('predlosci/_footer.tpl');   
?>