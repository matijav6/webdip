<?php /* Smarty version Smarty-3.1.18, created on 2018-05-31 18:42:09
         compiled from "predlosci\_tablica.tpl" */ ?>
<?php /*%%SmartyHeaderCode:200205b0ec5548118f8-60086094%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '9087bd67b8f8eef7861acb4ada090d3f74683ad5' => 
    array (
      0 => 'predlosci\\_tablica.tpl',
      1 => 1527784920,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '200205b0ec5548118f8-60086094',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5b0ec5548790a8_96159432',
  'variables' => 
  array (
    'tablica' => 0,
    'imeTablice' => 0,
    'stupci' => 0,
    'foo' => 0,
    'i' => 0,
    'red' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b0ec5548790a8_96159432')) {function content_5b0ec5548790a8_96159432($_smarty_tpl) {?>
<?php if (isset($_smarty_tpl->tpl_vars['tablica']->value)) {?>		
	<table border="1" class="CRUDTablice">
	    <caption>Tablica: <?php echo $_smarty_tpl->tpl_vars['imeTablice']->value;?>
</caption>                                    
	    <thead>
	    	<tr>
	    		<?php  $_smarty_tpl->tpl_vars['foo'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['foo']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['stupci']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['foo']->key => $_smarty_tpl->tpl_vars['foo']->value) {
$_smarty_tpl->tpl_vars['foo']->_loop = true;
?>
	    			<th><?php echo $_smarty_tpl->tpl_vars['foo']->value;?>
</th>
				<?php } ?> 
				<th>Operacije</th> 
	    	</tr>
	    </thead>       	        
	        <?php if (!isset($_smarty_tpl->tpl_vars['red'])) $_smarty_tpl->tpl_vars['red'] = new Smarty_Variable(null);while ($_smarty_tpl->tpl_vars['red']->value = mysqli_fetch_array($_smarty_tpl->tpl_vars['tablica']->value)) {?>
	        <?php $_smarty_tpl->tpl_vars['i'] = new Smarty_variable(0, null, 0);?>          
	            <tr>          
	            <?php  $_smarty_tpl->tpl_vars['foo'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['foo']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['stupci']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['foo']->key => $_smarty_tpl->tpl_vars['foo']->value) {
$_smarty_tpl->tpl_vars['foo']->_loop = true;
?>
	    			<td name="<?php echo $_smarty_tpl->tpl_vars['stupci']->value[$_smarty_tpl->tpl_vars['i']->value];?>
">		    				
	    				<?php echo $_smarty_tpl->tpl_vars['red']->value[$_smarty_tpl->tpl_vars['stupci']->value[$_smarty_tpl->tpl_vars['i']->value++]];?>

	    			</td>
				<?php } ?>	 
					<td>		
					<?php if (isset($_SESSION['uloga'])&&$_SESSION['uloga']=='admin') {?>	
						<form class="actionForm" method="post" action="azurirajTablicu.php">
							<input type="hidden" name="imeTablice" value="<?php echo $_smarty_tpl->tpl_vars['imeTablice']->value;?>
">										
							<button type="submit" name="<?php echo $_smarty_tpl->tpl_vars['stupci']->value[0];?>
" value="<?php echo $_smarty_tpl->tpl_vars['red']->value[$_smarty_tpl->tpl_vars['stupci']->value[0]];?>
" class="btn-default">
								<i class="far fa-edit" title="Ažuriraj"></i>
							</button>
						</form>      

						<form method="post" class="actionForm" action="obrisiIzTablice.php">
							<input type="hidden" name="imeTablice" value="<?php echo $_smarty_tpl->tpl_vars['imeTablice']->value;?>
">																
							<button type="submit" name="<?php echo $_smarty_tpl->tpl_vars['stupci']->value[0];?>
" value="<?php echo $_smarty_tpl->tpl_vars['red']->value[$_smarty_tpl->tpl_vars['stupci']->value[0]];?>
" class="btn-default">
								<i class="far fa-trash-alt" title="Obriši"></i>
							</button>							
						</form>
					<?php } else { ?>
						<form method="post" class="actionForm" action="dodajUTablicu.php">
							<input type="hidden" name="imeTablice" value="<?php echo $_smarty_tpl->tpl_vars['imeTablice']->value;?>
">																
							<button type="submit" name="<?php echo $_smarty_tpl->tpl_vars['stupci']->value[0];?>
" value="<?php echo $_smarty_tpl->tpl_vars['red']->value[$_smarty_tpl->tpl_vars['stupci']->value[0]];?>
" class="btn-default">
								<i class="fas fa-sign-in-alt" aria-hidden="true" title="Prijava"></i>
							</button>							
						</form>
					<?php }?>					
					</td>          
	            </tr>
	      	<?php }?>    
	</table>  			  
<?php }?>

<?php if ((isset($_SESSION['uloga'])&&$_SESSION['uloga']=='admin')||(isset($_SESSION['uloga'])&&$_SESSION['uloga']=='moderator'&&$_smarty_tpl->tpl_vars['imeTablice']->value=='natjecaj')) {?>
<form class="actionForm" method="post" action="dodajUTablicu.php">
	<input type="hidden" name="imeTablice" value="<?php echo $_smarty_tpl->tpl_vars['imeTablice']->value;?>
">										
	<button type="submit" name="submit" value="noviZapis" class="btn-default btn-unos">
		Dodaj u tablicu
		<i class="far fa-edit" title="Dodaj novi zapis"></i>
	</button>
</form> 
<?php }?><?php }} ?>
