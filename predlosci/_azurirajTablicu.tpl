<form class="form azurirajForm" method="post" action="#">
	{while ($red = mysqli_fetch_array($upit))}
	{$i = 0}	
		{foreach from=$stupci item=foo}	
				{if (strpos($foo, 'ext') !== false)}
					<input type="hidden" name="ext" value="{$red[$stupci[$i++]]}" disabled>
				{elseif !(strpos($foo, 'ext') !== false) && ((strpos($foo, 'vrijeme') !== false) || $foo=='hash_lozinka' || (strpos($foo, 'id_') !== false))}
					<input type="hidden" name="{$foo}" value="{$red[$stupci[$i++]]}">
				{else}
					<label>{$foo}</label>					
					<input type="{if (strpos($foo,'otvoren') !== false) || (strpos($foo,'prikazivanje') !== false)}date{else} text {/if}" name="{$foo}" value="{$red[$stupci[$i++]]}">
				{/if}			
		{/foreach} 
		{if isset($ext)}
		{foreach from=$ext key=k item=foo}
			<label>{$k}</label>					
				<select name="{$k}">		
			        {foreach from=$foo  key=k item=item}
			           <option value="{$k}" selected="selected">{$item}</option>
			        {/foreach}        
				</select>									
		{/foreach}
		{/if}
	<input type="hidden" name="imeTablice" value="{$imeTablice}">
	<input type="hidden" name="id" value="{$red[$stupci[0]]}">
	{/while}
    <input type="submit" class="submit" name="submit" value="Ažuriraj" style="grid-column-start: 2;">
</form>