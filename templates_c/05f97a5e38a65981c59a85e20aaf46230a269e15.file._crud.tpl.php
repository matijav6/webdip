<?php /* Smarty version Smarty-3.1.18, created on 2018-05-27 16:46:57
         compiled from "predlosci\_crud.tpl" */ ?>
<?php /*%%SmartyHeaderCode:187925b0a91c8551bc0-16836933%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '05f97a5e38a65981c59a85e20aaf46230a269e15' => 
    array (
      0 => 'predlosci\\_crud.tpl',
      1 => 1527432415,
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
    'tablica' => 0,
    'imeTablice' => 0,
    'stupci' => 0,
    'i' => 0,
    'red' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b0a91c85950d9_75958142')) {function content_5b0a91c85950d9_75958142($_smarty_tpl) {?><form>
	<div class="comboBoxTablice">
		<p>Odaberite tablicu<br>
		<select name="odabirTablica" onchange="this.form.submit()">
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
</form>
<?php if (isset($_smarty_tpl->tpl_vars['tablica']->value)) {?>	
		<form class="actionForm" method="post" action="dodajUTablicu.php">
			<input type="hidden" name="imeTablice" value="<?php echo $_smarty_tpl->tpl_vars['imeTablice']->value;?>
">										
			<button type="submit" name="submit" value="noviZapis" class="btn-default">
				<i class="far fa-edit" title="Dodaj novi zapis"></i>
			</button>
		</form>  
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
						</td>          
		            </tr>
		      	<?php }?>    
		</table>  			  
<?php }?><?php }} ?>
