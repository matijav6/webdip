<?php /* Smarty version Smarty-3.1.18, created on 2018-05-27 09:59:20
         compiled from "predlosci\_poruka.tpl" */ ?>
<?php /*%%SmartyHeaderCode:4915b095a1fe5ce42-43405036%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8ecd3742a65eaeff5ed23f3a4e9725227355a0d3' => 
    array (
      0 => 'predlosci\\_poruka.tpl',
      1 => 1527407954,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '4915b095a1fe5ce42-43405036',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5b095a1feeb728_35098201',
  'variables' => 
  array (
    'poruka' => 0,
    'foo' => 0,
    'prazno' => 0,
    'nedozvoljeno' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b095a1feeb728_35098201')) {function content_5b095a1feeb728_35098201($_smarty_tpl) {?><div class="poruka">        
        <?php if (!empty($_smarty_tpl->tpl_vars['poruka']->value)) {?>            
            <?php  $_smarty_tpl->tpl_vars['foo'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['foo']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['poruka']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['foo']->key => $_smarty_tpl->tpl_vars['foo']->value) {
$_smarty_tpl->tpl_vars['foo']->_loop = true;
?>
               <?php echo $_smarty_tpl->tpl_vars['foo']->value;?>
 <br/>
            <?php } ?>
        <?php }?>          
    <?php if (!empty($_smarty_tpl->tpl_vars['prazno']->value)) {?>
        Sljedeća polja su prazna: <br/>
        <p>
            <?php  $_smarty_tpl->tpl_vars['foo'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['foo']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['prazno']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['foo']->key => $_smarty_tpl->tpl_vars['foo']->value) {
$_smarty_tpl->tpl_vars['foo']->_loop = true;
?>
               <?php echo $_smarty_tpl->tpl_vars['foo']->value;?>
 <br/>
            <?php } ?>
        </p>        
    <?php }?> 
    <?php if (!empty($_smarty_tpl->tpl_vars['nedozvoljeno']->value)) {?>
        Sljedeća polja sadrže nedozvoljene znakove: <br/>
        <p>
            <?php  $_smarty_tpl->tpl_vars['foo'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['foo']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['nedozvoljeno']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['foo']->key => $_smarty_tpl->tpl_vars['foo']->value) {
$_smarty_tpl->tpl_vars['foo']->_loop = true;
?>
               <?php echo $_smarty_tpl->tpl_vars['foo']->value;?>
 <br/>
            <?php } ?>
        </p>    
    <?php }?> 
</div><?php }} ?>
