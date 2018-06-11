<?php
	include './inicijalizacija.php';   
	$smarty->display('predlosci/_header.tpl');
	
	if(isset($_SESSION['korime']) && $_SESSION['uloga'] == 'admin'){

	 // header("Location: http://barka.foi.hr/WebDiP/pomak_vremena/vrijeme.html");
		if(isset($_SERVER["HTTPS"]) && $_SERVER["HTTPS"] == "on"){
       		$smarty->assign('poruka', "Potrebno pristupiti preko HTTP-a, kliknite <a href=http://" . $_SERVER["HTTP_HOST"] . $_SERVER["REQUEST_URI"] .">ovdje</a>");
			$smarty->display('predlosci/_poruka.tpl');
    	}
		$smarty->display('predlosci/_postaviVrijeme.tpl');
	}
	else{		
		$smarty->assign('poruka', 'Nedozvoljen pristup');
		$smarty->display('predlosci/_poruka.tpl');
	}
	$smarty->display('predlosci/_footer.tpl');	
	
?>
