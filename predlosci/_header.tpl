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
        <link href="css/mvuk_prilagodbe.css" rel="stylesheet" type="text/css" />    
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
  
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
                    <p>{{$vrijeme}}</p>
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
                            {if isset($smarty.session.uloga) && $smarty.session.uloga == 'admin'}
                                <a href="#">Kategorije natječaja</a>
                            {/if}
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