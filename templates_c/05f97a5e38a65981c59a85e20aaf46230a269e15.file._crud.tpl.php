<?php /* Smarty version Smarty-3.1.18, created on 2018-05-30 17:32:51
         compiled from "predlosci\_crud.tpl" */ ?>
<?php /*%%SmartyHeaderCode:187925b0a91c8551bc0-16836933%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '05f97a5e38a65981c59a85e20aaf46230a269e15' => 
    array (
      0 => 'predlosci\\_crud.tpl',
      1 => 1527693851,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '187925b0a91c8551bc0-16836933',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5b0a91c85950d9_75958142',
  'variables' => 
  array (
    'tablice' => 0,
    'foo' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b0a91c85950d9_75958142')) {function content_5b0a91c85950d9_75958142($_smarty_tpl) {?><div class="comboBoxTablice">
	<p>Odaberite tablicu<br>
	<select id="odabirTablica" name="odabirTablica" onchange="dohvatiIzBaze();">
		<?php if (!empty($_smarty_tpl->tpl_vars['tablice']->value)) {?>           
            <?php  $_smarty_tpl->tpl_vars['foo'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['foo']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['tablice']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['foo']->key => $_smarty_tpl->tpl_vars['foo']->value) {
$_smarty_tpl->tpl_vars['foo']->_loop = true;
?>
               <option value="<?php echo $_smarty_tpl->tpl_vars['foo']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['foo']->value;?>
</option>
            <?php } ?>
        <?php }?> 	
	</select>
	</p>
</div>
<div id="showTable"></div><?php }} ?>
