<?php /* Smarty version Smarty-3.1.18, created on 2018-05-31 11:14:08
         compiled from "predlosci\_resetLozinke.tpl" */ ?>
<?php /*%%SmartyHeaderCode:18745b0fbc932594a0-46438239%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '88848e2b058844187be5d9e5aa7a00ea66aa6cb4' => 
    array (
      0 => 'predlosci\\_resetLozinke.tpl',
      1 => 1527758047,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '18745b0fbc932594a0-46438239',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5b0fbc93293e77_21263854',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b0fbc93293e77_21263854')) {function content_5b0fbc93293e77_21263854($_smarty_tpl) {?><form action="resetLozinke.php" method="post">	
	<label>e-mail</label>
	<input type="email" name="email">
	<input type="submit" name="resetLoz" value="Pošalji novu na mail">
</form><?php }} ?>
