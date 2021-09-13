<%-- 
    Document   : productoEditar
    Created on : 19/09/2018, 07:27:06 PM
    Author     : Sensei
--%>

<%@page import="xCore.xVariables.*"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="xCore.Usuario"%>
<%@page import="xCore.Inventario"%>
<%@page import="xCore.xOperaciones.OperaInventario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Exception ee = null;

    String proLink = OperaVars.getUrl(OperaVars.URL_PRODUCTO_EDITAR);
    
    Usuario usu = new Usuario();
    usu.id = 1;

    OperaInventario op = new OperaInventario();
    Inventario inv_pro = new Inventario();
    inv_pro.producto.activo = 1;
    
    String inv_pro_new_entradaCantidad = "";
    String inv_pro_new_entradaCosto = "";
    String inv_pro_new_inventarioExistencia = "";
    String inv_pro_new_inventarioPrecio = "";
    String inv_pro_new_ProductoBarras = "";
    String inv_pro_new_ProductoNombre = "";
    String inv_pro_new_ProductoActivo = "";

    
    DecimalFormat df2 = OperaUtils.getDefimalFormat();
    
    try {

        if (request.getParameter("p") != null | request.getParameter("pe_id") != null) {

            if ( request.getParameter("p") != null && request.getParameter("p").length() > 0) {
                inv_pro = op.InventarioProductoGet(Integer.parseInt(request.getParameter("p")));
            }
            
            inv_pro_new_ProductoBarras = inv_pro.producto.codigoBarras;
            inv_pro_new_ProductoNombre = inv_pro.producto.nombre;
            inv_pro_new_ProductoActivo = String.valueOf(inv_pro.producto.activo);

            if (request.getParameter("inProCan") != null) {
                inv_pro_new_entradaCantidad = request.getParameter("inProCan");
            }

            if (request.getParameter("inProCos") != null) {
                inv_pro_new_entradaCosto = request.getParameter("inProCos");
            }

            if (request.getParameter("inInvExi") != null) {
                inv_pro_new_inventarioExistencia = request.getParameter("inInvExi");
            }

            if (request.getParameter("inInvPre") != null) {
                inv_pro_new_inventarioPrecio = request.getParameter("inInvPre");
            }

            if (request.getParameter("invProCBa") != null) {
                inv_pro_new_ProductoBarras = request.getParameter("invProCBa");
            }

            if (request.getParameter("invProNom") != null) {
                inv_pro_new_ProductoNombre = request.getParameter("invProNom");
            }

            if (request.getParameter("fep_activo") != null) {
                inv_pro_new_ProductoActivo = request.getParameter("fep_activo").equals("1")?"1":"0";
            }

            if (request.getParameter("bGuardar") != null) {
                if (request.getParameter("bGuardar").compareTo("Guardar") == 0) {
                    //guardarmos tod

                    inv_pro = op.InventarioSet(inv_pro,
                            inv_pro_new_ProductoBarras,
                            inv_pro_new_ProductoNombre,
                            inv_pro_new_ProductoActivo,
                            inv_pro_new_entradaCantidad,
                            inv_pro_new_entradaCosto,
                            inv_pro_new_inventarioExistencia,
                            inv_pro_new_inventarioPrecio,
                            usu);

                    //hasta aqui todo ok!
                    inv_pro_new_entradaCantidad = "";
                    inv_pro_new_entradaCosto = "";
                    inv_pro_new_inventarioExistencia = "";
                    inv_pro_new_inventarioPrecio = "";

                    inv_pro_new_ProductoBarras = inv_pro.producto.codigoBarras;
                    inv_pro_new_ProductoNombre = inv_pro.producto.nombre;
                    inv_pro_new_ProductoActivo = String.valueOf(inv_pro.producto.activo);

                }
            }

        }
    } catch (Exception e) {
        ee = e;
        ee.printStackTrace();
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Inventario</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
        <link rel="stylesheet" type="text/css" href="estilos.css">
        
        <script src="libs/jquery-3.3.1.min.js"></script>
        <script>
            $(document).ready(function () {
                console.log("ready!");
                
                if( $( "#pe_id" ).val() == '' ){
                    $( "#invProCBa" ).prop('disabled', false );
                    $( "#invProNom" ).prop('disabled', false );
                    $( "input[name=fep_activo][value=1]").prop('checked', true);
                    $( "#btnEditProd" ).prop('disabled', true );
                }
                
                
                $( "#btnEditProd" ).click(function() {
                    
                    
                    
                    if( $( "#invProCBa" ).prop('disabled') ){
                        $( "#invProCBa" ).prop('disabled', false );
                        $( "#invProNom" ).prop('disabled', false );
                        $("input[name=fep_activo]").attr('disabled', false);
                        $( "#btnEditProd" ).val('Deshacer Edición');
                    }else{                    
                        $( "#invProCBa" ).prop('disabled', true );
                        $( "#invProNom" ).prop('disabled', true );
                        $( "#invProCBa" ).val('<%= inv_pro.producto.codigoBarras %>' );
                        $( "#invProNom" ).val('<%= inv_pro.producto.nombre %>');
                        $("input[name=fep_activo]").attr('disabled', true);
                        $("input[name=fep_activo][value=<%= inv_pro.producto.activo %>]").prop('checked', true);
                        $( "#btnEditProd" ).val('Editar Producto');
                    }

                    
                });
            });

        </script>
    </head>
    <body>

        
        <%@include file='estilosymenus.html'%>
        
        
        <h2>Editar Inventario</h2>


        <% if (ee != null) {%>

        <h3 style="color:red;">Ocurrio al obtener los recultados:</h3>
        <pre> <%= ee.getMessage()%> </pre>

        <% }%>

        <form action="productoEditar.jsp<%= inv_pro.producto.id != 0 ? "?p=" + inv_pro.producto.id : ""%>" method="post">

            <input type="hidden" id="pe_id" name="pe_id" value="<%= inv_pro.producto.id != 0 ? inv_pro.producto.id : ""%>"/>


            <table style="width: 450px;">
                <tr>
                    <th width="20%">&nbsp;</th>
                    <th width="40%">Actual</th>
                    <th width="40%">Ajustar</th>
                </tr>
                <tr>
                    <th>Codigo Barras</th>
                    <td colspan="2">
                        <input type="text" id="invProCBa" name="invProCBa" value="<%= inv_pro_new_ProductoBarras%>" disabled="disabled" style="width: 100%"/>
                    </td>
                </tr>
                <tr>
                    <th >Producto</th>
                    <td colspan="2">
                        <input type="text" id="invProNom" name="invProNom" value="<%= inv_pro_new_ProductoNombre%>" disabled="disabled"  style="width: 100%"/>
                    </td>
                </tr>
                <tr>
                    <th>Activo</th>

                    <td>
                        <input type="radio" id="fep_activo" name="fep_activo" value="1"<% if (inv_pro_new_ProductoActivo.compareTo("1") == 0) {
                                out.print(" checked");
                            } %> disabled="disabled"> Si 
                        <input type="radio" id="fep_activo" name="fep_activo" value="0"<% if (inv_pro_new_ProductoActivo.compareTo("0") == 0) {
                                out.print(" checked");
                            }%> disabled="disabled"> No
                    </td>
                    <td><input type="button" id="btnEditProd" value="Editar Producto"></td>
                </tr>



                <tr>
                    <th colspan="3"><h2>Entrada</h2><hr></th>
                </tr>
                <tr>
                    <th width="20%">&nbsp;</th>
                    <th width="40%">Última Entrada</th>
                    <th width="40%">Realizar Entrada</th>
                </tr>
                <tr>
                    <th>Cantidad</th>
                    <td class="numero"><%= df2.format(inv_pro.entradaCantidad)%></td>
                    <td><input type="text" name="inProCan" value="<%= inv_pro_new_entradaCantidad%>"/></td>
                </tr>
                <tr>
                    <th>Costo</th>
                    <td class="numero"><%= df2.format(inv_pro.entradaCosto)%></td>
                    <td><input type="text" name="inProCos" value="<%= inv_pro_new_entradaCosto%>"/></td>
                </tr>
                <tr>
                    <th>Total</th>
                    <td class="numero"><%= df2.format(inv_pro.entradaTotal)%></td>
                    <td><input type="text" value="" disabled="disabled"/></td>
                </tr>
                <tr>
                    <th>*Fecha</th>&nbsp;
                    <td class="numero"><%= OperaUtils.getDateFormated(inv_pro.entradaFecha)%> Hace <%= OperaUtils.getDaysOf(inv_pro.entradaFecha)%> días</td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <th colspan="3"><h2>Inventario</h2><hr></th>
                </tr>
                <tr>
                    <th width="20%">&nbsp;</th>
                    <th width="40%">Actual</th>
                    <th width="40%">Ajuste</th>
                </tr>
                <tr>
                    <th>Existencia</th>
                    <td class="numero"><%= df2.format(inv_pro.inventarioExistencia)%></td>
                    <td><input type="text" name="inInvExi" value="<%= inv_pro_new_inventarioExistencia%>"/></td>
                </tr>
                <tr>
                    <th>*Inversion</th>
                    <td class="numero"><%= df2.format(inv_pro.entradaCosto * inv_pro.inventarioExistencia)%></td>
                    <td><input type="text" value="" disabled="disabled"/></td>
                </tr>
                <tr>
                    <th>Precio público</th>
                    <td class="numero"><%= df2.format(inv_pro.inventarioPrecio)%></td>
                    <td><input type="text" name="inInvPre" value="<%= inv_pro_new_inventarioPrecio%>"/></td>
                </tr>
                <tr>
                    <th>*Valor</th>
                    <td class="numero"><%= df2.format(inv_pro.inventarioExistencia * inv_pro.inventarioPrecio)%></td>
                    <td><input type="text" value="" disabled="disabled"/></td>
                </tr>

                <tr>
                    <th>Ajustes</th>
                    <td class="numero"><%= df2.format(inv_pro.ajustePositivo)%></td>
                    <td class="numero"><%= df2.format(inv_pro.ajusteNegativo)%></td>
                </tr>



                <tr>
                    <th colspan="3"><h2>Ventas</h2><hr></th>
                </tr>
                <tr>
                    <th>Cantidad vendida</th>
                    <td class="numero"><%= df2.format(inv_pro.ventaCantidad)%></td>
                    <td rowspan="3">Al realizar una entrada, el contador de venta se reiniciará</td>
                </tr>
                <tr>
                    <th>Total</th>
                    <td class="numero"><%= df2.format(inv_pro.ventaTotal)%></td>

                </tr>
                <tr>
                    <th>Precio promedio</th>
                    <td class="numero"><%= df2.format(inv_pro.ventaPrecio)%></td>

                </tr>



            </table>

            &nbsp;<br/>

            <input type="button" value="Cancelar">

            <input type="submit" name="bGuardar" value="Guardar">

        </form>
    </body>
</html>
