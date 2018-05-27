<?php /* Smarty version Smarty-3.1.18, created on 2018-05-27 16:37:57
         compiled from "predlosci\_azurirajTablicu.tpl" */ ?>
<?php /*%%SmartyHeaderCode:225025b0aad1c4878b2-09519167%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '01235156929033c50013774922f955905f98c55a' => 
    array (
      0 => 'predlosci\\_azurirajTablicu.tpl',
      1 => 1527431875,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '225025b0aad1c4878b2-09519167',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5b0aad1c488a89_41223285',
  'variables' => 
  array (
    'upit' => 0,
    'stupci' => 0,
    'foo' => 0,
    'i' => 0,
    'red' => 0,
    'imeTablice' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b0aad1c488a89_41223285')) {function content_5b0aad1c488a89_41223285($_smarty_tpl) {?><form class="form azurirajForm" method="post" action="#">
	<?php if (!isset($_smarty_tpl->tpl_vars['red'])) $_smarty_tpl->tpl_vars['red'] = new Smarty_Variable(null);while ($_smarty_tpl->tpl_vars['red']->value = mysqli_fetch_array($_smarty_tpl->tpl_vars['upit']->value)) {?>
	<?php $_smarty_tpl->tpl_vars['i'] = new Smarty_variable(0, null, 0);?>
		<?php  $_smarty_tpl->tpl_vars['foo'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['foo']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['stupci']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['foo']->key => $_smarty_tpl->tpl_vars['foo']->value) {
$_smarty_tpl->tpl_vars['foo']->_loop = true;
?>
			<?php if ($_smarty_tpl->tpl_vars['foo']->value=='vrijeme'||$_smarty_tpl->tpl_vars['foo']->value=='hash_lozinka'||$_smarty_tpl->tpl_vars['foo']->value=='id_korisnik'||$_smarty_tpl->tpl_vars['foo']->value=='id_tip_korisnika') {?>
				<input type="hidden" name="<?php echo $_smarty_tpl->tpl_vars['foo']->value;?>
" value="<?php echo $_smarty_tpl->tpl_vars['red']->value[$_smarty_tpl->tpl_vars['stupci']->value[$_smarty_tpl->tpl_vars['i']->value++]];?>
">
			<?php } else { ?>
				<label><?php echo $_smarty_tpl->tpl_vars['foo']->value;?>
</label>
				<input type="text" name="<?php echo $_smarty_tpl->tpl_vars['foo']->value;?>
" value="<?php echo $_smarty_tpl->tpl_vars['red']->value[$_smarty_tpl->tpl_vars['stupci']->value[$_smarty_tpl->tpl_vars['i']->value++]];?>
">
			<?php }?>
		<?php } ?> 

	<input type="hidden" name="imeTablice" value="<?php echo $_smarty_tpl->tpl_vars['imeTablice']->value;?>
">
	<input type="hidden" name="id" value="<?php echo $_smarty_tpl->tpl_vars['red']->value[$_smarty_tpl->tpl_vars['stupci']->value[0]];?>
">
	<?php }?>
    <input type="submit" class="submit" name="submit" value="Ažuriraj" style="grid-column-start: 2;">
</form><?php }} ?>
