<?php /* Smarty version Smarty-3.1.18, created on 2018-05-31 16:44:57
         compiled from "predlosci\_kategorijaNatjecaj.tpl" */ ?>
<?php /*%%SmartyHeaderCode:190735b0fd73dd637d2-28621392%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'edd20999778ac1379dbc3dbfe926df4c1de01618' => 
    array (
      0 => 'predlosci\\_kategorijaNatjecaj.tpl',
      1 => 1527777896,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '190735b0fd73dd637d2-28621392',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5b0fd73ddbe493_46847823',
  'variables' => 
  array (
    'tablice' => 0,
    'k' => 0,
    'foo' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b0fd73ddbe493_46847823')) {function content_5b0fd73ddbe493_46847823($_smarty_tpl) {?><div class="comboBoxTablice">
	<p>Odaberite kategoriju<br>
	<select id="odabirTablica" name="odabirTablica" onchange="dohvatiIzBazeKategorije();">
		<?php if (!empty($_smarty_tpl->tpl_vars['tablice']->value)) {?>           
            <?php  $_smarty_tpl->tpl_vars['foo'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['foo']->_loop = false;
 $_smarty_tpl->tpl_vars['k'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['tablice']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['foo']->key => $_smarty_tpl->tpl_vars['foo']->value) {
$_smarty_tpl->tpl_vars['foo']->_loop = true;
 $_smarty_tpl->tpl_vars['k']->value = $_smarty_tpl->tpl_vars['foo']->key;
?>
               <option value="<?php echo $_smarty_tpl->tpl_vars['k']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['foo']->value;?>
</option>
            <?php } ?>
        <?php }?> 	
	</select>
	</p>
</div>
<div id="showTable"></div><?php }} ?>
