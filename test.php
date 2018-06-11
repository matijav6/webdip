<?php
 	include './inicijalizacija.php';
    $naslov = "OPG natječaj";    
   

	if(isset($naslov))
		$smarty->assign('naslov', $naslov);
	if(isset($h2_naslov))
		$smarty->assign('h2_naslov', $h2_naslov);
	$smarty->display('predlosci/_header.tpl');
    $smarty->display('predlosci/_index.tpl');
    
    $smarty->display('predlosci/_footer.tpl');   

 	$f = new Funkcije();
 	$f ->dohvatiPomak();
?>