<?php
 	include './inicijalizacija.php';

	$smarty->display('predlosci/_header.tpl');   
	if (isset($_POST['aktKod'])) {
		$aktKod = $_POST['aktKod'];
		$korime = $_POST['korime'];
		$f = new Funkcije();
		$poruka = $f->aktivacija($korime,$aktKod);		
	}
	if(isset($poruka)){	
		$smarty->assign('poruka', $poruka);
		$smarty->display('predlosci/_poruka.tpl'); 
	}
	 
    
    $smarty->display('predlosci/_footer.tpl'); 
?>