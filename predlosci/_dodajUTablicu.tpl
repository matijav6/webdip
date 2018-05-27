<form class="form azurirajForm" method="post" action="#">	
		{foreach from=$stupci item=foo}
			{if $foo == 'vrijeme' || $foo=='hash_lozinka' || $foo=='id_korisnik' || $foo == 'id_tip_korisnika'}
				<input type="hidden" name="{$foo}">
			{else}
				<label>{$foo}</label>
				<input type="text" name="{$foo}">
			{/if}
		{/foreach} 
	<input type="hidden" name="imeTablice" value="{$imeTablice}">	
    <input type="submit" class="submit" name="upisi" value="Spremi" style="grid-column-start: 2;">
</form>