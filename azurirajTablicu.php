<?php    
	include './inicijalizacija.php';
    $naslov = "Ažuriranje tablice"; 	
	$smarty->assign('h2_naslov', $naslov);	
	$smarty->display('predlosci/_header.tpl');
	
	if(isset($_SESSION['korime']) && $_SESSION['uloga'] == 'admin'){
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

		$vanjskiKljucevi = $funkcija->vanjskiKljucevi( $upit[1],$_POST['imeTablice']);
		
	    if(count($vanjskiKljucevi) > 0){ 	  	    	
	    	$smarty->assign('ext', $vanjskiKljucevi);    		    	
	    }
	    if(!isset($_POST['submit']))
	    	$smarty->display('predlosci/_azurirajTablicu.tpl');	    
	    if(isset($_POST['submit']))
	    	$por = $funkcija->azurirajTablicu($_POST['id'],$_POST['imeTablice'], $_POST);    	  
	    	    
	    if(isset($por)){
	    	$smarty->assign('poruka',$por);
	    	$smarty->display('predlosci/_poruka.tpl');
	    }

	}
	else{
		$smarty->assign('poruka', 'Nedozvoljen pristup');
		$smarty->display('predlosci/_poruka.tpl');
	}
	$smarty->display('predlosci/_footer.tpl');
?>