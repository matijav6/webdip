<?php /* Smarty version Smarty-3.1.18, created on 2018-06-06 18:11:59
         compiled from "predlosci\_aktiviraj.tpl" */ ?>
<?php /*%%SmartyHeaderCode:51565b1803d89f8811-46757964%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8b5c6ee176d2fbf2b77c104a7594573f11ad41a0' => 
    array (
      0 => 'predlosci\\_aktiviraj.tpl',
      1 => 1528301311,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '51565b1803d89f8811-46757964',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5b1803d8c82049_28020732',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b1803d8c82049_28020732')) {function content_5b1803d8c82049_28020732($_smarty_tpl) {?><form method="post" action="aktiviraj.php" style="margin-top: 10px;">
	<input type="text" name='korime' placeholder="Korisničko ime">
	<input type="text" name='aktKod' placeholder="Aktivacijski kod">
	<input type="submit" name="posalji" value="Aktiviraj">
</form>
 
<?php }} ?>
