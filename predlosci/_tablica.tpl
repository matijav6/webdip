
{if isset($tablica)}		
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
					{if isset($smarty.session.uloga) && $smarty.session.uloga == 'admin'}	
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
					{else}
						<form method="post" class="actionForm" action="dodajUTablicu.php">
							<input type="hidden" name="imeTablice" value="{$imeTablice}">																
							<button type="submit" name="{$stupci[0]}" value="{$red[$stupci[0]]}" class="btn-default">
								<i class="fas fa-sign-in-alt" aria-hidden="true" title="Prijava"></i>
							</button>							
						</form>
					{/if}					
					</td>          
	            </tr>
	      	{/while}    
	</table>  			  
{/if}

{if (isset($smarty.session.uloga) && $smarty.session.uloga == 'admin') || (isset($smarty.session.uloga) && $smarty.session.uloga == 'moderator' && $imeTablice == 'natjecaj')}
<form class="actionForm" method="post" action="dodajUTablicu.php">
	<input type="hidden" name="imeTablice" value="{$imeTablice}">										
	<button type="submit" name="submit" value="noviZapis" class="btn-default btn-unos">
		Dodaj u tablicu
		<i class="far fa-edit" title="Dodaj novi zapis"></i>
	</button>
</form> 
{/if}