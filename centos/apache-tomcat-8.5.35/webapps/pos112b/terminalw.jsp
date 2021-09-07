<%-- 
    Document   : terminalw
    Created on : 5/01/2019, 01:14:03 PM
    Author     : Sensei
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Terminal</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">

    <!--<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    -->    
    <script src="libs/jquery-3.3.1.min.js"></script>
    <script src="libs/jquery.floatThead.min.js"></script>

    <style>
        body,table{margin:0px;padding: 0px;border:0px}
        body{font-family:  Helvetica}
        h3{font-size: 12px;padding: 4px;}
        .ico {
            vertical-align: middle;
        }
        .vemdprolab{color: #2c2626; font-size: small;padding: 3px;width: 97px;display:inline-block}
        
        .divModificarContenido{background: #a7bae9;height: 282px}
        .divModificarContenido > p{margin: 0px 0px 20px 0px;font-size: medium}
        .divModificarContenido input[type="text"]{font-size: medium;}
        
        .divCerrarVenta{background: #a7bae9;height: 282px}
        .divCerrarVenta p{margin: 0px 0px 20px 0px;font-size: medium}
        .divCerrarVenta input[type="text"]{font-size: medium;}
        .divCerrarVenta .vemdprolab{margin: 10px;}
        
        button{border: 0px;background: #5b90d7;width: 57px;height: 57px;border-radius: 8px;}
        button.btnmidd{border: 0px;background: #99bbe9;width: 26px;height: 26px;border-radius: 4px;}

        
        
        .encabezados {
            background: #aac2f0;
            font-size: smaller;
            font-weight: bold;
        }
        .encabezados > div {
            padding: 2px;
        }
        .productos{
            margin: 3px 0px 3px 0px;background: #cdd4e2;
        }
        .productos > div {
            background: #aac2f0;
            font-size: smaller;
            padding: 2px;
            font-weight: bold;
        }
        h3{margin: 0px;}

        /* The Modal (background) */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            padding-top: 50px; /* Location of the box */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
        }

        /* Modal Content */
        .modal-content {
            background-color: #fefefe;
            margin: auto;
            padding: 1px;
            border: 1px solid #888;
            width: 100%;
            height: 390px;
        }

        /* The Close Button */
        .close {
            color: #aaaaaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: #000;
            text-decoration: none;
            cursor: pointer;
        }


    </style>


    <body>

        <div style="width: 320px">
            
        
        <div style="background: #8cabec;width: 320px;">
            <div style="display: inline-block; text-align: center;padding: 3px">
                <button>
                    <i class="fas fa-bars fa-3x" style="padding:2px;"></i>
                </button>
                <input id="inpBuscarInv" type="text" style="width:160px;height: 40px;border-radius: 5px;vertical-align: top;margin:5px 10px 0px 10px;font-size: 18px;border: 0px;" placeholder="Buscar...">
                <button id="btnBuscarPro">
                    <i class="fas fa-search fa-3x" style="padding:2px;"></i>
                </button>
            </div>
        </div>

        <h3>Venta Actual</h3>

        
        
            <div class="encabezados">
                <div>
                    <div style="display: inline-block;width: 200px;">Producto</div>
                    <div style="display: inline-block;width: 103px;">Sucursal</div>
                </div>
                <div>
                    <div style="display: inline-block;width: 55px;">Depto</div>
                    <div style="display: inline-block;width: 150px;">Precio x Cantidad</div>
                    <div style="display: inline-block;width: 103px;">Total</div>
                </div>
            </div>

        <div id="venProductosLista">

                <div id="divSinProductos" style="margin: 3px 0px 3px 0px;background: #9cc4ff;color:#100b36;text-align: center;padding: 7px;">
                    <p>Sin productos seleccionados</p>
                </div>

<!--
                <div style="margin: 3px 0px 3px 0px;background: #cdd4e2">
                    <div >
                        <div style="display: inline-block;width: 200px;">ALGON PRODUC</div>
                        <div style="display: inline-block; width: 103px;">CHUCHERIAS</div>
                    </div>
                    <button class="btnmidd" style="display: inline-block;"> <i class="fas fa-edit"></i></button>
                    <div style="display: inline-block;">
                        <div style="display: inline-block;width: 170px;text-align: right;">1 x $ 50.00</div>
                        <div style="display: inline-block;width: 103px;text-align: right;">50.00</div>
                    </div>
                </div>
-->
            </div>
            
            

        
        
        <div style="">
            <hr>
            <div style="display: inline-block;width: 80px;">
                <button id="btnCerrarVenta">
                    <i class="fas fa-check-circle fa-3x"></i>
                </button>
            </div>
            <div style="display: inline-block;width: 120px;text-align: right"><p>Total: $</p></div>
            <div style="display: inline-block;width: 103px;text-align: right"><label id="lblVentaTotal">0.00</label></div>
        </div>



        <!-- The Modal -->
        <div id="myModal" class="modal">

            <!-- Modal content -->
            <div class="modal-content">
                <div>
                    <h3>Búsqueda</h3>

                    <div class="encabezados">
                        <div>
                            <div style="display: inline-block;width: 77%;">Producto</div>
                            <div style="display: inline-block;width: 20%;">Precio</div>
                        </div>
                        <div style="display: inline-block;width: 89%;">
                            <div style="display: inline-block;width: 56%;">Sucursal</div>
                            <div style="display: inline-block;width: 30%;">Depto</div>
                            <div style="display: inline-block;width: 10%;">Exis</div>
                        </div>
                    </div>

                    <div id="busEsperaIco" style="position: absolute;">
                        <i class="fas fa-spinner fa-pulse fa-3x"></i>
                    </div>

                    <div id="busLista" style="overflow-y:scroll; height:262px;width:315px">
                        <div>
                            <div style="margin: 3px 0px 3px 0px;background: #c6d9ff;">
                                <div>
                                    <div style="display: inline-block;width: 77%;">ALGUN PRODUCTO</div>
                                    <div style="display: inline-block;width: 20%;">ESCONDIDO</div>
                                </div>
                                <div style="display: inline-block;">
                                    <div style="display: inline-block;width: 56%;">WHEREVER</div>
                                    <div style="display: inline-block;width: 30%;text-align: right;">5</div>
                                    <div style="display: inline-block;width: 10%;text-align: right;">$ 6956</div>
                                </div>
                                <button class="btnmidd" style="display: inline-block;"> <i class="fas fa-plus-square"></i></button>
                            </div>
                        </div>
                    </div>
                    
                    <div style="margin:5px">
                        <button id="btnBuscarBack">
                            <i class="fas fa-arrow-alt-circle-left fa-3x"></i>
                        </button>
                    </div>
                </div>
            </div>

        </div>


        <!-- MODIFICAR MODAL -->
        <!-- The Modal -->
        <div id="divModificarModal" class="modal">

            <!-- Modal content -->
            <div class="modal-content">
                
        <h3>Modificar:</h3>
        
            <div class="divModificarContenido">
                <input id="inpModProductoId" type="hidden" value=""/>
                <input id="inpModProductoIndex" type="hidden" value=""/>
                <p><spam class="vemdprolab">Producto</spam><spam id="lblModProNombre">PRODUCTOE EL QUE SEA</spam></p>
                <p><spam class="vemdprolab">Departamento</spam><spam id="lblModProDepartamento">WHEREVER</spam></p>
                <p><spam class="vemdprolab">Sucursal</spam><spam id="lblModProSucursal">DONDE SEA</spam></p>

                <p><spam  class="vemdprolab">Precio</spam><input id="inpModProPrecio" type="text" style="width: 100px;" disabled="disabled" ></p>
                <p><spam  class="vemdprolab">Cantidad</spam><input id="inpModProCantidad" type="text" style="width: 100px;" ></p>
                <p><spam  class="vemdprolab">Total</spam><input id="inpModProTotal" type="text" style="width: 100px;"></p>

            </div>
        
                <div style="padding: 5px;">
                    <div style="display:inline-block; width: 150px;padding: 5px">
                        <button id="btnModBack">
                            <i class="fas fa-arrow-alt-circle-left fa-3x"></i>
                        </button>
                        <button id="btnModEliminar">
                            <i class="fas fa-trash-alt fa-3x"></i>
                        </button>
                    </div>
                    <div style="display:inline-block; width: 110px;padding: 10px; text-align: right">
                        <button id="btnModActualizar">
                            <i class="fas fa-check-circle fa-3x"></i>
                        </button>
                    </div>
                </div>
        
        </div>
        </div>
        
        
        <!-- CERRAR VENTA MODAL -->
        <!-- The Modal -->
        <div id="divCerrarModal" class="modal">

            <!-- Modal content -->
            <div class="modal-content">
                
                <h3>Cerrar venta:</h3>
                <div class="divCerrarVenta">

                    <p> <spam class="vemdprolab">Folio</spam>
                        <spam style="display:inline-block">
                            <spam id="busCerrarEsperaIco">
                                <i class="fas fa-spinner fa-pulse"></i>
                            </spam>
                        </spam>
                        <spam id="lblCerrarFolio"></spam>
                        
                    </p>

                    <p><spam class="vemdprolab" >Total</spam><input id="inpCerrarTotal" type="text" style="width: 100px;" disabled="disabled" ></p>
                    <p><spam class="vemdprolab" >Efectivo</spam><input id="inpCerrarEfectivo" type="text" style="width: 100px;" ></p>
                    <p><spam class="vemdprolab" >Cambio</spam><input id="inpCerrarCambio" type="text" style="width: 100px;" disabled="disabled"></p>



                </div>

                <div style="padding: 5px;">
                    <div style="display:inline-block; width: 150px;padding: 5px">
                        <button id="btnCerrarBack">
                            <i class="fas fa-arrow-alt-circle-left fa-3x"></i>
                        </button>
                        <button id="btnCerrarNew" onclick="document.location.reload(true);">
                            <i class="fas fa-redo-alt fa-3x"></i>
                        </button>
                    </div>
                    <div style="display:inline-block; width: 110px;padding: 10px; text-align: right">
                        <button id="btnCerrarFinalizar">
                            <i class="fas fa-check-circle fa-3x"></i>
                        </button>
                    </div>
                </div>
            </div>
        </div>
        
        </div>
    </body>
    <script>
// Get the modal
        var modal = document.getElementById('myModal');
// Get the button that opens the modal
        var btn = document.getElementById("btnBuscarPro");
// Get the <span> element that closes the modal
        var span = document.getElementById("btnBuscarBack");
// When the user clicks the button, open the modal 
        btn.onclick = function () {

        modal.style.display = "block";
        document.getElementById("busEsperaIco").style.display = "block";
        getBusqueda();
        }
        
// When the user clicks on <span> (x), close the modal
        span.onclick = function () {
        modal.style.display = "none";
        }

        /*/ When the user clicks anywhere outside of the modal, close it
         window.onclick = function(event) {
         if (event.target == modal) {
         modal.style.display = "none";
         }
         }
         */
        function getBusqueda() {
        $('#busLista').empty();
        //$('#tblFormula').append( '<tr><th scope="col" width="50%">Componentes</th><th scope="col" width="13%">% Peso</th><th scope="col" width="14%">Cantidad</th><th scope="col" width="13%">Unidad</th></tr>');

        $.ajax({
        url: "twsj/Inventario?viBuscar=" + $('#inpBuscarInv').val(),
                method: "post"
        }).done(function (data) {

        //console.log("Respuesta: ", data);
        $.each(data, function (key3, val3) {
        //console.log("Res: ", key3, val3);
        document.getElementById("busEsperaIco").style.display = "none";
        $.each(val3, function (key, val) {
        //console.log("Res: ", key, val);
        str = "";
        str += '<div>';
        str += '<div style="margin: 3px 0px 3px 0px;background: #c6d9ff;">';
        str += '    <div>';
        str += '        <div style="display: inline-block;width: 77%">' + val.nombre + '</div>';
        str += '        <div style="display: inline-block;width: 20%;text-align: right;"><spam style="font-size:x-small;">$</spam>' + formatter.format( val.precio ) + '</div>';
        str += '    </div>';
        str += '    <div style="display: inline-block;width: 89%;">';
        str += '        <div style="display: inline-block;width: 56%;font-size: small;">' + val.departamento + '</div>';
        str += '        <div style="display: inline-block;width: 30%;font-size: small;">' + val.sucursal + '</div>';
        str += '        <div style="display: inline-block;width: 10%; font-size: small;text-align: right;">' + val.existencia + '</div>';
        
        str += '    </div>';
        str += '    <button class="btnmidd" style="display: inline-block;" onclick="addProductoVenta(\'' + val.inventario_id + '\', \'' + val.nombre + '\', \'' + val.departamento + '\', \'' + val.sucursal + '\', \'' + val.agranel +'\', \'' + val.precio + '\', 1)" ><i class="fas fa-plus-square"></i></button>';
        str += '</div>';
        str += '</div>';
        $('#busLista').append(str);
        });
        });
        });
        }

        var ProductosVentaList = new Array();
        
        function addProductoVenta(inventario_id, nombre, departamento, sucursal, agranel, precio, cantidad) {
            //                   0     1       2             3         4        5       6        7
            var prod = [inventario_id, nombre, departamento, sucursal, agranel, precio, cantidad,"0.00"];
            var paso = true;
            ProductosVentaList.forEach(function (item, index, array) {
                //console.log(item, index);
                if ( item[0] == prod[0] ){
                    if (item[4] != "1" ){
                        item[6] += 1;
                    }
                    paso = false;
                }
            });
            if (paso){
                ProductosVentaList.push(prod);
                
                str = "";
                str += '<div id="divProductoItem' + prod[0] +'" style="margin: 3px 0px 3px 0px;background: #cdd4e2">';
                str += '<div >';
                str += '    <div style="display: inline-block;width: 77%;">'+ prod[1] +'</div>';
                str += '    <div style="display: inline-block; width: 20%;font-size: small;">'+ prod[3] +'</div>';
                str += '</div>';
                str += '<button class="btnmidd" style="display: inline-block;" onclick="modificarProducto('+ inventario_id  +')"> <i class="fas fa-edit"></i></button>';
                str += '<div style="display: inline-block;width: 89%;">';
                str += '    <div style="display: inline-block;width: 40%;font-size: small;">'+ prod[2] +'</div>';
                str += '    <div style="display: inline-block;width: 30%;text-align: right;font-size: small;"><label id="pi_cantidad'+ prod[0] +'">'+ prod[6] +'</label> x $ '+ formatter.format( prod[5] )+'</div>';
                str += '    <div style="display: inline-block;width: 20%;text-align: right;"><label id="pi_total'+ prod[0] +'">'+ prod[7] +'</label></div>';
                str += '</div>';
                str += '</div>';

                $('#venProductosLista').append(str);
            }
            
            document.getElementById('myModal').style.display = "none";
            calculaTotal();
            
            if (prod[4] == "1" ){
                modificarProducto(prod[0]);
            }
        }
        
        var totalVenta = 0;
        function calculaTotal() {
            totalVenta = 0;
            
            if ( ProductosVentaList.length == 0){
                document.getElementById('divSinProductos').style.display = "block";
            }else{
                document.getElementById('divSinProductos').style.display = "none";
            }
            
            
            
            ProductosVentaList.forEach(function (item, index, array) {
                //console.log(item, index);
                //                   0     1       2             3         4        5       6        7
                //prod = [inventario_id, nombre, departamento, sucursal, agranel, precio, cantidad,0.00];
                item[7] = item[5]*item[6];
                $("#pi_cantidad"+ item[0]).text( item[6] );
                $("#pi_total"+ item[0]).text( formatter.format( item[7] ) );
                totalVenta += item[7];
            });
            
            $("#lblVentaTotal").text( formatter.format( totalVenta ) );
        }
        
        
        function modificarProducto(inventarioID){
            
            ProductosVentaList.forEach(function (item, index, array) {
                if ( item[0] == inventarioID ){
                    
                    //                   0     1       2             3         4        5       6        7
                    //prod = [inventario_id, nombre, departamento, sucursal, agranel, precio, cantidad,0.00];
                    $("#inpModProductoIndex").val( index );
                
                    $("#inpModProductoId").val( ProductosVentaList[index][0] );
                    $("#lblModProNombre").text( ProductosVentaList[index][1] );
                    $("#lblModProDepartamento").text( ProductosVentaList[index][2] );
                    $("#lblModProSucursal").text( ProductosVentaList[index][3] );
                    $("#inpModProPrecio").val( ProductosVentaList[index][5] );
                    $("#inpModProCantidad").val( ProductosVentaList[index][6] );
                    $("#inpModProTotal").val( ProductosVentaList[index][7] );
                    
                    $("#inpModProTotal").prop('disabled', (ProductosVentaList[index][4]=="1"?false:true));
                    
                    document.getElementById("divModificarModal").style.display = "block";
                }
            });
        }
        
        document.getElementById("btnModBack").onclick = function () {
            document.getElementById("divModificarModal").style.display = "none";
        }
        
        document.getElementById("btnModEliminar").onclick = function () {
            
            ProductosVentaList.forEach(function (item, index, array) {
                if ( item[0] == $("#inpModProductoId").val() ){
                    document.getElementById("divModificarModal").style.display = "none";
                    
                    ProductosVentaList.splice(index, 1);
                    
                    $("#divProductoItem" + item[0]).remove();
                }
            });
            calculaTotal();
        }
        
        
        document.getElementById("btnModActualizar").onclick = function () {
            //                   0     1       2             3         4        5       6        7
            //prod = [inventario_id, nombre, departamento, sucursal, agranel, precio, cantidad,0.00];
                    
            ProductosVentaList.forEach(function (item, index, array) {
                if ( item[0] == $("#inpModProductoId").val() ){
                    console.log("btnModActualizar0", item);
                    document.getElementById("divModificarModal").style.display = "none";
                    
                    item[5] = $("#inpModProPrecio").val();
                    item[6] = $("#inpModProCantidad").val();
                    item[7] = $("#inpModProTotal").val();
                    
                    
                    console.log("btnModActualizar1", item);
                }
            });
            calculaTotal();
        }

        document.getElementById("inpModProCantidad").oninput = function(){
            if ( document.getElementById("divModificarModal").style.display == "none") return;
            $("#inpModProTotal").val( $("#inpModProCantidad").val() * $("#inpModProPrecio").val() );
        };
        
        document.getElementById("inpModProTotal").oninput = function(){
            if ( document.getElementById("divModificarModal").style.display == "none") return;
            console.log("inpModProTotal","ejeck");
            
            if ( ProductosVentaList[$("#inpModProductoIndex").val()][4] == "1" ){
                $("#inpModProCantidad").val( $("#inpModProTotal").val() /  $("#inpModProPrecio").val()  );
                console.log("inpModProTotal","edit");
            }
        };

        document.getElementById("btnCerrarVenta").onclick = function () {
            $("#inpCerrarTotal").val( totalVenta );
            $("#inpCerrarEfectivo").val( 0.00 );
            $("#inpCerrarCambio").val( 0.00 );
            
            $("#lblCerrarFolio").text( "" );
            $("#inpCerrarEfectivo").prop('disabled', false);
            document.getElementById("btnCerrarBack").style.visibility = "visible"; 
            document.getElementById("btnCerrarNew").style.visibility = "hidden"; 
            document.getElementById("busCerrarEsperaIco").style.display = "none";
            document.getElementById("btnCerrarFinalizar").style.visibility = "visible"; 
            
            document.getElementById("divCerrarModal").style.display = "block";
        }
        
        document.getElementById("inpCerrarEfectivo").oninput = function(){
            if ( document.getElementById("divCerrarModal").style.display == "none") return;
            $("#inpCerrarCambio").val( $("#inpCerrarEfectivo").val() - $("#inpCerrarTotal").val() );
        };
        
        document.getElementById("btnCerrarBack").onclick = function () {
            document.getElementById("divCerrarModal").style.display = "none";
        }
        
        
        document.getElementById("btnCerrarFinalizar").onclick = function () {
            document.getElementById("busCerrarEsperaIco").style.display = "block";
            $.ajax({
                type: 'POST',
                url: "twsj/Ventas?viCerrar=1",
                data: { 
                    total: $("#inpCerrarTotal").val(), 
                    efectivo: $("#inpCerrarEfectivo").val(), 
                    cambio: $("#inpCerrarCambio").val(), 
                    detalle: ProductosVentaList
                },
                success: function(msg){
                    console.log("success: ", msg);
                    document.getElementById("busCerrarEsperaIco").style.display = "none";
                }
            }).done(function (data) {
                
                $.each(data, function (key3, val3) {
                    if (key3 == "Error"){
                        alert("Error al procesar la venta");
                        console.log("Error", data);
                    }else if (key3 == "folio"){
                        
                        $("#lblCerrarFolio").text( val3 );
                        $("#inpCerrarEfectivo").prop('disabled', true);
                        document.getElementById("btnCerrarBack").style.visibility = "hidden"; 
                        document.getElementById("btnCerrarNew").style.visibility = "visible"; 
                        document.getElementById("busCerrarEsperaIco").style.display = "none";
                        document.getElementById("btnCerrarFinalizar").style.visibility = "hidden"; 
                    }else{
                        alert("Respuesta inesperada.");
                        console.log("Respuesta: ", data);
                    }
                
                });
            });
            
            
            
            
        }
        
 const formatter = new Intl.NumberFormat('en-US', {
  style: 'decimal',
  currency: 'USD',
  minimumFractionDigits: 2
})
    </script>

</html>