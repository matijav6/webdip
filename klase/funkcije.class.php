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
        while ($red = mysqli_fetch_array($upit)){
            $lozinkasol = $red["hash_lozinka"];
            $vrijeme = $red["vrijeme"];
            $idUloga = $red["id_tip_korisnika"];
            $postoji = true;
        }   

        if($postoji){
            $sol =  sha1($vrijeme);
            $crypt = sha1($sol."-".$lozinka);
            
            if($crypt == $lozinkasol){                

                $sql = "SELECT us.kor_ime, u.vrsta FROM tip_korisnika u JOIN korisnik us ON u.id_tip_korisnika = ". $idUloga." LIMIT 1"; 
                $upit = $baza -> selectDB($sql);                        
                $rezUpita = mysqli_fetch_array($upit);
                $_SESSION['korime'] = $rezUpita['kor_ime'];
                $_SESSION['uloga'] = $rezUpita['vrsta']; 
                
                if (headers_sent()) {
                    array_push($poruke,"Uspješna prijava, ukoliko niste automatski prosljeđeni, kliknite <a href=indexKorisnik.php>ovdje </a>");                      
                }               
                else
                    header('Location: indexKorisnik.php');                
            }
        }       
        else
             array_push($poruke, "Neuspješna prijava");

         return (array_merge(array($poruke), array($prazno), array($nedozvoljeno)));
    }

    function odjava(){
        session_destroy();
        header_remove();
        
        if (headers_sent())
            array_push($poruke,"Uspješna odjava, ukoliko niste automatski prosljeđeni, kliknite <a href=index.php>ovdje </a>");
        else
            header('Location: prijavaRegistracija.php?mod=log');        
    }

    function ucitajTablice(){
        $sql = "SELECT table_name FROM information_schema.tables where table_schema='webdip2017x156';";
        $baza = new Baza();
        $baza -> spojiDB();
        $upit = $baza -> selectDB($sql);
        $tablice = array();
        while ($tablica = mysqli_fetch_array($upit)) 
            array_push($tablice, $tablica['table_name']);
        return $tablice;
    }

    function ucitajTablicu(){
        $tablica = $_GET['odabirTablica'];
        $sql = "SELECT * FROM " . $tablica;
        $baza = new Baza();
        $baza -> spojiDB();
        $upit = $baza -> selectDB($sql);   
        $stupci = $this->stupciTablice($tablica);        

        return array_merge(array($upit), array($stupci), array($tablica));
    }

    function stupciTablice($tablica){
        $sql = "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = '" . $tablica . "'";
        $baza = new Baza();
        $baza -> spojiDB();
        $upit = $baza -> selectDB($sql);
        $stupci = array();

        while($red = mysqli_fetch_array($upit)){
            array_push($stupci,$red['COLUMN_NAME']);
        }        
        return $stupci;       
    }
    
    function ucitajVrijednosti($imeID, $id, $tablica){
        $sql = "SELECT * FROM " . $tablica . " WHERE ". $imeID . " = " . $id;
        $baza = new Baza();
        $baza -> spojiDB();
        $upit = $baza -> selectDB($sql); 
        $stupci = $this->stupciTablice($tablica);                  
        return array_merge(array($upit), array($stupci)); 
    }

    function obrisiIzTablice($imeID, $id, $tablica){
        $sql = "DELETE FROM " . $tablica . " WHERE ". $imeID . " = " . $id;
        $baza = new Baza();
        $baza -> spojiDB();
        $baza -> selectDB($sql);         
    }

    function azurirajTablicu($id, $tablica, $post){
        
        $stupci = $this->stupciTablice($tablica);
        $sql1 = "UPDATE ". $tablica ." SET ";
        $sql2 ="";
        $varchar = array('vrsta','ime', 'prezime','email','lozinka','hash_lozinka');
        $sql3 = "WHERE " . $stupci[0] ." = " . $id;        
        foreach ($post as $key => $value){        
            if($key == 'imeTablice' || $key == 'submit' || $key == 'id')
                continue;            
            if((strpos($value, " ") !== false) || (strpos($key, "ime") !== false) || in_array($key, $varchar)){
                $sql2 .= $key . " = '" . $value . "',";
            }
            else{
                $sql2 .= $key . " = " . $value . ",";
            }            
        }
        
        
        
        $sql2[strlen($sql2)-1] = " ";                
        $sql = $sql1.$sql2.$sql3;
        $baza = new Baza();
        $baza -> spojiDB();        
        $baza -> updateDB($sql,'crud.php?odabirTablica=' . $tablica);
    }

    function upisUTablicu($tablica, $stupci, $post){
        $varchar = array('vrsta','ime', 'prezime','email','lozinka','hash_lozinka','opis',' ');
        $sql = "INSERT INTO " . $tablica . "(";
        $i = 0;
        foreach ($stupci as $item) {            
            if($i != 0){
                $sql .= $item .",";
            }
            $i++;
        }
        $sql[strlen($sql) - 1] = ")";
        $sql .= " VALUES(";
        $sql2="";
        foreach ($post as $key => $value){        
            echo $key . "</br>";
            if(!($key == 'imeTablice' || $key == 'submit' || $key == 'id' || $value == 'Spremi'))
            {           
                if(in_array($key, $varchar)){
                    $sql2 .= "'" . $value . "',";
                }
                else{
                    $sql2 .= $value . ",";
                }     
            }       
        }
        echo "</br> " .  $sql2[strlen($sql2)-1] . "</br>";
        $sql2[strlen($sql2)-1] = ")"; 
        if($sql2[0] == ',')
            $sql2[0] = "";

        $baza = new Baza();
        $baza -> spojiDB();
        print_r($sql.$sql2);
        //$upit = $baza -> selectDB($sql); 
    }
}
?>