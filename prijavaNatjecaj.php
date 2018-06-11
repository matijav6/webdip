<?php        
    include './inicijalizacija.php';

	
	$smarty->display('predlosci/_header.tpl');

	$baza = new Baza();
	$funkcije = new Funkcije();	
	$baza->spojiDB();
	$tab = $_GET['tab'];
	$rez = $funkcije->ucitajTablicu($tab);	

	$smarty->assign('tablica',$rez[0]);
	$smarty->assign('stupci',$rez[1]);
	$smarty->assign('imeTablice',$rez[2]);	
    $smarty->display('predlosci/_tablica.tpl');
    
    $smarty->display('predlosci/_footer.tpl');   
?>