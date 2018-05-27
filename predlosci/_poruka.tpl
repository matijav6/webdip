<div class="poruka">        
        {if !empty($poruka)}            
            {foreach from=$poruka item=foo}
               {$foo} <br/>
            {/foreach}
        {/if}          
    {if !empty($prazno)}
        Sljedeća polja su prazna: <br/>
        <p>
            {foreach from=$prazno item=foo}
               {$foo} <br/>
            {/foreach}
        </p>        
    {/if} 
    {if !empty($nedozvoljeno)}
        Sljedeća polja sadrže nedozvoljene znakove: <br/>
        <p>
            {foreach from=$nedozvoljeno item=foo}
               {$foo} <br/>
            {/foreach}
        </p>    
    {/if} 
</div>