<%-- 
    Document   : inventario
    Created on : 19/09/2018, 05:57:17 PM
    Author     : Sensei
--%>

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
    String proLink = OperaVars.getUrl(OperaVars.URL_PRODUCTO_EDITAR);

    OperaInventario op = new OperaInventario();
    List<Inventario> lista = new ArrayList<Inventario>();
    try {
        lista = op.InventarioGetTotal("", "p_nombre,inv_contador,suc_nombre ASC");
    } catch (Exception e) {
        ee = e;
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
        <script src="libs/jquery.floatThead.min.js"></script>
        <script>
            $(document).ready(function () {

                $('table.tableProductos').floatThead({
                    position: 'fixed'
                });
            });

        </script>
    </head>
    <body>


        <%@include file='estilosymenus.html'%>

        <% if (ee != null) {%>

        <h3 style="color:red;">Ocurrio al obtener los recultados:</h3>
        <pre> <%= ee.getMessage()%> </pre>
        <% ee.printStackTrace();
            }%>

        <div class="floatThead-container">
            <table class="table tableProductos large template table-bordered table-striped">
                <thead>
                    <tr style="background-color: white">
                        <th colspan="4">Producto</th>
                        <th colspan="3">Entradas</th>
                        <th colspan="6">Inventario</th>
                        <th colspan="2">Ajustes</th>
                        <th colspan="3">Ventas</th>
                    </tr>

                    <tr>

                        <th>Código Barras</th>
                        <th>Nombre</th>
                        <th>Sucursal</th>
                        <th>Departamento</th>


                        <th>Costo</th>
                        <th>Cantidad</th>
                        <th>Total</th>

                        <th>Existencia</th>
                        <th>Mínima</th>
                        <th>Faltantes</th>
                        <th>Inversion</th>
                        <th>Precio Público</th>
                        <th>Valor</th>

                        <th>Positivo</th>
                        <th>Negativo</th>

                        <th>Venta</th>
                        <th>Total</th>
                        <th>Precio Promedio</th>
                    </tr>
                </thead>
                <%

                    for (int i = 0; i < lista.size(); i++) {
                        Inventario inv_pro = lista.get(i);

                        if (inv_pro.sucursal.nombre != null) {
                %>
                <tr>
                    <td><%= inv_pro.producto.codigoBarras%></td>
                    <td><a href="<%= proLink + "?p=" + inv_pro.producto.id%>"><%= inv_pro.producto.nombre%></a></td>

                    <td><%= inv_pro.sucursal.nombre%></td>
                    <td>???????</td>


                    <td class="numero" style="border-left: 2px solid black;"><%= df2.format(inv_pro.entradaCosto)%></td>
                    <td class="numero"><%= df2.format(inv_pro.entradaCantidad)%></td>
                    <td class="numero"><%= df2.format(inv_pro.entradaTotal)%></td>

                    <td class="numero" style="border-left: 2px solid black;"><%= df2.format(inv_pro.inventarioExistencia)%></td>
                    <td class="numero"><%= df2.format(inv_pro.inventarioMinimo)%></td>
                    <td class="numero" <%= (inv_pro.inventarioFaltantes < 0 ? "style=\"background-color:#e60303;color:white;\"" : "")%>><%= df2.format(inv_pro.inventarioFaltantes)%></td>
                    <td class="numero"><%= df2.format(inv_pro.inventarioExistencia * inv_pro.entradaCosto)%></td>
                    <td class="numero"><%= df2.format(inv_pro.inventarioPrecio)%></td>
                    <td class="numero"><%= df2.format(inv_pro.inventarioExistencia * inv_pro.inventarioPrecio)%></td>

                    <td class="numero"style="border-left: 2px solid black;"><%= df2.format(inv_pro.ajustePositivo)%></td>
                    <td class="numero"><%= df2.format(inv_pro.ajusteNegativo)%></td>

                    <td class="numero" style="border-left: 2px solid black;"><%= df2.format(inv_pro.ventaCantidad)%></td>
                    <td class="numero"><%= df2.format(inv_pro.ventaTotal)%></td>
                    <td class="numero"><%= df2.format(inv_pro.ventaPrecio)%></td>
                </tr>

                <% } else if (inv_pro.rContador > 1 && inv_pro.sucursal.nombre == null) {%>

                <tr>
                    <td class="numero" colspan="4"><strong>Total</strong></td>

                    <td class="numero"><%= df2.format(inv_pro.entradaCosto)%></td>
                    <td class="numero"><%= df2.format(inv_pro.entradaCantidad)%></td>
                    <td class="numero"><%= df2.format(inv_pro.entradaCosto * inv_pro.entradaCantidad)%></td>

                    <td class="numero"><%= df2.format(inv_pro.inventarioExistencia)%></td>
                    <td class="numero"><%= df2.format(inv_pro.inventarioMinimo)%></td>
                    <td class="numero" <%= (inv_pro.inventarioFaltantes < 0 ? "style=\"background-color:#e60303;color:white;\"" : "")%>><%= df2.format(inv_pro.inventarioFaltantes)%></td>
                    <td class="numero"><%= df2.format(inv_pro.inventarioExistencia * inv_pro.entradaCosto)%></td>
                    <td class="numero"><%= df2.format(inv_pro.inventarioPrecio)%></td>
                    <td class="numero"><%= df2.format(inv_pro.inventarioExistencia * inv_pro.inventarioPrecio)%></td>

                    <td class="numero"><%= df2.format(inv_pro.ajustePositivo)%></td>
                    <td class="numero"><%= df2.format(inv_pro.ajusteNegativo)%></td>

                    <td class="numero"><%= df2.format(inv_pro.ventaCantidad)%></td>
                    <td class="numero"><%= df2.format(inv_pro.ventaTotal)%></td>
                    <td class="numero"><%= df2.format(inv_pro.ventaPrecio)%></td>
                </tr>

                <% }
                }%>

            </table>

        </div>


    </body>
</html>