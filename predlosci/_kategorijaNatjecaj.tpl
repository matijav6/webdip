<div class="comboBoxTablice">
	<p>Odaberite kategoriju<br>
	<select id="odabirTablica" name="odabirTablica" onchange="dohvatiIzBazeKategorije();">
		{if !empty($tablice)}           
            {foreach from=$tablice key=k item=foo}
               <option value="{$k}">{$foo}</option>
            {/foreach}
        {/if} 	
	</select>
	</p>
</div>
<div id="showTable"></div>