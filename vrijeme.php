<?php
$naslov = "Preuzmi vrijeme";
include 'klase/virtualnoVrijeme.php';
$smarty->display('predlosci/_header.tpl');
//preuzimanje vremena
$datoteka = 'http://barka.foi.hr/WebDiP/pomak_vremena/pomak.php?format=xml';
$citac = new virtualnoVrijeme($datoteka);

//echo $datoteka;
if(isset($_POST['salji'])){
    $vrijeme = $citac->vratiVrijeme();
    $smarty->assign('vrijeme', $vrijeme);
    
    //ZAPISATI U LOKALNI RESURS POHRANE POMAKA VREMENA
}

$smarty->assign('salji', 'Preuzmi vrijeme');
$smarty->display('predlosci/vrijeme.tpl');
?>
