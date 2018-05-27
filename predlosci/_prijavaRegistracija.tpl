<form id="registracija" class="form prijavaRegistracija" method="POST" name="formRegistracija" novalidate style="display:{if $mod eq 'log'}none;{else} grid; {/if}">
    <p>
        <label for="ime">Ime: </label>
        <input type="text" id="ime" name="ime" size="20" maxlength="30" placeholder="Ime">
        <label for="prez">Prezime: </label>
        <input type="text" id="prez" name="prezime" size="20" maxlength="50" placeholder="Prezime">
        <label for="korimeRegistracija">Korisničko ime: </label>
        <input type="text" id="korimeRegistracija" name="korimeRegistracija" maxlength="20" placeholder="korisničko ime">
        <label for="email">Email adresa: </label>
        <input type="email" id="email" name="email" maxlength="30" placeholder="ime.prezime@posluzitelj.xxx">
        <label for="lozinka1">Lozinka: </label>
        <input type="password" id="lozinka1" name="lozinka" placeholder="lozinka">
        <label for="lozinka2">Ponovi pozinku: </label>
        <input type="password" id="lozinka2" name="lozinka2" placeholder="lozinka">                       
        <div class="g-recaptcha" data-sitekey="6Lcfm1sUAAAAAAXk1t76L8rMWopJ1xxtlHzLBIxW"></div>
        <button type="submit" id="submitBtn" name="submitReg" value="Registriraj se">Registriraj se</button>
    </p>
</form>

<form method="POST" id="prijava" class="form" name="formPrijava" novalidate style="display:{if $mod eq 'reg'}none;{else} grid; {/if}">
    <p><label for="korimePrijava">Korisničko ime: </label>
        <input type="text" id="korimePrijava" name="korisnickoIme" maxlength="20" placeholder="korisničko ime" autofocus="autofocus">
        <label for="lozinka">Lozinka: </label>
        <input type="password" id="lozinka" name="lozinka" placeholder="lozinka">
        <input type="checkbox" name="zapamtiMe" value="1"> Upamti korisničko ime                        
        <input type="reset" class="submit" value=" Inicijaliziraj "> 
        <input type="submit" class="submit" name="submitLog" value="Prijavi se">
    </p>                        
</form>