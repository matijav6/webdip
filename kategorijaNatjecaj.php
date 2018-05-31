<?php    
	include './inicijalizacija.php';   
	$smarty->display('predlosci/_header.tpl');
	$smarty->assign('h2_naslov', 'CRUD operacije');
	$baza = new Baza();
	$baza -> spojiDB();
	$sql = "SELECT naziv,id_kategorija_natjecaj FROM kategorija_natjecaj";
	$rez =  $baza -> selectDB($sql);

	$tablice = array();
	while($red = mysqli_fetch_array($rez))
		$tablice[$red['id_kategorija_natjecaj']]= $red['naziv'];

	$smarty->assign('tablice', $tablice);
		

	if(isset($_GET['odabirTablica'])){
		$tablica  = $funkcija->ucitajTablicu();	
		$smarty->assign('tablica', $tablica[0]);
		$smarty->assign('stupci', $tablica[1]);
		$smarty->assign('imeTablice', $tablica[2]);		
	}
	    
    $smarty->display('predlosci/_kategorijaNatjecaj.tpl');	    
	$smarty->display('predlosci/_footer.tpl');
?>