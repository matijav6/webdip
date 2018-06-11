<?php
	include './inicijalizacija.php';
	$baza =  new Baza();
	$baza->spojiDB();
	$sql = "SELECT stranicenje FROM postavke_sustava WHERE id_postavke_sustava = 1";
	$upit =  $baza->selectDB($sql);
	$rezUpita = mysqli_fetch_array($upit);
	print_r($rezUpita['stranicenje']);
    return $rezUpita['stranicenje'];



?>