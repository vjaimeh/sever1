<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    
    <title>Chat</title>
    
    <link rel="stylesheet" href="style.css" type="text/css" />
    
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.2/css/all.css">
	
	
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script type="text/javascript" src="chat.js"></script>
	
	
	
	
    <script type="text/javascript">


var chat =  new Chat();

$( document ).ready(function() {
		
		
		var name = prompt("Ingresa tu nombre:", "Invitado");
        
        if (!name || name === ' ') {
    	   name = "Invitado";	
    	}
    	name = name.replace(/(<([^>]+)>)/ig,"");
    	$("#name-area").html("Tu eres: <span>" + name + "</span>");
		
		
    	
    	
		$(function() {
    	
    		 chat.getState(); 
    		 $("#sendie").keydown(function(event) {  
             
                 var key = event.which;  
           
                 
                 if (key >= 33) {
                   
                     var maxLength = $(this).attr("maxlength");  
                     var length = this.value.length;  
                     
                     if (length >= maxLength) {  
                         event.preventDefault();  
                     }  
                  }  
    		 																																																});
    		 
    		 $('#sendie').keyup(function(e) {	
    		 					 
    			  if (e.keyCode == 13) { 
    			  
                    var text = $(this).val();
    				var maxLength = $(this).attr("maxlength");  
                    var length = text.length; 
                     
                    
                    if (length <= maxLength + 1) { 
                     
    			        chat.send(text, name);	
    			        $(this).val("");
    			        
                    } else {
                    
    					$(this).val(text.substring(0, maxLength));
    					
    				}	
    				
    				
    			  }
             });
            
    	});
});

    </script>

</head>

<body onload="setInterval('chat.update()', 1000)">

    <div id="page-wrap">
    
        <h2>Prototype Chat</h2>
        
        <p id="name-area"></p>
        
        <div id="chat-wrap"><div id="chat-area"></div></div>
        
        <form id="send-message-area">
		
		<div class="chat-message-menu">
		    <span class="dot"><i class="far fa-file fa-2x"></i></span>
			<span class="dot"><i class="far fa-file-video fa-2x"></i></span>
			<span class="dot"><i class="fas fa-camera fa-2x"></i></span>
			<span class="dot"><i class="fas fa-map-marked-alt fa-2x"></i></span>
			<span class="dot"><i class="fas fa-barcode fa-2x"></i></span>
		</div>

		
            <p>Enviar mensage: </p>
            <textarea id="sendie" maxlength = '100' ></textarea>
        </form>
    
    </div>

</body>

</html>