<?php

//uključivanje potrebnih datoteka
require 'vanjske_biblioteke/Smarty/libs/Smarty.class.php';
include 'klase/virtualnoVrijeme.php';
include 'klase/baza.class.php';
include 'klase/funkcije.class.php';

session_start();

//kreiranje potrebnih objekata
$smarty = new Smarty();
$smarty->assign('aktivnaSkripta', $_SERVER['PHP_SELF']);
$smarty->assign('tab_naslov', 'OPG natječaj');
$smarty->assign('vrijeme', date('l'));
?>