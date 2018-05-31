<?php
	include './inicijalizacija.php';   
$funkcije = new Funkcije();	
	$baza = new Baza();
	$baza -> spojiDB();
	$tablica = $_POST['tab'];
	$kol = $_POST['col'];
	$id = $_POST['id'];

	$sql = "SELECT * FROM " . $tablica . " WHERE ".$id . " = '" . $kol ."'";	
	$rez =  $baza -> selectDB($sql);	
	
	$stupci = $funkcije->stupciTablice($tablica);	

	$smarty->assign('tablica',$rez);
	$smarty->assign('stupci',$stupci);
	$smarty->assign('imeTablice',$tablica);
	$smarty->display('predlosci/_tablica.tpl')
?>