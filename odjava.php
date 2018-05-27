<?php
	include './inicijalizacija.php';
	$funkcija =  new Funkcije();
	$poruka = $funkcija->odjava();
	if(isset($naslov))
		$smarty->assign('naslov', $naslov);
	if(isset($h2_naslov))
		$smarty->assign('h2_naslov', $h2_naslov);
	$smarty->display('predlosci/_header.tpl');
	$smarty->assign('poruka', $poruka);
    $smarty->display('predlosci/_poruka.tpl');
?>