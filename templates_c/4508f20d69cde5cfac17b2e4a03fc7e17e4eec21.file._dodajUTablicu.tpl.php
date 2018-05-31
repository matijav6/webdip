<?php /* Smarty version Smarty-3.1.18, created on 2018-05-31 18:26:54
         compiled from "predlosci\_dodajUTablicu.tpl" */ ?>
<?php /*%%SmartyHeaderCode:71365b0ac4ea85e784-59920524%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '4508f20d69cde5cfac17b2e4a03fc7e17e4eec21' => 
    array (
      0 => 'predlosci\\_dodajUTablicu.tpl',
      1 => 1527784013,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '71365b0ac4ea85e784-59920524',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5b0ac4ea8c25f5_82750238',
  'variables' => 
  array (
    'stupci' => 0,
    'foo' => 0,
    'imeTablice' => 0,
    'id_natjecaj' => 0,
    'id_korisnik' => 0,
    'ext' => 0,
    'ke' => 0,
    'k' => 0,
    'item' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b0ac4ea8c25f5_82750238')) {function content_5b0ac4ea8c25f5_82750238($_smarty_tpl) {?><form class="form azurirajForm" method="post" action="#">	
		<?php $_smarty_tpl->tpl_vars['i'] = new Smarty_variable(0, null, 0);?>
		<?php  $_smarty_tpl->tpl_vars['foo'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['foo']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['stupci']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['foo']->key => $_smarty_tpl->tpl_vars['foo']->value) {
$_smarty_tpl->tpl_vars['foo']->_loop = true;
?>		
			<?php if ((strpos($_smarty_tpl->tpl_vars['foo']->value,'ext')!==false)) {?>
					<input type="hidden" name="<?php echo $_smarty_tpl->tpl_vars['foo']->value;?>
" value="<?php ob_start();?><?php echo $_smarty_tpl->tpl_vars['foo']->value;?>
<?php $_tmp1=ob_get_clean();?><?php echo $_tmp1;?>
" disabled>			
			<?php } elseif ((strpos($_smarty_tpl->tpl_vars['foo']->value,'vrijeme')!==false)||(strpos($_smarty_tpl->tpl_vars['foo']->value,'id')!==false)||$_smarty_tpl->tpl_vars['foo']->value=='hash_lozinka'||$_smarty_tpl->tpl_vars['foo']->value=='id_korisnik'||$_smarty_tpl->tpl_vars['foo']->value=='tip_korisnika') {?>
				<input type="hidden" name="<?php echo $_smarty_tpl->tpl_vars['foo']->value;?>
">			
			<?php } else { ?>
				<label><?php echo $_smarty_tpl->tpl_vars['foo']->value;?>
</label>				
				<input type="<?php if (strpos($_smarty_tpl->tpl_vars['foo']->value,'otvoren')!==false) {?>date<?php } else { ?> text <?php }?>" name="<?php echo $_smarty_tpl->tpl_vars['foo']->value;?>
">
			<?php }?>
		<?php } ?> 
		<?php if ($_smarty_tpl->tpl_vars['imeTablice']->value=='prijava_natjecaj'&&isset($_smarty_tpl->tpl_vars['id_natjecaj']->value)) {?>
			<input type="hidden" name="ext_natjecaj" value="<?php echo $_smarty_tpl->tpl_vars['id_natjecaj']->value;?>
">
			<input type="hidden" name="ext_korisnik" value="<?php echo $_smarty_tpl->tpl_vars['id_korisnik']->value;?>
">
		<?php }?>
		<?php if (isset($_smarty_tpl->tpl_vars['ext']->value)&&$_smarty_tpl->tpl_vars['imeTablice']->value!='prijava_natjecaj') {?>
		<?php  $_smarty_tpl->tpl_vars['foo'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['foo']->_loop = false;
 $_smarty_tpl->tpl_vars['ke'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['ext']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['foo']->key => $_smarty_tpl->tpl_vars['foo']->value) {
$_smarty_tpl->tpl_vars['foo']->_loop = true;
 $_smarty_tpl->tpl_vars['ke']->value = $_smarty_tpl->tpl_vars['foo']->key;
?>
			<label><?php echo $_smarty_tpl->tpl_vars['ke']->value;?>
</label>					
				<select name="<?php echo $_smarty_tpl->tpl_vars['ke']->value;?>
">		
			        <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_smarty_tpl->tpl_vars['k'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['foo']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
 $_smarty_tpl->tpl_vars['k']->value = $_smarty_tpl->tpl_vars['item']->key;
?>
			           <option value="<?php echo $_smarty_tpl->tpl_vars['k']->value;?>
" selected="selected"><?php echo $_smarty_tpl->tpl_vars['item']->value;?>
</option>
			        <?php } ?>        
				</select>									
		<?php } ?>
		<?php }?>
	<input type="hidden" name="imeTablice" value="<?php echo $_smarty_tpl->tpl_vars['imeTablice']->value;?>
">	
    <input type="submit" class="submit" name="upisi" value="Spremi" style="grid-column-start: 2;">
</form><?php }} ?>
