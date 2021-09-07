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
    Exception eee = null;

    DecimalFormat df2 = OperaUtils.getDefimalFormat();
    DateFormat datefPlain = new SimpleDateFormat("yyyy-MM-dd");

    OperaConn oConn = new OperaConn(false);

    Calendar cal1 = Calendar.getInstance();
    Calendar cal2 = Calendar.getInstance();
    cal2.add(Calendar.DATE, 1);

    if (request.getParameter("rv_fi") != null) {
        cal1.setTime(datefPlain.parse(request.getParameter("rv_fi")));
    }

    if (request.getParameter("rv_ff") != null) {
        cal2.setTime(datefPlain.parse(request.getParameter("rv_ff")));
    }

    Duration diff = Duration.between(cal1.toInstant(), cal2.toInstant());
    if (diff.toDays() <= 0) {
        cal2.setTime(cal1.getTime());
        cal2.add(Calendar.DATE, 1);
    }

    String fi = datefPlain.format(cal1.getTime());
    String ff = datefPlain.format(cal2.getTime());

    String busqueda = "";
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Reportes de Ventas</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="estilos.css">
    </head>
    <body>


        <%@include file='estilosymenus.html'%>

        <% if (eee != null) {%>

        <h3 style="color:red;">Ocurrio al obtener los recultados:</h3>
        <pre> <%= eee.getMessage()%> </pre>
        <% }%>


        <h1>Reporte de Ventas</h1>

        <p>Periodo: <%

            out.print(OperaUtils.getDateSimpleFormated(cal1.getTime()));

            if (request.getParameter("rv_ff") != null) {
                out.print(" al ");

                out.print(OperaUtils.getDateSimpleFormated(cal2.getTime()));
            }


            %></p>
        <p>Sucursal: </p>



        <!--Ventas por Sucursal -->
        <div>
            <h2>Ventas por Sucursal</h2>
            <table style="width : auto;">
                <thead>
                    <tr>
                        <th class="thSucursal">Sucursal</th>
                        <th class="thTotal">Total</th>
                    </tr>
                </thead>
                <%                try {

                        busqueda = "SELECT vi_sucursal_id, `sv_nombre`,count(*), sum(`vd_venta_total`) as gTotal from `ventas_view` "
                                + " WHERE `vi_fecha` BETWEEN '" + fi + "' and '" + ff + "'"
                                + " group by vi_sucursal_id;";

                        oConn.mgExecuteQuery(busqueda);

                        while (oConn.mgResultSet().next()) {
                %>
                <tr>
                    <td><%= oConn.mgResultSet().getString("sv_nombre")%></td>
                    <td class="numero"><%= df2.format(oConn.mgResultSet().getDouble("gTotal"))%></td>

                </tr>
                <%     }

                        busqueda = "SELECT sum(`vd_venta_total`) as gTotal from `ventas_view` "
                                + " WHERE `vi_fecha` BETWEEN '" + fi + "' and '" + ff + "'";

                        oConn.mgExecuteQuery(busqueda);

                        while (oConn.mgResultSet().next()) {
                %>
                <tr>
                    <th>Total</th>
                    <th class="numero"><%= df2.format(oConn.mgResultSet().getDouble("gTotal"))%></th>

                </tr>
                <%     }

                    } catch (Exception e) {
                        e.printStackTrace();
                        out.println("<h3 style=\"color:red;\">Ocurrio al obtener los recultados:" + e.getMessage() + "</h3>");
                    }
                %>
                
                

            </table>


            <hr/>
        </div>

        <!--Ventas por Departamento -->
        <div>
            <h2>Ventas por Departamento</h2>

            <table style="width : auto;">
                <thead>
                    <tr>

                        <th class="thDepartamento">Departamento</th>
                        <th class="thTotal">Total</th>

                    </tr>
                </thead>
                <%                try {

                        busqueda = "SELECT pr_departamento, count(*), sum(`vd_venta_total`) as gTotal from `ventas_view`"
                                + " WHERE `vi_fecha` BETWEEN '" + fi + "' and '" + ff + "'"
                                + " group by pr_departamento;";

                        oConn.mgExecuteQuery(busqueda);

                        while (oConn.mgResultSet().next()) {
                %>
                <tr>
                    <td><%= oConn.mgResultSet().getString("pr_departamento")%></td>
                    <td class="numero"><%= df2.format(oConn.mgResultSet().getDouble("gTotal"))%></td>

                </tr>


                <%     }

                        busqueda = "SELECT  sum(`vd_venta_total`) as gTotal from `ventas_view`"
                                + " WHERE `vi_fecha` BETWEEN '" + fi + "' and '" + ff + "'";

                        oConn.mgExecuteQuery(busqueda);

                        while (oConn.mgResultSet().next()) {
                %>
                <tr>
                    <th>Total</th>
                    <th class="numero"><%= df2.format(oConn.mgResultSet().getDouble("gTotal"))%></th>

                </tr>
                <%     }

                    } catch (Exception e) {
                        e.printStackTrace();
                        out.println("<h3 style=\"color:red;\">Ocurrio al obtener los recultados:" + e.getMessage() + "</h3>");
                    }
                %>

            </table>


            <hr/>
        </div>

        <!--Ventas por Sucursal, Almacén y departamento -->
        <div>
            <h2>Ventas por Sucursal, Almacén y departamento</h2>

            <table style="width : auto;">
                <thead>
                    <tr>

                        <th class="thSucursal">Sucursal</th>
                        <th class="thAlmacen">Almacen</th>
                        <th class="thDepartamento">Departamento</th>
                        <th class="thTotal">Total</th>

                    </tr>
                </thead>
                <%                try {

                        busqueda = "SELECT `sv_nombre`, `sd_nombre`,pr_departamento ,count(*), sum(`vd_venta_total`) as gTotal from `ventas_view` "
                                + " WHERE `vi_fecha` BETWEEN '" + fi + "' and '" + ff + "'"
                                + " group by vi_sucursal_id,vd_sucursal_id,pr_departamento;";

                        oConn.mgExecuteQuery(busqueda);

                        while (oConn.mgResultSet().next()) {
                %>
                <tr>
                    <td><%= oConn.mgResultSet().getString("sv_nombre")%></td>
                    <td><%= oConn.mgResultSet().getString("sd_nombre")%></td>
                    <td><%= oConn.mgResultSet().getString("pr_departamento")%></td>

                    <td class="numero"><%= df2.format(oConn.mgResultSet().getDouble("gTotal"))%></td>

                </tr>


                <%     }

                        busqueda = "SELECT sum(`vd_venta_total`) as gTotal from `ventas_view` "
                                + " WHERE `vi_fecha` BETWEEN '" + fi + "' and '" + ff + "'";

                        oConn.mgExecuteQuery(busqueda);

                        while (oConn.mgResultSet().next()) {
                %>
                <tr>
                    <th colspan="3">Total</th>
                    <th class="numero"><%= df2.format(oConn.mgResultSet().getDouble("gTotal"))%></th>

                </tr>
                <%     }

                    } catch (Exception e) {
                        e.printStackTrace();
                        out.println("<h3 style=\"color:red;\">Ocurrio al obtener los recultados:" + e.getMessage() + "</h3>");
                    }
                %>

            </table>


            <hr/>
        </div>

        <!--Detalle de Ventas -->
        
        <div>
            <h2>Detalle de Ventas</h2>
            
            <table style="width : auto;">
                <thead>
                    <tr>

                        <th class="thSucursal">Sucursal</th>
                        <th class="thAlmacen">Almacen</th>
                        <th class="thDepartamento">Departamento</th>
                        <th class="thProductoNombre">Producto</th>
                        <th class="thTotal">Total</th>

                    </tr>
                </thead>
                <%                try {

                        busqueda = "SELECT `sv_nombre`, `sd_nombre`,pr_departamento , pr_nombre ,count(*), sum(`vd_venta_total`) as gTotal "
                                + " from `ventas_view` "
                                + " WHERE `vi_fecha` BETWEEN '" + fi + "' and '" + ff + "'"
                                + " GROUP by vi_sucursal_id,vd_sucursal_id,pr_departamento,vd_producto_id ";

                        oConn.mgExecuteQuery(busqueda);

                        while (oConn.mgResultSet().next()) {
                %>
                <tr>
                    <td><%= oConn.mgResultSet().getString("sv_nombre")%></td>
                    <td><%= oConn.mgResultSet().getString("sd_nombre")%></td>
                    <td><%= oConn.mgResultSet().getString("pr_departamento")%></td>
                    <td><%= oConn.mgResultSet().getString("pr_nombre")%></td>

                    <td class="numero"><%= df2.format(oConn.mgResultSet().getDouble("gTotal"))%></td>

                </tr>


                <%     }

                        busqueda = "SELECT sum(`vd_venta_total`) as gTotal from `ventas_view` "
                                + " WHERE `vi_fecha` BETWEEN '" + fi + "' and '" + ff + "'";

                        oConn.mgExecuteQuery(busqueda);

                        while (oConn.mgResultSet().next()) {
                %>
                <tr>
                    <th colspan="4">Total</th>
                    <th class="numero"><%= df2.format(oConn.mgResultSet().getDouble("gTotal"))%></th>

                </tr>
                <%     }

                    } catch (Exception e) {
                        e.printStackTrace();
                        out.println("<h3 style=\"color:red;\">Ocurrio al obtener los recultados:" + e.getMessage() + "</h3>");
                    }
                %>

            </table>
        </div>

        <% oConn.mgCloseAll();%>


    </body>
</html>