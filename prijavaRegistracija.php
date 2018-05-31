<?php
    $h2_naslov = "Prijavi se!";
    include './inicijalizacija.php';
    require_once "vanjske_biblioteke/recaptchalib.php";

	$funkcije = new Funkcije();    	    
    if(isset($_GET['mod'])){
        $mod = $_GET['mod'];
    }
    $smarty->assign('mod', $mod);   

    if(isset($_POST['submitReg'])){
        // your secret key
        $secret = "6LerT1wUAAAAAHDEPONx2Tz-33ZZ-Na7qW-bMkXh";
         
        // empty response
        $response = null;
         
        // check secret key
        $reCaptcha = new ReCaptcha($secret);

        if ($_POST["g-recaptcha-response"]) {
            $response = $reCaptcha->verifyResponse(
                $_SERVER["REMOTE_ADDR"],
                $_POST["g-recaptcha-response"]
            );
        }

         if ($response != null && $response->success) {
            $poruka = $funkcije -> registracija();
          }    	       
    }
    if(isset($_POST['submitLog'])){
        $poruka = $funkcije -> prijava();
       
    }

    if(isset($naslov))
        $smarty->assign('naslov', $naslov);    
    if(isset($h2_naslov))
        $smarty->assign('h2_naslov', $h2_naslov);
    
    $smarty->display('predlosci/_header.tpl');

    if(isset($poruka)){
        $smarty->assign('poruka', $poruka[0]);
        $smarty->assign('prazno', $poruka[1]);
        $smarty->assign('nedozvoljeno', $poruka[2]);
        $smarty->display('predlosci/_poruka.tpl');
    }     
    
    $smarty->display('predlosci/_prijavaRegistracija.tpl'); 

    $smarty->display('predlosci/_footer.tpl');
?>