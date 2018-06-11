<?php    
    $naslov = "OPG natječaj";    
    include './inicijalizacija.php';

    if (isset($_POST['resetLoz'])) {
    	$lozinka = substr(hash('sha512',rand()),0,12);
    	$to = $_POST['email'];
		$subject = "Nova lozinka";
		$txt = "Vaša nova lozinka je: " . $lozinka;
		$headers = "From: webdip@barka.foi.hr";
		

		$baza =  new Baza();
		$baza ->spojiDB();
		$sol =  sha1(time());
        $crypt = sha1($sol."-".$lozinka);
        
        $sql = "SELECT id_korisnik FROM korisnik WHERE email = '".$to."'";
        $rez = $baza -> selectDB($sql);        
		$id = mysqli_fetch_array($rez)['id_korisnik'];
		if($id == "")
			$smarty->assign('poruka','Netočna adresa');
		$sql = "UPDATE korisnik SET lozinka = '" . $lozinka . "', hash_lozinka = '" . $crypt ."',  vrijeme = " .time() ." WHERE id_korisnik = " . $id;		
		
		$baza -> updateDB($sql,'prijavaRegistracija.php?mod=log');
		
		mail($to,$subject,$txt,$headers);
    }
	if(isset($naslov))
		$smarty->assign('naslov', $naslov);
	if(isset($h2_naslov))
		$smarty->assign('h2_naslov', $h2_naslov);		
	$smarty->display('predlosci/_header.tpl');
    
    $smarty->display('predlosci/_resetLozinke.tpl');

    $smarty->display('predlosci/_poruka.tpl');

    $smarty->display('predlosci/_footer.tpl');   
?>