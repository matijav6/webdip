<?php
	include '../klase/baza.class.php';
	$baza = new Baza();
	$baza->spojiDB();
	$sql =  "SELECT * FROM korisnik;";
	$upit =  $baza->selectDB($sql);	
?>
<div style="text-align: -webkit-center;
    margin-top: 10%;">
	<table style="border: 1px solid;
	    border-radius: 10px;
	    padding: 5px;">
		<caption>Korisnici</caption>                                    
	  		<thead>
	  			<tr>
	  				<th style="border-bottom: 2px double black;">ID korisnika</th>
	  				<th style="border-bottom: 2px double black;">Ime</th>
	  				<th style="border-bottom: 2px double black;">Prezime</th>
	  				<th style="border-bottom: 2px double black;">Korisnicko ime</th>
	  				<th style="border-bottom: 2px double black;">e-mail</th>
	  				<th style="border-bottom: 2px double black;">Lozinka</th>
	  				<th style="border-bottom: 2px double black;">Blokiran</th>  				
	  				<th style="border-bottom: 2px double black;">Aktiviran</th> 
	  				<th style="border-bottom: 2px double black;">Vrijeme registracije</th> 
	  			</tr>
			</thead>
	    <?php                       
	        while ($red = mysqli_fetch_array($upit)) {
	            echo "<tr>";
	            echo "<td style='border: 1px dotted black; text-align: center;'>" . $red["id_korisnik"] . "</td>";
	            echo "<td style='border: 1px dotted black; text-align: center;'>" . $red["ime"] . "</td>";
	            echo "<td style='border: 1px dotted black; text-align: center;'>" . $red["prezime"] . "</td>";
	            echo "<td style='border: 1px dotted black; text-align: center;'>" . $red["kor_ime"] . "</td>";
	            echo "<td style='border: 1px dotted black; text-align: center;'>" . $red["email"] . "</td>";
	            echo "<td style='border: 1px dotted black; text-align: center;'>" . $red["lozinka"] . "</td>";
	            echo "<td style='border: 1px dotted black; text-align: center;'>" . $red["blokiran"] . "</td>";
	            echo "<td style='border: 1px dotted black; text-align: center;'>" . $red["aktiviran"] . "</td>";
	            echo "<td style='border: 1px dotted black; text-align: center;'>" . $red["vrijeme_registracije"] . "</td>";
	            echo "</tr>";
	            ;
	        }
	    ?>
	</table>
</div>