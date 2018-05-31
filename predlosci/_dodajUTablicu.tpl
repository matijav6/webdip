<form class="form azurirajForm" method="post" action="#">	
		{$i = 0}
		{foreach from=$stupci item=foo}		
			{if (strpos($foo, 'ext') !== false)}
					<input type="hidden" name="{$foo}" value="{{$foo}}" disabled>			
			{elseif (strpos($foo,'vrijeme') !== false) || (strpos($foo,'id') !== false) || $foo=='hash_lozinka' || $foo=='id_korisnik' || $foo == 'tip_korisnika'}
				<input type="hidden" name="{$foo}">			
			{else}
				<label>{$foo}</label>				
				<input type="{if strpos($foo,'otvoren') !== false}date{else} text {/if}" name="{$foo}">
			{/if}
		{/foreach} 
		{if $imeTablice == 'prijava_natjecaj' && isset($id_natjecaj)}
			<input type="hidden" name="ext_natjecaj" value="{$id_natjecaj}">
			<input type="hidden" name="ext_korisnik" value="{$id_korisnik}">
		{/if}
		{if isset($ext) && $imeTablice != 'prijava_natjecaj'}
		{foreach from=$ext key=ke item=foo}
			<label>{$ke}</label>					
				<select name="{$ke}">		
			        {foreach from=$foo  key=k item=item}
			           <option value="{$k}" selected="selected">{$item}</option>
			        {/foreach}        
				</select>									
		{/foreach}
		{/if}
	<input type="hidden" name="imeTablice" value="{$imeTablice}">	
    <input type="submit" class="submit" name="upisi" value="Spremi" style="grid-column-start: 2;">
</form>