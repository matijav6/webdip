<?php    
    $h2_naslov = "CRUD";    
    include './inicijalizacija.php';
       
	
	$smarty->assign('h2_naslov', 'CRUD operacije');
	
	$funkcija =  new Funkcije();
	$tablice  = $funkcija->ucitajTablice();

	$smarty->assign('tablice', $tablice);
	
	$smarty->display('predlosci/_header.tpl');

	if(isset($_GET['odabirTablica'])){
		$tablica  = $funkcija->ucitajTablicu();	
		$smarty->assign('tablica', $tablica[0]);
		$smarty->assign('stupci', $tablica[1]);
		$smarty->assign('imeTablice', $tablica[2]);
	}
    
    $smarty->display('predlosci/_crud.tpl');
    
    $smarty->display('predlosci/_footer.tpl');   
?>