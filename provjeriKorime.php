<?php
	if(isset($_POST['korime'])){
	    include './inicijalizacija.php';
		
		$sql = "SELECT kor_ime FROM korisnik WHERE kor_ime = '" .$_POST['korime'] ."'";

		$baza =  new Baza();
		$baza -> spojiDB();
		$rez = $baza -> selectDB($sql);		
		$rezUpita = mysqli_fetch_array($rez);
	   	
		if($rezUpita != null)
			echo "Korisničko ime postoji";
	}
?>