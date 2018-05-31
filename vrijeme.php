<?php
$naslov = "Preuzmi vrijeme";
include 'inicijalizacija.php';

$smarty->display('predlosci/_header.tpl');

//preuzimanje vremena
$datoteka = 'http://barka.foi.hr/WebDiP/pomak_vremena/pomak.php?format=xml';
$citac = new virtualnoVrijeme($datoteka);

if(isset($_POST['salji'])){
    $vrijeme = $citac->vratiVrijeme();
    $smarty->assign('vrijeme', $vrijeme);
        
	$f = fopen("vrijeme.txt", "w");	
	fwrite($f, $vrijeme);    
}

$smarty->assign('salji', 'Preuzmi vrijeme');
$smarty->display('predlosci/vrijeme.tpl');
$smarty->display('predlosci/_footer.tpl');
?>
