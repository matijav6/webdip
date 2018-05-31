<?php    
	include './inicijalizacija.php';   
	$smarty->display('predlosci/_header.tpl');
	
	if(isset($_SESSION['korime'])) {
		 $naslov = "OPG natječaj";    
		 if(isset($naslov))
			$smarty->assign('naslov', $naslov);
		if(isset($h2_naslov))
			$smarty->assign('h2_naslov', $h2_naslov);	
		$smarty->display('predlosci/_indexKorisnik.tpl');	
	}
	else{
		$smarty->assign('poruka', 'Nedozvoljen pristup');
		$smarty->display('predlosci/_poruka.tpl');
	}
	$smarty->display('predlosci/_footer.tpl');
?>