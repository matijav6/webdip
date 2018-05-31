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
        	$("#showTable").html(data); 
            //alert(data);
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