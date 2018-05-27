<form class="form azurirajForm" method="post" action="#">
	{while ($red = mysqli_fetch_array($upit))}
	{$i = 0}
		{foreach from=$stupci item=foo}
			{if $foo == 'vrijeme' || $foo=='hash_lozinka' || $foo=='id_korisnik' || $foo == 'id_tip_korisnika'}
				<input type="hidden" name="{$foo}" value="{$red[$stupci[$i++]]}">
			{else}
				<label>{$foo}</label>
				<input type="text" name="{$foo}" value="{$red[$stupci[$i++]]}">
			{/if}
		{/foreach} 

	<input type="hidden" name="imeTablice" value="{$imeTablice}">
	<input type="hidden" name="id" value="{$red[$stupci[0]]}">
	{/while}
    <input type="submit" class="submit" name="submit" value="Ažuriraj" style="grid-column-start: 2;">
</form>