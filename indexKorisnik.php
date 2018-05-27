<?php    
    $naslov = "OPG natječaj";    
    include './inicijalizacija.php';
    if(isset($naslov))
		$smarty->assign('naslov', $naslov);
	if(isset($h2_naslov))
		$smarty->assign('h2_naslov', $h2_naslov);
	$smarty->display('predlosci/_header.tpl');
    $smarty->display('predlosci/_indexKorisnik.tpl');
    
    $smarty->display('predlosci/_footer.tpl');   
?>