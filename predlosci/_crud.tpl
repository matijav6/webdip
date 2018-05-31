<div class="comboBoxTablice">
	<p>Odaberite tablicu<br>
	<select id="odabirTablica" name="odabirTablica" onchange="dohvatiIzBaze();">
		{if !empty($tablice)}           
            {foreach from=$tablice item=foo}
               <option value="{$foo}">{$foo}</option>
            {/foreach}
        {/if} 	
	</select>
	</p>
</div>
<div id="showTable"></div>