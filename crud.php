<?php    
	include './inicijalizacija.php';   
	$smarty->display('predlosci/_header.tpl');
	
	if(isset($_SESSION['korime']) && $_SESSION['korime'] == 'admin'){	
		$smarty->assign('h2_naslov', 'CRUD operacije');
		
		$funkcija =  new Funkcije();
		$tablice  = $funkcija->ucitajTablice();

		$smarty->assign('tablice', $tablice);
		

		if(isset($_GET['odabirTablica'])){
			$tablica  = $funkcija->ucitajTablicu();	
			$smarty->assign('tablica', $tablica[0]);
			$smarty->assign('stupci', $tablica[1]);
			$smarty->assign('imeTablice', $tablica[2]);
		}
	    
	    $smarty->display('predlosci/_crud.tpl');	
	}
	else{
		$smarty->assign('poruka', 'Nedozvoljen pristup');
		$smarty->display('predlosci/_poruka.tpl');
	}
	$smarty->display('predlosci/_footer.tpl');
?>