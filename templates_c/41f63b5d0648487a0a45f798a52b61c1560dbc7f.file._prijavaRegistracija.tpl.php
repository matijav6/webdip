<?php /* Smarty version Smarty-3.1.18, created on 2018-05-26 14:59:09
         compiled from "predlosci\_prijavaRegistracija.tpl" */ ?>
<?php /*%%SmartyHeaderCode:85065b095a1d4c5be6-79839448%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '41f63b5d0648487a0a45f798a52b61c1560dbc7f' => 
    array (
      0 => 'predlosci\\_prijavaRegistracija.tpl',
      1 => 1527337154,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '85065b095a1d4c5be6-79839448',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'mod' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5b095a1d537161_22576376',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b095a1d537161_22576376')) {function content_5b095a1d537161_22576376($_smarty_tpl) {?><form id="registracija" class="form prijavaRegistracija" method="POST" name="formRegistracija" novalidate style="display:<?php if ($_smarty_tpl->tpl_vars['mod']->value=='log') {?>none;<?php } else { ?> grid; <?php }?>">
    <p>
        <label for="ime">Ime: </label>
        <input type="text" id="ime" name="ime" size="20" maxlength="30" placeholder="Ime">
        <label for="prez">Prezime: </label>
        <input type="text" id="prez" name="prezime" size="20" maxlength="50" placeholder="Prezime">
        <label for="korimeRegistracija">Korisničko ime: </label>
        <input type="text" id="korimeRegistracija" name="korimeRegistracija" maxlength="20" placeholder="korisničko ime">
        <label for="email">Email adresa: </label>
        <input type="email" id="email" name="email" maxlength="30" placeholder="ime.prezime@posluzitelj.xxx">
        <label for="lozinka1">Lozinka: </label>
        <input type="password" id="lozinka1" name="lozinka" placeholder="lozinka">
        <label for="lozinka2">Ponovi pozinku: </label>
        <input type="password" id="lozinka2" name="lozinka2" placeholder="lozinka">                       
        <div class="g-recaptcha" data-sitekey="6Lcfm1sUAAAAAAXk1t76L8rMWopJ1xxtlHzLBIxW"></div>
        <button type="submit" id="submitBtn" name="submitReg" value="Registriraj se">Registriraj se</button>
    </p>
</form>

<form method="POST" id="prijava" class="form" name="formPrijava" novalidate style="display:<?php if ($_smarty_tpl->tpl_vars['mod']->value=='reg') {?>none;<?php } else { ?> grid; <?php }?>">
    <p><label for="korimePrijava">Korisničko ime: </label>
        <input type="text" id="korimePrijava" name="korisnickoIme" maxlength="20" placeholder="korisničko ime" autofocus="autofocus">
        <label for="lozinka">Lozinka: </label>
        <input type="password" id="lozinka" name="lozinka" placeholder="lozinka">
        <input type="checkbox" name="zapamtiMe" value="1"> Upamti korisničko ime                        
        <input type="reset" class="submit" value=" Inicijaliziraj "> 
        <input type="submit" class="submit" name="submitLog" value="Prijavi se">
    </p>                        
</form><?php }} ?>
