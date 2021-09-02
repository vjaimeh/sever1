<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--
<script src='https://api.mapbox.com/mapbox-gl-js/v1.12.0/mapbox-gl.js'></script>
<link href='https://api.mapbox.com/mapbox-gl-js/v1.12.0/mapbox-gl.css' rel='stylesheet' />
-->

<script src='https://api.mapbox.com/mapbox.js/v3.3.1/mapbox.js'></script>
<link href='https://api.mapbox.com/mapbox.js/v3.3.1/mapbox.css' rel='stylesheet' />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<style>
body {font-family: Arial, Helvetica, sans-serif;max-width: 350px;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
  
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
</head>
<body>

<h2>Ingresar</h2>

<form action="mapbox5.json.php" method="post" id="myForm">
  <div class="imgcontainer">
    <i class="fa fa-user-circle-o fa-5x" aria-hidden="true"></i>
  </div>

  <input type="hidden" name="login" value="login">
  <input type="hidden" name="posx" id="posx" value="">
  <input type="hidden" name="posy" id="posy" value="">
  
  <div class="container">
    <label for="uname"><b>Usuario</b></label>
    <input type="text" placeholder="Ingresa nombre de usuario" name="uname" id="uname" required>

    <label for="psw"><b>Contraseña</b></label>
    <input type="password" placeholder="Ingresa contraseña" name="psw" id="psw" required>
        
    <button type="button" onclick="geoFindMe()">Acceder</button>
    <label>
      <input type="checkbox" checked="checked" name="remember" disabled="disabled"> Recordar credenciales
    </label>
  </div>

  <div class="container" style="background-color:#f1f1f1">
    <!--<button type="button" class="cancelbtn">Cancelar</button>-->
    <p class="psw">Olvidé la <a href="#">contraseña</a>.</p>
  </div>  
</form>


<div id="out"></div>

<script>

function geoFindMe() {
  var output = document.getElementById("out");

  if (!navigator.geolocation){
    output.innerHTML = "<p>Geoposicionamiento no esta soportado en tu navegador.</p>";
    return;
  }

  function success(position) {
    var latitude  = position.coords.latitude;
    var longitude = position.coords.longitude;

    //output.innerHTML = '<p>Latitude is ' + latitude + '° <br>Longitude is ' + longitude + '°</p>';
	//return;
	
    //var img = new Image();
    //img.src = "http://maps.googleapis.com/maps/api/staticmap?center=" + latitude + "," + longitude + "&zoom=13&size=300x300&sensor=false";

    //output.appendChild(img);
	
	var uname = document.getElementById("uname").value; 
	var pass = document.getElementById("psw").value; 
	
	var paso = true;
	if ( uname.length < 1 ) paso = false;
	if ( pass.length < 1 ) paso = false;
	
	if(paso){
		document.getElementById("posx").value = longitude;
		document.getElementById("posy").value = latitude;
		document.getElementById("myForm").submit(); 
	}else{
		output.innerHTML = "Imposible acceder sin usuario, contraseña y localización.";
	}
	
  };

  function error() {
    output.innerHTML = "Imposible obtener tu localización";
  };

  output.innerHTML = "<p>Cargando localización…</p>";

  navigator.geolocation.getCurrentPosition(success, error);
}

</script>

</body>
</html>