<?php
	include './inicijalizacija.php';

	$funkcija =  new Funkcije();
	$id = "";
	$imeID = "";
	foreach ($_POST as $key => $value){
		if (strpos($key, 'id_') !== false) {
	 		$imeID = $key;
	 		$id = $value;
	 	}
	}
	
	$upit = $funkcija->obrisiIzTablice($imeID, $id, $_POST['imeTablice']);

	header('Location: crud.php?odabirTablica=' . $_POST['imeTablice']);
?>