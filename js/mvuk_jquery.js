function pretrazivanje() {
  
    kriterij = $('#pretrazi').val().toUpperCase();
    index = $('#index').val();

    tablica = document.getElementsByTagName("table")[0];
    tr = tablica.getElementsByTagName("tr");
  
    for (i = 0; i < tr.length; i++) {
        td = tr[i].getElementsByTagName("td")[index];

        if (td) {                
          if (td.innerHTML.toUpperCase().indexOf(kriterij) > -1) 
            tr[i].style.display = "";      
          else 
            tr[i].style.display = "none";      
        }       
    }
}

function dohvatiIzBaze(){
	var tablica = $('#odabirTablica').val();

	$.ajax({        
    	type: "POST",
        url: "dohvatiTablicu.php?tablica="+ tablica,
        data: { 
        	tab:tablica,
        },
        dataType: "html",
        success: function(data){  
            tab =  data;                   
        	$("#showTable").html(data);             
        }
    });	       
}

function dohvatiIzBazeKategorije(){
    var naziv = $('#odabirTablica').val();
    var id ="ext_kategorija_natjecaj";
    
    $.ajax({
        type: "POST",
        url: "dohvatiRedTablice.php",
        data: { 
            tab:'natjecaj',
            col:naziv,
            id:id,
        },
        dataType: "html",
        success: function(data){                    
            $("#showTable").html(data); 
            //alert(data);
        }
    }); 
}

function provjeriInput(){
    var input = document.getElementById('registracija').getElementsByTagName('input');

    var prazno =  false;
    var nedozvoljenZnak =  false;

    for(var i=0; i < input.length; i++){
        if(input[i].value.length < 1)
            prazno = true;
        if(input[i].value.includes('!') || input[i].value.includes('#') ||input[i].value.includes('?'))
            nedozvoljenZnak = true;
    }
             
    var korime = document.getElementById('korimeRegistracija').value.length;
    var lozinka1 = document.getElementById('lozinka1').value;
    var lozinka2 = document.getElementById('lozinka2').value;

    var email = document.getElementById('email').value;
    var re = new RegExp(/^[^\.][a-zA-Z0-9]+[@]+[a-zA-Z0-9]+[\.]+[a-zA-Z0-9]{2,}$/);
    var checkEmail = re.test(email);    
    
    if(!checkEmail)
        alert("Krivi format emaila");
    if(prazno)
        alert("Nisu sva polja popunjena!");
    if(nedozvoljenZnak)
        alert("Nedozvoljen znak!");
    if(korime < 5)
        alert("Korisničko ime treba imati barem 5 znakova!");
    if(lozinka1 != lozinka2)
        alert("Lozinke nisu iste!");

    if(!prazno && !nedozvoljenZnak && (korime >= 5) && (lozinka1 == lozinka2) && checkEmail)
        return true;
    else
        return false;
}

function paginacija(){   

    tablica = document.getElementsByTagName("table")[0];
    tr = tablica.getElementsByTagName("tr");
    divElement = document.getElementById("paginacija");

    divElement.innerHTML="";
    var stranicenje = null;
    
    $.ajax({        
        async:false,
        type: "GET",
        url: "dohvatiPostavke.php",    
        success: function(data){                      
            stranicenje = data;
        }
    });        

    var velicinaTablica = tr.length - 1;
    var brojGumba = velicinaTablica / stranicenje;

    var btn = document.createElement("input");
    btn.type = "button";
    btn.value = "<";
    btn.addEventListener('click', function(){
        prikaziPrethodnuStranu();
    });

    divElement.appendChild(btn);
    for(x = 1; x <= Math.ceil(brojGumba); x++){
        var btn = document.createElement("input");
        btn.type = "button";
        btn.value = x;
        btn.addEventListener('click', function(){
            prikaziStranu(this.value);
        });
        divElement.appendChild(btn);
        
    }

    var btn = document.createElement("input");
    btn.type = "button";
    btn.value = ">";
    btn.addEventListener('click', function(){
        prikaziSljedecuStranu();
    });
    divElement.appendChild(btn);
    
    for (i = 0; i < tr.length; i++) {        
        if (i <= stranicenje)          
            tr[i].style.display = "";      
          else 
            tr[i].style.display = "none";              
    }    
    var trenutnaStrana = document.getElementById("trenutnaStrana").value = 1;
}
function prikaziStranu(val) {
    tr = tablica.getElementsByTagName("tr");
    var stranicenje = null;
    var trenutnaStrana = document.getElementById("trenutnaStrana");
    trenutnaStrana.value = val;
    
    $.ajax({        
        async:false,
        type: "GET",
        url: "dohvatiPostavke.php",    
        success: function(data){                      
            stranicenje = data;
        }
    });        

    var velicinaTablica = tr.length - 1;
    var brojGumba = velicinaTablica / stranicenje;
    if(val == 1)
    {
        for (i = 0; i < tr.length; i++) {        
            if (i <= stranicenje || tr[i].id == 'header')          
                tr[i].style.display = "";      
              else 
                tr[i].style.display = "none";              
        } 
    }
    else{
        for (i = 0; i < tr.length; i++) {        
            pom = val - 1;
            if(pom == 0) 
                pom = 1
            if ((i <= pom * stranicenje || i > val * stranicenje) && !(tr[i].id == 'header'))
                tr[i].style.display = "none";      
              else 
                tr[i].style.display = "";              
        }
    }   
}
function prikaziPrethodnuStranu(){
    var trenutnaStrana = document.getElementById("trenutnaStrana").value;
    var prethodna = parseInt(trenutnaStrana)-1;
    if(prethodna >= 1)    
    prikaziStranu(prethodna);
}
function prikaziSljedecuStranu(){  
 tablica = document.getElementsByTagName("table")[0];
    tr = tablica.getElementsByTagName("tr");    
    
    var stranicenje = null;
    
    $.ajax({        
        async:false,
        type: "GET",
        url: "dohvatiPostavke.php",    
        success: function(data){                      
            stranicenje = data;
        }
    });        

    var velicinaTablica = tr.length - 1;
    var brojGumba = velicinaTablica / stranicenje;

    var trenutnaStrana = document.getElementById("trenutnaStrana").value;    
    var sljedeca = parseInt(trenutnaStrana)+1;    
    if(sljedeca <= Math.ceil(brojGumba))
        prikaziStranu(sljedeca);
}

function sortUzlazno(kolona){
    
    tablica = document.getElementById("crudTablica");
    tr = tablica.getElementsByTagName("tr");

    for (i = 1; i < tr.length; i++) {
        
        x = tr[i].getElementsByTagName("td")[kolona].innerHTML;
       for (var y = i; y < tr.length; y++) {
     
            k = tr[y].getElementsByTagName("td")[kolona].innerHTML;        
            
            if (x.toLowerCase() > k.toLowerCase()) {
                tr[i].parentNode.insertBefore(tr[y], tr[i]);            
            }  
        }             
    }  
    
}

function sortSilazno(kolona){
    tablica = document.getElementById("crudTablica");
    tr = tablica.getElementsByTagName("tr");

    for (i = 1; i < tr.length; i++) {
        
        x = tr[i].getElementsByTagName("td")[kolona].innerHTML;
     
        for (var y = i; y < tr.length; y++) {
     
            k = tr[y].getElementsByTagName("td")[kolona].innerHTML;        
            
            if (x.toLowerCase() < k.toLowerCase()) {
                tr[i].parentNode.insertBefore(tr[y], tr[i]);            
            }  
        }            
    }
}

$(document).ready(function(){
    $.ajax({
        type: "POST",
        url: "ispisVremena.php",
        dataType: "html",
        success: function(data){                    
            $("#virtualnoVrijeme").html(data);             
        }
    });

    setInterval(function() {
        $.ajax({
            type: "POST",
            url: "ispisVremena.php",
            dataType: "html",
            success: function(data){                    
                $("#virtualnoVrijeme").html(data);             
            }
        });
    }, 1000);

    $("#korimeRegistracija").focusout(function(){
        var korime = $('#korimeRegistracija').val();    
        $.ajax({
            type: "POST",
            url: "provjeriKorime.php",
            data: { 
                korime:korime,
            },
            dataType: "html",
            success: function(data){                    
               if(data != "")
                alert(data);
            }
        });  
    });        
});