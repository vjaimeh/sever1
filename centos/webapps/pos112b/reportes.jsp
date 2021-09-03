<%-- 
    Document   : inventario
    Created on : 19/09/2018, 05:57:17 PM
    Author     : Sensei
--%>

<%@page import="xCore.Sucursal"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
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
    DateFormat datefPlain = new SimpleDateFormat("yyyy-MM-dd");

    OperaInventario oi = new OperaInventario();
    List<Sucursal> listaSucursales = new ArrayList<Sucursal>();

    try {
        listaSucursales = oi.SucursalesGet();
    } catch (Exception e) {
        ee = e;
        ee.printStackTrace();
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Reportes</title>
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


        <h3>Reporte de Pedido Actual</h3>

        <form action="reppedact.jsp">
            Sucursal:  
            <select name="rv_sucursal">
                <option value="0">- Todas -</option>
                <%
                    for (Sucursal s : listaSucursales) {
                        out.println("<option value=\"" + s.id + "\">" + s.nombre + "</option>");
                    }
                %>
            </select> 
            <input type="submit" value="Obtener reporte.">
        </form>

        
        <h3>Reporte de Venta del día</h3>

        <form action="repventas.jsp">
            Sucursal:  
            <select name="rv_sucursal">
                <option value="0">- Todas -</option>
                <%
                    for (Sucursal s : listaSucursales) {
                        out.println("<option value=\"" + s.id + "\">" + s.nombre + "</option>");
                    }
                %>
            </select> 
            <input type="submit" value="Obtener reporte.">
        </form>
            
            
        <h3>Reporte de Ventas</h3>

        <form action="repventas.jsp">
            Sucursal:  
            <select name="rv_sucursal">
                <option value="0">- Todas -</option>
                <%
                    for (Sucursal s : listaSucursales) {
                        out.println("<option value=\"" + s.id + "\">" + s.nombre + "</option>");
                    }
                %>
            </select> <br/>
            Fecha Inicial: <input type="date" name="rv_fi" value="<%= datefPlain.format(Calendar.getInstance().getTime())%>"><br/>
            Fecha Final:   <input type="date" name="rv_ff" value="<%= datefPlain.format(Calendar.getInstance().getTime())%>"><br/>
            <input type="submit" value="Obtener reporte.">
        </form>





    </body>
</html>