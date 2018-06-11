<?php 
    $poruka = "";
    include_once './baza.class.php';
    $baza =  new Baza();
    $baza -> spojiDB();
    $sql = "SELECT * FROM dz4_tablica";
    if(isset($_GET['sort'])){        
        if ($_GET['sort'] == 'pretrazivacAsc')
        {
            $sql .= " ORDER BY pretrazivac";
        }
        elseif ($_GET['sort'] == 'pretrazivacDsc')
        {
            $sql .= " ORDER BY pretrazivac DESC";
        }
        elseif ($_GET['sort'] == 'zivotopisAsc')
        {
            $sql .= " ORDER BY zivotopis";
        }
        elseif($_GET['sort'] == 'zivotopisDsc')
        {
            $sql .= " ORDER BY zivotopis DESC";
        }    
    }
    if(isset($_GET['filtriraj'])){
        $format = 'Y.m.d';
        $d1= date_create($_GET['datumOd']);
        $datumOd = date_format($d1,$format);

        $d2= date_create($_GET['datumDo']);
        $datumDo = date_format($d2,$format);

        if($datumDo == $datumOd)
            $sql = "SELECT * FROM dz4_tablica WHERE date(datumvrijeme) = date('".$datumOd."');";
        else
            $sql = "SELECT * FROM dz4_tablica WHERE date(datumvrijeme) >= date('".$datumOd . "') AND date(datumvrijeme) <= date('" .$datumDo."');";        
    
    }    
    
    $upit = $baza -> selectDB($sql);    
?>
<!DOCTYPE html>
<html>
    <head>
        <title>WebDiP zadaća 1</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Zadaća WebDiP" />
        <meta name="date" content="12.03.2018." />
        <meta name="author" content="Matija Vuk" />        
        <link href="css/mvuk.css" rel="stylesheet" type="text/css" />
        <link href="css/mvuk_prilagodbe.css" rel="stylesheet" type="text/css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>             
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css"/>   
        <script type="text/javascript" src="js/mvuk_jquery.js"></script>      
    </head>
    <body>     
        <div class="glavniBlok">
            <header>
                <div class="box1">                
                </div>
                <div class="box2">
                    <h1>WebDiP zadaća 1</h1>
                </div>
                <div class="box3">
                    <p>12.03.2018.</p>
                    <div>
                        <a href="prijavaRegistracija.php?mod=log">Prijava</a>
                    </div>
                </div>
            </header>
            <nav>
                <ul>
                    <li><a href="prijavaRegistracija.php?mod=log">Prijava</a></li>
                    <li><a href="prijavaRegistracija.php?mod=reg">Registracija</a></li>
                    <li><a href="galerija.php">Galerija</a></li>
                    <li><a href="obrazac.php">Upload</a></li>
                    <li><a href="tablica.php">Ispis</a></li>
                </ul>
            </nav>    
            <section> 
            <div class="poruka">
                <?php 
                    echo $poruka;                   
                 ?>
            </div>   
            <form id="uploadRacunalo" enctype="multipart/form-data" method="GET" action="" novalidate>                    
                <label for="datumOd">Datum od:</label>
                <input type="text" id="datumOd" name="datumOd">
                <label for="datumDo">Datum do:</label>
                <input type="text" name="datumDo" id="datumDo">
                <button id="filtriraj" name="filtriraj" value="1">Filtriraj</button>
            </form>
            <h3 style="display: <?php if($upit->num_rows == 0) echo "block;"; else echo "none;"?>"> Nema podataka za dane parametre</h3>
                <table border="1" id="tablica" class="tablicaKorisnika racunalo" style="display: <?php if($upit->num_rows == 0) echo "none;"; else echo "block;"?> ">
                    <caption>Osobne informacije</caption>                                    
                   <thead><tr><th>Preztraživač</th><th>Životopis</th><th>Datum i vrijeme</th><th>Starost</th><th>Visina</th><th>Prog. jezici</th><th>Visina obrazovanja</th></tr><th><a href="tablica.php?sort=pretrazivacAsc">Pretraživač uzlazno</a><br/>
<a href="tablica.php?sort=pretrazivacDsc">Pretraživač silazno</a></th><th><a href="tablica.php?sort=zivotopisAsc">Životopis uzlazno</a><br/><a href="tablica.php?sort=zivotopisDsc">Životopis silazno</a></th></thead>
                <?php                       
                    while ($red = mysqli_fetch_array($upit)) {
                        echo "<tr>";
                        echo "<td>" . $red["pretrazivac"] . "</td>";
                        echo "<td>" . $red["zivotopis"] . "</td>";
                        echo "<td>" . $red["datumvrijeme"] . "</td>";
                        echo "<td>" . $red["starost"] . "</td>";
                        echo "<td>" . $red["visina"] . "</td>";
                        echo "<td>" . $red["progjezici"] . "</td>";
                        echo "<td>" . $red["visinaobrazovanja"] . "</td>";
                        echo "</tr>";
                        ;
                    }
                 ?>
                </table>
                <iframe id="websiteLink" src="galerija.php"></iframe>
            </section>
            <footer>
                <div class="box1">
                    <p>Vrijeme potebno za izradu: 10h</p>
                </div>
                <div class="box2">
                    <a href="http://validator.w3.org/check?uri=http://barka.foi.hr/WebDiP/2017/zadaca_02/mvuk/tablica.html"><img src="slike/HTML5.png" alt="HTML5 validacija" /></a>           
                </div>
                <div class="box3">
                    <a href="https://jigsaw.w3.org/css-validator/validator?uri=http://barka.foi.hr/WebDiP/2017/zadaca_02/mvuk/"><img src="slike/CSS3.png" alt="CSS validacija" /></a>
                </div>                                 
            </footer>
        </div>
    </body>	
</html>
