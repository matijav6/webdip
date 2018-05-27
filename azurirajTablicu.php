<?php    
	include './inicijalizacija.php';
    $naslov = "Ažuriranje tablice"; 	
	$smarty->assign('h2_naslov', $naslov);	

	

	$funkcija = new Funkcije();
	$id = "";
	$imeID = "";
	foreach ($_POST as $key => $value){
		if (strpos($key, 'id_') !== false) {
	 		$imeID = $key;
	 		$id = $value;
	 	}
	}
	
	$upit = $funkcija->ucitajVrijednosti($imeID, $id, $_POST['imeTablice']);
	
	$smarty->assign('upit', $upit[0]);
	$smarty->assign('stupci', $upit[1]);
	$smarty->assign('imeTablice', $_POST['imeTablice']);
    
    if(isset($_POST['submit']))
    	$funkcija->azurirajTablicu($_POST['id'],$_POST['imeTablice'], $_POST);    	  
	
	$smarty->display('predlosci/_header.tpl');
    $smarty->display('predlosci/_azurirajTablicu.tpl');
    $smarty->display('predlosci/_footer.tpl');   
?>