<?php
	include './inicijalizacija.php';

	$baza = new Baza();
	$funkcije = new Funkcije();	
	$baza->spojiDB();
	
	if(isset($_POST['tab'])){
		$tab = $_POST['tab'];
		$rez = $funkcije->ucitajTablicu($tab);	
	   
    
		$smarty->assign('tablica',$rez[0]);
		$smarty->assign('stupci',$rez[1]);
		$smarty->assign('imeTablice',$rez[2]);
		$smarty->display('predlosci/_tablica.tpl');
	}
	
	if(isset($_GET['tab'])){
		$smarty->display('predlosci/_header.tpl');
		$tab = $_GET['tab'];
		$rez = $funkcije->ucitajTablicu($tab);	
	   
    
		$smarty->assign('tablica',$rez[0]);
		$smarty->assign('stupci',$rez[1]);
		$smarty->assign('imeTablice',$rez[2]);
		$smarty->display('predlosci/_tablica.tpl');

	    $smarty->display('predlosci/_footer.tpl');
	}
	 
?>