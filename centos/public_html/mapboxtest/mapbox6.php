<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script src='https://api.mapbox.com/mapbox-gl-js/v1.12.0/mapbox-gl.js'></script>
<link href='https://api.mapbox.com/mapbox-gl-js/v1.12.0/mapbox-gl.css' rel='stylesheet' />

<!--
<script src='https://api.mapbox.com/mapbox.js/v3.3.1/mapbox.js'></script>
<link href='https://api.mapbox.com/mapbox.js/v3.3.1/mapbox.css' rel='stylesheet' />
-->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<style>

  body { margin:0; padding:0; }
  #map { top:0; bottom:0; width:80%; height:350px}

table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
}

th, td {
  text-align: center;
  padding: 16px;
}

th:first-child, td:first-child {
  text-align: left;
}

tr:nth-child(even) {
  background-color: #f2f2f2
}

.fa-check {
  color: green;
}

.fa-remove {
  color: red;
}





.marker {
display: block;
border: none;
border-radius: 50%;
cursor: pointer;
padding: 0;
}



</style>
</head>
<body>

<div id="map"></div>


<h2>Comparison Table</h2>

<table id="tUsuarios">
  <tr>
    <th style="width:50%">Usuario</th>
    <th>Fecha</th>
    <th>Go</th>
  </tr>
  
<!--
  <tr>
    <td>Sample text</td>
    <td><i class="fa fa-remove"></i></td>
    <td><input type="checkbox" id="vehicle1" name="vehicle1" value="Bike"></td>
  </tr>
  <tr>
    <td>Sample text</td>
    <td><i class="fa fa-check"></i></td>
    <td><input type="checkbox" id="vehicle1" name="vehicle1" value="Bike"></td>
  </tr>
  <tr>
    <td>Sample text</td>
    <td><i class="fa fa-check"></i></td>
    <td><input type="checkbox" id="vehicle1" name="vehicle1" value="Bike"></td>
  </tr>
  <tr>
    <td>Sample text</td>
    <td><i class="fa fa-remove"></i></td>
    <td><input type="checkbox" id="vehicle1" name="vehicle1" value="Bike"></td>
  </tr>
  <tr>
    <td>Sample text</td>
    <td><i class="fa fa-check"></i></td>
    <td><input type="checkbox" id="vehicle1" name="vehicle1" value="Bike"></td>
  </tr>
-->
</table>



<script>
mapboxgl.accessToken = 'pk.eyJ1Ijoic21hbGxjb3Ntb3d5IiwiYSI6ImNrZmQ4d3ExYzAxMXkyc211anBma2NmMngifQ.0aQP8BsQ4n1I-VdpL9J2Hg';
/*
var map = L.mapbox.map('map')
    .setView([19.4228233,-99.1770211], 13)
	//.setView([38.9, -77], 13)
    .addLayer(L.mapbox.styleLayer('mapbox://styles/mapbox/streets-v11'));
	*/
var map = new mapboxgl.Map({
        container: 'map',
        style: 'mapbox://styles/mapbox/streets-v11',
        center: [ -99.1770211 , 19.4228233 ],
        zoom: 12
    });
	
var jsonUsuarios;
//var table = $('tUsuarios');
/*
var jsonUsuarios = JSON.parse(
'{"usuarios_conectados":['+
'{"id":"0","usuario_id":"0","usuario":"Chrys","fecha":"2020-09-20 20:20:00","posx":"-99.1770211","posy":"19.4228233","error":""},'+
'{"id":"0","usuario_id":"0","usuario":"Chrys","fecha":"2020-09-20 20:20:00","posx":"-99.1659701","posy":"19.4306086","error":""},'+
'{"id":"0","usuario_id":"0","usuario":"Chrys Coffe Office","fecha":"2020-09-20 20:20:00","posx":"-99.09480428557129","posy":"19.465599875019624","error":""},'+
'{"id":"0","usuario_id":"0","usuario":"Chrys Coffe Office","fecha":"2020-09-20 20:20:00","posx":"-99.20295095305175","posy":"19.401575767005895","error":""},'+
'{"id":"0","usuario_id":"0","usuario":"Chrys Coffe Office","fecha":"2020-09-20 20:20:00","posx":"-99.14887761931152","posy":"19.433590976170790","error":""}'+
']}'
);
*/
$.getJSON('mapbox5.json.php', function(data) {
    // JSON result in `data` variable
	jsonUsuarios = data;
	
	/*
	map.eachLayer(function(layer){
		map.removeLayer(layer);
	});
	*/
	for (i in jsonUsuarios["usuarios_conectados"]) {
	  
	  //console.log("variable i:" , i , jsonUsuarios[i]  );
	  
	  x = jsonUsuarios["usuarios_conectados"][i];
	  
	  $('#tUsuarios').append('<tr>'+
		'<td>'+x.usuario+'</td>'+
		'<td><i class="fa fa-check"></i>'+ x.fecha+'</td>'+
		'<td><input type="checkbox" id="vehicle1" name="vehicle1" value="Bike"></td>'+
	  '</tr>');
	  
	  var el = document.createElement('div');
        el.className = 'marker';
        el.style.backgroundImage =
            'url(http://52.1.113.227/~centos/mapboxtest/mapbox6.img1.png)';
        el.style.width = '48px';
        el.style.height = '48px';
/*
        el.addEventListener('click', function () {
            window.alert(marker.properties.message);
        });
*/
        // add marker to map
        new mapboxgl.Marker(el)
            .setLngLat( [ x.posx , x.posy ] )
            .addTo(map);
			
	  /*
	  
	  L.mapbox.featureLayer({
			// this feature is in the GeoJSON format: see geojson.org
			// for the full specification
			type: 'Feature',
			geometry: {
				type: 'Point',
				// coordinates here are in longitude, latitude order because
				// x, y is the standard for GeoJSON and many formats
				coordinates: [x.posx,x.posy]
			},
			properties: {
				title: 'Usuario: ' + x.usuario,
				description: 'conectado el ' + x.fecha,
				'marker-size': 'large',
				'marker-color': '#486aeb',
				'marker-symbol': 'rocket'
			}
		}).addTo(map);
		*/
	} 

});









    </script>

</body>
</html>