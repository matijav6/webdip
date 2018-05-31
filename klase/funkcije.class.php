<?php
/**
 * 
 */

class Funkcije
{    
	function registracija(){    
        $baza = new Baza();
        $baza -> spojiDB();
        
        $form = array('ime', 'prezime', 'korimeRegistracija', 'email', 'lozinka','lozinka2');        

        $prazno = array();
        $nedozvoljeno = array();
        $poruke = array();

        foreach($form as $item) {
	        if (empty($_POST[$item]))
	          array_push($prazno, $item);                
	        if (strpos($_POST[$item], "'") !== false || strpos($_POST[$item], "!") !== false || strpos($_POST[$item], "?") !== false || strpos($_POST[$item], "#") !== false)
	            array_push($nedozvoljeno, $item);            
        }          
        
        $arrayOfErrors = array_merge($prazno, $nedozvoljeno);

        if (!empty($_POST['email'])){
            $email = $_POST['email'];
            $regex = '/^[^\.][a-zA-Z0-9]+[@]+[a-zA-Z0-9]+[\.]+[a-zA-Z0-9]{2,}$/';

          if (!preg_match($regex, $email))
            array_push($poruke, "Email nije u ispravnom formatu");
        }
        
		if(isset($_POST['lozinka']) &&  isset($_POST['lozinka2'])){
			$lozinka1 = $_POST['lozinka'];
			$lozinka2 = $_POST['lozinka2'];
			if($lozinka1 != $lozinka2)
			  array_push($poruke, "Lozinke nisu iste");
		}
       	if(isset($_POST['email']) && isset($_POST['korimeRegistracija'])){
		    /*
            $email = $_POST['email'];
		    $korime = $_POST['korimeRegistracija'];
		    $sql = "SELECT * FROM dz4_users WHERE korime  = '" . $korime ."' OR email = '" . $email . "';";       
		    $upit = $baza -> selectDB($sql);
		    if($upit->num_rows != 0) 
		    	array_push($poruke, "Korisničko ime ili email je već zauzeto");
            */
            //provjera pomoću ajaxa
      	}

        if(empty($poruke) && empty($arrayOfErrors) && isset($_POST['submitReg'])){
            $ime = $_POST['ime'];
            $prezime = $_POST['prezime'];
            $email = $_POST['email'];
            $korime = $_POST['korimeRegistracija'];
            $lozinka = $_POST['lozinka'];

            $sol =  sha1(time());
            $crypt = sha1($sol."-".$lozinka);

            $sql = "INSERT INTO korisnik(ime,prezime,kor_ime,email,lozinka,hash_lozinka,vrijeme) VALUES('".$ime."','".$prezime."','".$korime."','".$email."','".$lozinka."','".$crypt."',".time().");";

            $baza->updateDB($sql);
            
            $this->upisUDnevnik($korime,$sql);

            if (headers_sent())
                array_push($poruke,"Uspješna registracija, ukoliko niste automatski prosljeđeni, kliknite <a href=prijavaRegistracija.php?mod=log>ovdje </a>");
            else
                header('Location: prijavaRegistracija.php?mod=log');                
        }
        return (array_merge(array($poruke), array($prazno), array($nedozvoljeno)));
    }    	

    function prijava(){       
        $baza = new Baza();
        $baza -> spojiDB();          
        $korime = $_POST['korisnickoIme'];

        if(!isset($_SESSION['neuspjesnaPrijava'][$korime]))
            $_SESSION['neuspjesnaPrijava'] = array($korime => 0);

        $lozinka = $_POST['lozinka'];

         $form = array('korisnickoIme', 'lozinka');

        // ' ! ? #
        $prazno = array();
        $nedozvoljeno = array();
        $poruke = array();

        foreach($form as $item) {
        if (empty($_POST[$item]))
          array_push($prazno, $item);                
        if (strpos($_POST[$item], "'") !== false || strpos($_POST[$item], "!") !== false || strpos($_POST[$item], "?") !== false || strpos($_POST[$item], "#") !== false)
            array_push($nedozvoljeno, $item);            
        }          
        $arrayOfErrors = array_merge($prazno, $nedozvoljeno);

        $sql = "SELECT * FROM korisnik WHERE kor_ime = '".$korime."' LIMIT 1;"; 
        $upit = $baza -> selectDB($sql);   
        $rez = array();
        $postoji = false;
        $blokiran = false;
        while ($red = mysqli_fetch_array($upit)){
            $lozinkasol = $red["hash_lozinka"];
            $vrijeme = $red["vrijeme"];
            $idKorisnk = $red["id_korisnik"];
            $blokiran = $red["blokiran"];
            $postoji = true;
        }   
        if($blokiran){
            array_push($poruke, "Vaš račun je blokiran, obratite se adminu");
        }
        else{
            if($postoji){            
                $sol =  sha1($vrijeme);
                $crypt = sha1($sol."-".$lozinka);
                
                if($crypt == $lozinkasol){                

                    $sql = "SELECT k.kor_ime,tk.vrsta FROM korisnik k JOIN tip_korisnika tk ON tk.id_tip_korisnika = k.ext_tip_korisnika  WHERE k.id_korisnik = " . $idKorisnk;
                    $upit = $baza -> selectDB($sql);                
                    $rezUpita = mysqli_fetch_array($upit);
                    $_SESSION['korime'] = $rezUpita['kor_ime'];
                    $_SESSION['uloga'] = $rezUpita['vrsta'];                     

                    $sql = "SELECT trajanje_kolacica FROM postavke_sustava LIMIT 1";
                    $upit = $baza -> selectDB($sql);                        

                    $rezUpita = mysqli_fetch_array($upit);
                    $trajanjeKol = $rezUpita['trajanje_kolacica'];        
                    setcookie('korime', $korime, time() + ($trajanjeKol * 60 * 60), "/");
                   
                    $this->upisUDnevnik($_SESSION['korime']);
                   
                    if (headers_sent()) {
                        $baza->zatvoriDB();
                        array_push($poruke,"Uspješna prijava, ukoliko niste automatski prosljeđeni, kliknite <a href=indexKorisnik.php>ovdje </a>");                      
                    }               
                    else{
                        $baza->zatvoriDB();                    
                        header('Location: indexKorisnik.php');                
                    }
                }
                else {            
                    
                    $_SESSION['neuspjesnaPrijava'][$korime] += 1;
                    if($_SESSION['neuspjesnaPrijava'][$korime] == 3){
                        $sql = "UPDATE korisnik SET blokiran = 1 WHERE kor_ime = '" . $korime ."'";
                        $baza->selectDB($sql);
                        array_push($poruke, "Neuspješna prijava, račun je blokiran");
                    }
                    else
                        array_push($poruke, "Neuspješna prijava");
                    array_push($poruke, $_SESSION['neuspjesnaPrijava'][$korime]);

                }
            }       
            else
                 array_push($poruke, "Neuspješna prijava");
         }

         return (array_merge(array($poruke), array($prazno), array($nedozvoljeno)));
    }

    function odjava(){
        $this->upisUDnevnik($_SESSION['korime']);

        session_destroy();
        header_remove();
        setcookie("korime", "", time() - 3600);

        if (headers_sent())
            array_push($poruke,"Uspješna odjava, ukoliko niste automatski prosljeđeni, kliknite <a href=index.php>ovdje </a>");
        else
            header('Location: prijavaRegistracija.php?mod=log');        
    }

    function ucitajTablice(){
        $sql = "SELECT table_name FROM information_schema.tables where table_schema='webdip2017x156';";
        
        if(isset($_SESSION['korime']))
            $this->upisUDnevnik($_SESSION['korime'],$sql);
        
        $baza = new Baza();
        $baza -> spojiDB();
        $upit = $baza -> selectDB($sql);
        $tablice = array();
        while ($tablica = mysqli_fetch_array($upit)) 
            array_push($tablice, $tablica['table_name']);
        return $tablice;
    }

    function ucitajTablicu($tablica=''){
        if($tablica == '')
            $tablica = $_GET['odabirTablica'];
        $sql = "SELECT * FROM " . $tablica;
        $baza = new Baza();
        $baza -> spojiDB();
        $upit = $baza -> selectDB($sql);   
        $stupci = $this->stupciTablice($tablica);                
        if(isset($_SESSION['korime']))
            $this->upisUDnevnik($_SESSION['korime'],$sql);
        return array_merge(array($upit), array($stupci), array($tablica));
    }

    function stupciTablice($tablica){
        $sql = "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = '" . $tablica . "'";
       
        $baza = new Baza();
        $baza -> spojiDB();
        $upit = $baza -> selectDB($sql);
        if(isset($_SESSION['korime']))
            $this->upisUDnevnik($_SESSION['korime'],$sql);
        $stupci = array();

        while($red = mysqli_fetch_array($upit)){            
            array_push($stupci,$red['COLUMN_NAME']);
        }        
        return $stupci;
    }
    
    function ucitajVrijednosti($imeID, $id, $tablica){
        
        $vanjskiKljucevi = array('ext_tip_korisnika' => 'vrsta','ext_korisnik' => 'kor_ime' , 'ext_vrsta_oglasa' => 'vrsta_oglasa' ,'ext_oglas' => 'naziv','ext_kategorija_natjecaj' => 'naziv','ext_moderator' => 'kor_ime','ext_pozicija' => 'stranica');        

        
        $sql = "SELECT * FROM " . $tablica . " WHERE ". $imeID . " = " . $id;
        $baza = new Baza();
        $baza -> spojiDB();
        $upit = $baza -> selectDB($sql); 
        $stupci = $this->stupciTablice($tablica);                  
        $ext = array();
        $temp = array();
       
        //idemo kroz sve stupce odabrane tablice
        //ako je jedan od stupaca vanjski ključ, dohvati iz te tablice
       /*foreach ($stupci as $value) {
            
            $temp = array();
            $key = $value;
            
            if(array_key_exists($value, $vanjskiKljucevi)){                
               
                $value = str_replace("ext_","",$value);
                $extUpit = '';
                $id = str_replace("ext","id",key($vanjskiKljucevi));

                (string)$sql = 'SELECT ' . $vanjskiKljucevi[$key] . ' , '. $id. ' FROM ' . $value;                
                print_r($sql);
                $this->upisUDnevnik($_SESSION['korime'],$sql);                   
                
                $extUpit = $baza -> selectDB($sql);                  
                                
                while ($red = mysqli_fetch_array($extUpit))                                        
                    $temp[$red[$id]] = $red[$vanjskiKljucevi[$key]]; //index reda je id
                $ext[$key] = $temp;
            }            
        }          */          
        return array_merge(array($upit), array($stupci)); 
    }

    function obrisiIzTablice($imeID, $id, $tablica){
        $sql = "DELETE FROM " . $tablica . " WHERE ". $imeID . " = " . $id;
        $baza = new Baza();
        $baza -> spojiDB();
        $baza -> selectDB($sql);         
        $this->upisUDnevnik($_SESSION['korime'],$sql);
    }

    function azurirajTablicu($id, $tablica, $post){
        $poruke = array();
        $stupci = $this->stupciTablice($tablica);
        $sql1 = "UPDATE ". $tablica ." SET ";
        $sql2 ="";
        $preskoci = array('imeTablice','submit','upisi','Spremi','spremi','id','ime',);

        $varchar = array('vrsta','ime', 'prezime','email','lozinka','hash_lozinka');
        $sql3 = "WHERE " . $stupci ." = " . $id;        
        foreach ($post as $key => $value){        
            if( ! ((in_array($key, $preskoci)) || (strpos($key, 'id') !== false)))
            {                
                if((strpos($value, " ") !== false) || (strpos($key, "ime") !== false) || in_array($key, $varchar)){
                    $sql2 .= $key . " = '" . $value . "',";
                }
                else{
                    $sql2 .= $key . " = " . $value . ",";
                }            
            }
        }
        
        
        
        $sql2[strlen($sql2)-1] = " ";                
        $sql = $sql1.$sql2.$sql3;
        $baza = new Baza();
        $baza -> spojiDB();      
        $a = $baza -> updateDB($sql);
        $this->upisUDnevnik($_SESSION['korime'],$sql);


        if($tablica == 'korisnik') {
            
            $lozinka = $post['lozinka'];
            $id = $post['id_korisnik'];
           
            $sol =  sha1(time());
            $crypt = sha1($sol."-".$lozinka);            

            $sql = "UPDATE korisnik SET lozinka = '" . $lozinka . "', hash_lozinka = '" . $crypt ."',  vrijeme = " .time() ." WHERE id_korisnik = " . $id;      
            
            $baza -> updateDB($sql);
        }    
        if (headers_sent())
                array_push($poruke,"Uspješan unos, ukoliko niste automatski prosljeđeni, kliknite <a href=crud.php>ovdje </a>");
            else
                header('Location: crud.php');
        return $poruke;
    }

    function upisUTablicu($tablica, $stupci, $post){
        $varchar = array('vrsta','ime', 'prezime','email','lozinka','hash_lozinka','opis',' ','naziv','komentar');        
        $preskoci = array('imeTablice','submit','upisi','Spremi','spremi','id','pozicija','vrijeme_kreiranja');
        $datum = array('otvoren_od','otvoren_do');

        $sql = "INSERT INTO " . $tablica . "(";
        $i = 0;
        foreach ($stupci as $item) {            
            if( ! ((in_array($item, $preskoci)) || (strpos($item, 'id') !== false))){
                $sql .= $item .",";        
            }
            $i++;
        }
        $sql[strlen($sql) - 1] = ")";        
        $sql2=" VALUES(";
        
        foreach ($post as $key => $value){                      
            if( ! ((in_array($key, $preskoci)) || (strpos($key, 'id') !== false)))
            {           
                if(in_array($key, $varchar)){
                    $sql2 .= "'" . $value . "',";
                }
                elseif(in_array($key, $datum)){
                    $sql2 .= "date('" . $value . "'),";
                }
                else{
                    $sql2 .= $value . ",";
                }     
            }       
        }        
        $sql2[strlen($sql2)-1] = ")"; 
        if($sql2[0] == ',')
            $sql2[0] = "";

        $baza = new Baza();        
        $baza -> spojiDB();      
        $sql3 = (string)$sql.$sql2.";";            
        if(isset($_SESSION['korime']))
            $this->upisUDnevnik($_SESSION['korime'],$sql3);        
        print_r($sql3);
        if($tablica == 'prijava_natjecaj')
            return $a = $baza ->updateDB($sql3,'kategorijaNatjecaj.php');           
        else
            return $a = $baza ->updateDB($sql3,'crud.php?odabirTablica=' . $tablica  );           
    }
    
    function upisUDnevnik($korisnik,$upit='') {       
                    
        $adresa = $_SERVER["REMOTE_ADDR"];
        $skripta = $_SERVER["REQUEST_URI"];
        $preglednik = $_SERVER["HTTP_USER_AGENT"];

        $sql = "insert into dnevnik_rada (korisnik, adresa, skripta, upit, preglednik, vrijeme) values " .
                "('$korisnik', '$adresa', '$skripta', '$upit', '$preglednik')";      

        $baza = new Baza();
        $baza -> spojiDB();
        $baza -> selectDB($sql);   
    }

    function vanjskiKljucevi($stupci,$tablica){
        $vanjskiKljucevi = array('ext_tip_korisnika' => 'vrsta','ext_korisnik' => 'kor_ime' , 'ext_vrsta_oglasa' => 'vrsta_oglasa' ,'ext_oglas' => 'naziv','ext_kategorija_natjecaj' => 'naziv','ext_moderator' => 'kor_ime','ext_pozicija' => 'stranica','ext_natjecaj' => 'naziv'); 
        $baza =  new Baza();
        $baza -> spojiDB();
        $ext = array();
        foreach ($stupci as $value) {            
            $temp = array();
            $key = $value;                       
            if(array_key_exists($value, $vanjskiKljucevi)){                
               
                $value = str_replace("ext_","",$value);                
                $extUpit = '';
                $id = "id_" . $value;

                if($id == 'id_moderator'){
                    $id = 'id_korisnik';
                    $value = 'korisnik';
                }
                (string)$sql = 'SELECT ' . $vanjskiKljucevi[$key] . ' , '. $id. ' FROM ' . $value;                                
                
                //$this->upisUDnevnik($_SESSION['korime'],$sql);                   

                $extUpit = $baza -> selectDB($sql);                  
                                
                while ($red = mysqli_fetch_array($extUpit))                                        
                    $temp[$red[$id]] = $red[$vanjskiKljucevi[$key]]; //index reda je id
                $ext[$key] = $temp;
            }            
        }    

        return $ext;             
    }
}
?>