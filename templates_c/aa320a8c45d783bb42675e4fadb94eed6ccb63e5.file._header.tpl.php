<?php /* Smarty version Smarty-3.1.18, created on 2018-05-31 13:06:17
         compiled from "predlosci\_header.tpl" */ ?>
<?php /*%%SmartyHeaderCode:142875b095a1b7536c8-90442926%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'aa320a8c45d783bb42675e4fadb94eed6ccb63e5' => 
    array (
      0 => 'predlosci\\_header.tpl',
      1 => 1527764774,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '142875b095a1b7536c8-90442926',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5b095a1b7b58d1_39640475',
  'variables' => 
  array (
    'tab_naslov' => 0,
    'naslov' => 0,
    'h2_naslov' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b095a1b7b58d1_39640475')) {function content_5b095a1b7b58d1_39640475($_smarty_tpl) {?><!DOCTYPE html>
<html>
    <head>
        <title><?php ob_start();?><?php echo $_smarty_tpl->tpl_vars['tab_naslov']->value;?>
<?php $_tmp1=ob_get_clean();?><?php echo $_tmp1;?>
</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Zadaća WebDiP" />
        <meta name="date" content="12.03.2018." />
        <meta name="author" content="Matija Vuk" />        
        <link href="css/mvuk.css" rel="stylesheet" type="text/css" />        
        
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
        <script src='https://www.google.com/recaptcha/api.js'></script>  
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>               
        <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>     
        
        <script type="text/javascript" src="js/mvuk_jquery.js"></script>
        <link href="css/mvuk_prilagodbe.css" rel="stylesheet" type="text/css" /> 
    </head>
    <body>     
        <div class="glavniBlok">
            <header>
                <div class="box1">   
                    <img src="slike/logo.png">             
                </div>
                <div class="box2">
                    <?php if (isset($_smarty_tpl->tpl_vars['naslov']->value)) {?>
                        <h1><?php echo $_smarty_tpl->tpl_vars['naslov']->value;?>
</h1>  
                    <?php }?>                    
                </div>
                <div class="box3" style="margin-right: 30px;">
                    <p id="virtualnoVrijeme"></p></br>                    
                    <?php if (isset($_SESSION['korime'])) {?>
                        <p>Dobro došao: <?php echo $_SESSION['korime'];?>
</p></br>
                    <?php }?>
                    <div>
                        <?php if (!isset($_SESSION['korime'])) {?>
                            <a href="prijavaRegistracija.php?mod=log">Prijava</a>
                        <?php } else { ?>                         
                            <a href="odjava.php">Odjava</a>
                        <?php }?>                        
                    </div>
                </div>
            </header>
            <nav>                
                <ul class="<?php if ($_SESSION['uloga']=='korisnik'||$_SESSION['uloga']=='registriran'||$_SESSION['uloga']=='moderator') {?> 
                                korUI       
                            <?php } elseif ($_SESSION['uloga']=='admin') {?>              
                                adminUI
                            <?php }?>">            
                    <?php if (!isset($_SESSION['korime'])) {?> 
                        <li><a href="index.php">Početna</a></li>
                        <li><a href="prijavaRegistracija.php?mod=log">Prijava</a></li>
                        <li><a href="prijavaRegistracija.php?mod=reg">Registracija</a></li> 
                    <?php } else { ?> 
                        <li><a href="indexKorisnik.php">Početna</a></li>
                    <?php }?> 
                    <?php if (isset($_SESSION['uloga'])&&($_SESSION['uloga']=='registriran'||$_SESSION['uloga']=='moderator'||$_SESSION['uloga']=='admin')) {?>
                            <div class="dropdownMenu">                            
                                <li><a href="#">Moji oglasi</a></li>
                                 <div class="dropdownLink">                                
                                    <a href="#">Statistika klikova za moje oglase</a>
                                    <a href="#">Zahtjev za novi oglas</a>
                                    <a href="#">Zahtjev za blokiranjem oglasa</a>  
                                    <?php if (isset($_SESSION['uloga'])&&($_SESSION['uloga']=='moderator'||$_SESSION['uloga']=='admin')) {?>
                                    <a href="#">Vrste oglasa po pozicijama</a>
                                    <a href="#">Popis zahtjeva za oglašavanje</a>
                                    <a href="#">Popis zahtjeva za blokiranje</a>                                   
                                    <?php }?>
                                    <?php if (isset($_SESSION['uloga'])&&($_SESSION['uloga']=='admin')) {?>
                                    <a href="#">Statistika klikova svih oglasa</a>
                                    <a href="#">Statistika plaćenih oglasa</a>
                                    <a href="#">Korisnici sa najviše plaćenih oglasa</a>   
                                    <?php }?>                                 
                                </div>
                            </div>
                    <?php }?>
                    <div class="dropdownMenu">
                        <li><a href="#">Natječaji</a></li>
                         <div class="dropdownLink">
                            <a href="#">Prijava na natječaj</a>                            
                                <a href="kategorijaNatjecaj.php">Kategorije natječaja</a>
                            <?php if (isset($_SESSION['uloga'])&&($_SESSION['uloga']=='moderator'||$_SESSION['uloga']=='admin')) {?>
                                <a href="#">Popis prijava za natječaj</a>
                                <a href="#">Kreiranja natječaja</a>
                            <?php }?>                            
                        </div>
                     </div>
                    <li><a href="oAutoru.php">O autoru</a></li>
                    <?php if (isset($_SESSION['uloga'])&&$_SESSION['uloga']=='admin') {?> 
                        <div class="dropdownMenu">
                            <li><a href="#">Postavke</a></li>
                            <div class="dropdownLink">
                                <a href="#">Pozicije oglasa</a>
                                <a href="#">Dnevnik rada</a>
                                <a href="postaviVrijeme.php">Postavi vrijeme</a>
                                <a href="vrijeme.php">Preuzmi vrijeme</a>
                            </div>
                        </div>
                    <?php }?> 
                    <?php if (isset($_SESSION['uloga'])&&$_SESSION['uloga']=='admin') {?>                         
                        <li><a href="crud.php">CRUD</a></li>                            
                    <?php }?> 
                    <li><a href="#">Dokumentacija</a></li>
                </ul>
            </nav>    
            <section>
                <?php if (isset($_smarty_tpl->tpl_vars['h2_naslov']->value)) {?>
                        <h2><?php echo $_smarty_tpl->tpl_vars['h2_naslov']->value;?>
</h2>                          
                    <?php }?> <?php }} ?>
