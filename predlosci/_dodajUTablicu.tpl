<form class="form azurirajForm" method="post" action="#">	
		{$i = 0}
		{foreach from=$stupci item=foo}		
			{if (strpos($foo, 'ext') !== false)}
					<input type="hidden" name="{$foo}" value="{{$foo}}" disabled>			
			{elseif (strpos($foo,'vrijeme') !== false) || (strpos($foo,'id') !== false) || $foo=='hash_lozinka' || $foo=='id_korisnik' || $foo == 'tip_korisnika'}
				<input type="hidden" name="{$foo}">			
			{else}
				<label>{$foo}</label>				
				<input type="{if (strpos($foo,'otvoren') !== false) || (strpos($foo,'prikazivanje') !== false)}date{else} text {/if}" name="{$foo}">
			{/if}
		{/foreach} 
		{if $imeTablice == 'prijava_natjecaj' && isset($id_natjecaj)}
			<input type="hidden" name="ext_natjecaj" value="{$id_natjecaj}">
			<input type="hidden" name="ext_korisnik" value="{$id_korisnik}">
		{/if}
		{if isset($ext)}
		{foreach from=$ext key=ke item=foo}
			{if ($imeTablice == 'prijava_natjecaj')}
				{if ($ke == 'ext_korisnik')}
					{if (isset($smarty.session.uloga) && $smarty.session.uloga =='admin')}
						<label>{$ke}</label>					
						<select name="{$ke}">		
					        {foreach from=$foo  key=k item=item}
					           <option value="{$k}" {if isset($id_natjecaj) && ($id_natjecaj == $k)}selected="selected"{/if}>{$item}</option>
					        {/foreach}        
						</select>						
					{else}
						<input type="hidden" name="id_korisnik" value="{if (isset($smarty.session.korid))}{$smarty.session.korid}{else}0{/if}">
					{/if}			
				{else}		
					<label>{$ke}</label>					
					<select name="{$ke}">		
				        {foreach from=$foo  key=k item=v}
				           <option value="{$k}" {if isset($id_natjecaj) && $k == $id_natjecaj}selected="selected"{/if}>{$v}</option>
				        {/foreach}        
					</select>	
				{/if}			
			{else}	
				{if ($ke == 'ext_korisnik') && (isset($smarty.session.uloga) && $smarty.session.uloga =='registriran')}						
					<input type="hidden" name="{$ke}" value="{$smarty.session.korid}">
				{else}
					<label>{$ke}</label>					
					<select name="{$ke}">		
				        {foreach from=$foo  key=k item=u}
				           <option value="{$k}" selected="selected">{$u}</option>
				        {/foreach}        
					</select>
				{/if}

			{/if}
		{/foreach}
		{/if}
	<input type="hidden" name="imeTablice" value="{$imeTablice}">	
    <input type="submit" class="submit" name="upisi" value="Spremi" style="grid-column-start: 2;">
</form>