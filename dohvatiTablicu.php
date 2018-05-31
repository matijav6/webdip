<?php
	include './inicijalizacija.php';

	$baza = new Baza();
	$funkcije = new Funkcije();	
	$baza->spojiDB();
	$tab = $_POST['tab'];
	$rez = $funkcije->ucitajTablicu($tab);	

	$smarty->assign('tablica',$rez[0]);
	$smarty->assign('stupci',$rez[1]);
	$smarty->assign('imeTablice',$rez[2]);
	$smarty->display('predlosci/_tablica.tpl')
?>