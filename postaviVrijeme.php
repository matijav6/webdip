<?php
	include './inicijalizacija.php';   
	$smarty->display('predlosci/_header.tpl');

	if(isset($_SESSION['korime']) && $_SESSION['korime'] == 'admin'){

	 // header("Location: http://barka.foi.hr/WebDiP/pomak_vremena/vrijeme.html");
		$smarty->display('predlosci/_postaviVrijeme.tpl');
	}
	else{		
		$smarty->assign('poruka', 'Nedozvoljen pristup');
		$smarty->display('predlosci/_poruka.tpl');
	}
	$smarty->display('predlosci/_footer.tpl');	
	
?>