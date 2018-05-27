<form>
	<div class="comboBoxTablice">
		<p>Odaberite tablicu<br>
		<select name="odabirTablica" onchange="this.form.submit()">
			{if !empty($tablice)}           
	            {foreach from=$tablice item=foo}
	               <option value="{$foo}">{$foo}</option>
	            {/foreach}
	        {/if} 	
		</select>
		</p>
	</div>
</form>
{if isset($tablica)}	
		<form class="actionForm" method="post" action="dodajUTablicu.php">
			<input type="hidden" name="imeTablice" value="{$imeTablice}">										
			<button type="submit" name="submit" value="noviZapis" class="btn-default">
				<i class="far fa-edit" title="Dodaj novi zapis"></i>
			</button>
		</form>  
		<table border="1" class="CRUDTablice">
		    <caption>Tablica: {$imeTablice}</caption>                                    
		    <thead>
		    	<tr>
		    		{foreach from=$stupci item=foo}
		    			<th>{$foo}</th>
					{/foreach} 
					<th>Operacije</th> 
		    	</tr>
		    </thead>       	        
		        {while ($red = mysqli_fetch_array($tablica))}
		        {$i = 0}          
		            <tr>          
		            {foreach from=$stupci item=foo}
		    			<td name="{$stupci[$i]}">		    				
		    				{$red[$stupci[$i++]]}
		    			</td>
					{/foreach}	 
						<td>			
						<form class="actionForm" method="post" action="azurirajTablicu.php">
							<input type="hidden" name="imeTablice" value="{$imeTablice}">										
							<button type="submit" name="{$stupci[0]}" value="{$red[$stupci[0]]}" class="btn-default">
								<i class="far fa-edit" title="Ažuriraj"></i>
							</button>
						</form>      

							<form method="post" class="actionForm" action="obrisiIzTablice.php">
								<input type="hidden" name="imeTablice" value="{$imeTablice}">																
								<button type="submit" name="{$stupci[0]}" value="{$red[$stupci[0]]}" class="btn-default">
									<i class="far fa-trash-alt" title="Obriši"></i>
								</button>							
							</form>
						</td>          
		            </tr>
		      	{/while}    
		</table>  			  
{/if}