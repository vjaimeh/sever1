<%-- 
    Document   : inventario
    Created on : 19/09/2018, 05:57:17 PM
    Author     : Sensei
--%>

<%@page import="java.time.Duration"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="xCore.xOperaciones.OperaConn"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="xCore.xVariables.*"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="xCore.Inventario"%>
<%@page import="xCore.xOperaciones.OperaInventario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Exception ee = null;

    DecimalFormat df2 = OperaUtils.getDefimalFormat();
    
    OperaConn oConn = new OperaConn(false);

    Calendar cal1 = Calendar.getInstance();
    
    String busqueda = "SELECT * FROM inventario_view WHERE `inv_inventarioExistencia` <= 0 AND `inv_inventarioFaltantes` <= 0 Order By p_nombre";

    try {

        oConn.mgExecuteQuery(busqueda);
        
    } catch (Exception e) {
        ee = e;
        ee.printStackTrace();
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Reporte de Pedido Actual</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="estilos.css">
    </head>
    <body>


        <%@include file='estilosymenus.html'%>

        <% if (ee != null) {%>

        <h3 style="color:red;">Ocurrio al obtener los recultados:</h3>
        <pre> <%= ee.getMessage()%> </pre>
        <% }%>


        <h1>Reporte Pedido Actual</h1>
        
        <p>Periodo: <%
            
        out.print(OperaUtils.getDateSimpleFormated( cal1.getTime() ));
        
        %></p>
        <p>Sucursal: </p>
        
        
        <div class="floatThead-container">
            <table class="table tableProductos large template table-bordered table-striped">
                <thead>
                    <tr style="background-color: white">
                        <th colspan="3">Producto</th>
                        <th colspan="3">Inventario</th>
                    </tr>

                    <tr>
                        <th>Código Barras</th>
                        <th>Nombre</th>
                        <th>Sucursal</th>
                        
                        <th>Existencia</th>
                        <th>Mínima</th>
                        <th>Faltantes</th>
                    </tr>
                </thead>
                <%

                    while (oConn.mgResultSet().next()){
                        Inventario inv_pro = OperaInventario.InventarioSet( oConn.mgResultSet() );
                        
                %>
                <tr>
                    <td><%= inv_pro.producto.codigoBarras%></td>
                    <td><%= inv_pro.producto.nombre%></td>

                    <td><%= inv_pro.sucursal.nombre%></td>
                    
                    <td class="numero" style="border-left: 2px solid black;"><%= df2.format(inv_pro.inventarioExistencia)%></td>
                    <td class="numero"><%= df2.format(inv_pro.inventarioMinimo)%></td>
                    <td class="numero" <%= (inv_pro.inventarioFaltantes < 0 ? "style=\"background-color:#e60303;color:white;\"" : "")%>><%= df2.format(inv_pro.inventarioFaltantes)%></td>
                    
                </tr>

                <%
                }
                %>

            </table>

        </div>




    </body>
</html>