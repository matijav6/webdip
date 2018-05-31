<!DOCTYPE html>
<html>
    <head>
        <title>{{$tab_naslov}}</title>
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
                    {if isset($naslov)}
                        <h1>{$naslov}</h1>  
                    {/if}                    
                </div>
                <div class="box3" style="margin-right: 30px;">
                    <p id="virtualnoVrijeme"></p></br>                    
                    {if isset($smarty.session.korime)}
                        <p>Dobro došao: {$smarty.session.korime}</p></br>
                    {/if}
                    <div>
                        {if !isset($smarty.session.korime)}
                            <a href="prijavaRegistracija.php?mod=log">Prijava</a>
                        {else}                         
                            <a href="odjava.php">Odjava</a>
                        {/if}                        
                    </div>
                </div>
            </header>
            <nav>                
                <ul class="{if $smarty.session.uloga == 'korisnik' || $smarty.session.uloga == 'registriran' || $smarty.session.uloga == 'moderator'} 
                                korUI       
                            {elseif $smarty.session.uloga == 'admin'}              
                                adminUI
                            {/if}">            
                    {if !isset($smarty.session.korime)} 
                        <li><a href="index.php">Početna</a></li>
                        <li><a href="prijavaRegistracija.php?mod=log">Prijava</a></li>
                        <li><a href="prijavaRegistracija.php?mod=reg">Registracija</a></li> 
                    {else} 
                        <li><a href="indexKorisnik.php">Početna</a></li>
                    {/if} 
                    {if isset($smarty.session.uloga) && ($smarty.session.uloga == 'registriran'  || $smarty.session.uloga == 'moderator' || $smarty.session.uloga == 'admin')}
                            <div class="dropdownMenu">                            
                                <li><a href="#">Moji oglasi</a></li>
                                 <div class="dropdownLink">                                
                                    <a href="#">Statistika klikova za moje oglase</a>
                                    <a href="#">Zahtjev za novi oglas</a>
                                    <a href="#">Zahtjev za blokiranjem oglasa</a>  
                                    {if isset($smarty.session.uloga) && ($smarty.session.uloga == 'moderator' || $smarty.session.uloga == 'admin')}
                                    <a href="#">Vrste oglasa po pozicijama</a>
                                    <a href="#">Popis zahtjeva za oglašavanje</a>
                                    <a href="#">Popis zahtjeva za blokiranje</a>                                   
                                    {/if}
                                    {if isset($smarty.session.uloga) && ($smarty.session.uloga == 'admin')}
                                    <a href="#">Statistika klikova svih oglasa</a>
                                    <a href="#">Statistika plaćenih oglasa</a>
                                    <a href="#">Korisnici sa najviše plaćenih oglasa</a>   
                                    {/if}                                 
                                </div>
                            </div>
                    {/if}
                    <div class="dropdownMenu">
                        <li><a href="#">Natječaji</a></li>
                         <div class="dropdownLink">
                            <a href="#">Prijava na natječaj</a>                            
                                <a href="kategorijaNatjecaj.php">Kategorije natječaja</a>
                            {if isset($smarty.session.uloga) && ($smarty.session.uloga == 'moderator' || $smarty.session.uloga == 'admin')}
                                <a href="#">Popis prijava za natječaj</a>
                                <a href="#">Kreiranja natječaja</a>
                            {/if}                            
                        </div>
                     </div>
                    <li><a href="oAutoru.php">O autoru</a></li>
                    {if isset($smarty.session.uloga) && $smarty.session.uloga == 'admin'} 
                        <div class="dropdownMenu">
                            <li><a href="#">Postavke</a></li>
                            <div class="dropdownLink">
                                <a href="#">Pozicije oglasa</a>
                                <a href="#">Dnevnik rada</a>
                                <a href="postaviVrijeme.php">Postavi vrijeme</a>
                                <a href="vrijeme.php">Preuzmi vrijeme</a>
                            </div>
                        </div>
                    {/if} 
                    {if isset($smarty.session.uloga) && $smarty.session.uloga == 'admin'}                         
                        <li><a href="crud.php">CRUD</a></li>                            
                    {/if} 
                    <li><a href="#">Dokumentacija</a></li>
                </ul>
            </nav>    
            <section>
                {if isset($h2_naslov)}
                        <h2>{$h2_naslov}</h2>                          
                    {/if} 