<?php
	include './inicijalizacija.php';

	$baza = new Baza();
	$funkcije = new Funkcije();	
	$baza->spojiDB();
	$vanjskiKljucevi = array('ext_tip_korisnika' => 'vrsta','ext_korisnik' => 'kor_ime' , 'ext_vrsta_oglasa' => 'vrsta_oglasa' ,'ext_oglas' => 'naziv','ext_kategorija_natjecaj' => 'naziv','ext_moderator' => 'kor_ime','ext_pozicija' => 'stranica');  
	if(!(strpos('id_tip_korisnika', 'kor') !== false)){
		echo "string";
	}
	//$funkcije->ucitajVrijednosti('id_tip_korisnika','18','korisnik');
?>