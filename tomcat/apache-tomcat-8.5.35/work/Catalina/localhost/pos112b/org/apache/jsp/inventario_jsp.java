/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.35
 * Generated at: 2019-01-31 01:31:35 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.text.DecimalFormat;
import xCore.xVariables.*;
import java.util.List;
import java.util.ArrayList;
import xCore.Inventario;
import xCore.xOperaciones.OperaInventario;

public final class inventario_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/estilosymenus.html", Long.valueOf(1548876662000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("xCore.xVariables");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.util.List");
    _jspx_imports_classes.add("xCore.Inventario");
    _jspx_imports_classes.add("java.text.DecimalFormat");
    _jspx_imports_classes.add("xCore.xOperaciones.OperaInventario");
    _jspx_imports_classes.add("java.util.ArrayList");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

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

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Inventario</title>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"estilos.css\">\n");
      out.write("        <script src=\"libs/jquery-3.3.1.min.js\"></script>\n");
      out.write("        <script src=\"libs/jquery.floatThead.min.js\"></script>\n");
      out.write("        <script>\n");
      out.write("            $(document).ready(function () {\n");
      out.write("\n");
      out.write("                $('table.tableProductos').floatThead({\n");
      out.write("                    position: 'fixed'\n");
      out.write("                });\n");
      out.write("            });\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("<!-- Aqui estan los menus -->\n");
      out.write("<h2>\n");
      out.write("    <a href=\"inventario.jsp\">Inventario</a>\n");
      out.write("    <a href=\"productoEditar.jsp\">Nuevo Producto</a>\n");
      out.write("    <a href=\"reportes.jsp\">Reportes</a>\n");
      out.write("    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("    <a href=\"http://52.1.113.227:8080/pos112bTerminal/\" target=\"_blank\">Terminal</a>\n");
      out.write("    \n");
      out.write("</h2>\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");
 if (ee != null) {
      out.write("\n");
      out.write("\n");
      out.write("        <h3 style=\"color:red;\">Ocurrio al obtener los recultados:</h3>\n");
      out.write("        <pre> ");
      out.print( ee.getMessage());
      out.write(" </pre>\n");
      out.write("        ");
 ee.printStackTrace();
            }
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"floatThead-container\">\n");
      out.write("            <table class=\"table tableProductos large template table-bordered table-striped\">\n");
      out.write("                <thead>\n");
      out.write("                    <tr style=\"background-color: white\">\n");
      out.write("                        <th colspan=\"4\">Producto</th>\n");
      out.write("                        <th colspan=\"3\">Entradas</th>\n");
      out.write("                        <th colspan=\"6\">Inventario</th>\n");
      out.write("                        <th colspan=\"2\">Ajustes</th>\n");
      out.write("                        <th colspan=\"3\">Ventas</th>\n");
      out.write("                    </tr>\n");
      out.write("\n");
      out.write("                    <tr>\n");
      out.write("\n");
      out.write("                        <th>Código Barras</th>\n");
      out.write("                        <th>Nombre</th>\n");
      out.write("                        <th>Sucursal</th>\n");
      out.write("                        <th>Departamento</th>\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <th>Costo</th>\n");
      out.write("                        <th>Cantidad</th>\n");
      out.write("                        <th>Total</th>\n");
      out.write("\n");
      out.write("                        <th>Existencia</th>\n");
      out.write("                        <th>Mínima</th>\n");
      out.write("                        <th>Faltantes</th>\n");
      out.write("                        <th>Inversion</th>\n");
      out.write("                        <th>Precio Público</th>\n");
      out.write("                        <th>Valor</th>\n");
      out.write("\n");
      out.write("                        <th>Positivo</th>\n");
      out.write("                        <th>Negativo</th>\n");
      out.write("\n");
      out.write("                        <th>Venta</th>\n");
      out.write("                        <th>Total</th>\n");
      out.write("                        <th>Precio Promedio</th>\n");
      out.write("                    </tr>\n");
      out.write("                </thead>\n");
      out.write("                ");


                    for (int i = 0; i < lista.size(); i++) {
                        Inventario inv_pro = lista.get(i);

                        if (inv_pro.sucursal.nombre != null) {
                
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <td>");
      out.print( inv_pro.producto.codigoBarras);
      out.write("</td>\n");
      out.write("                    <td><a href=\"");
      out.print( proLink + "?p=" + inv_pro.producto.id);
      out.write('"');
      out.write('>');
      out.print( inv_pro.producto.nombre);
      out.write("</a></td>\n");
      out.write("\n");
      out.write("                    <td>");
      out.print( inv_pro.sucursal.nombre);
      out.write("</td>\n");
      out.write("                    <td>???????</td>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <td class=\"numero\" style=\"border-left: 2px solid black;\">");
      out.print( df2.format(inv_pro.entradaCosto));
      out.write("</td>\n");
      out.write("                    <td class=\"numero\">");
      out.print( df2.format(inv_pro.entradaCantidad));
      out.write("</td>\n");
      out.write("                    <td class=\"numero\">");
      out.print( df2.format(inv_pro.entradaTotal));
      out.write("</td>\n");
      out.write("\n");
      out.write("                    <td class=\"numero\" style=\"border-left: 2px solid black;\">");
      out.print( df2.format(inv_pro.inventarioExistencia));
      out.write("</td>\n");
      out.write("                    <td class=\"numero\">");
      out.print( df2.format(inv_pro.inventarioMinimo));
      out.write("</td>\n");
      out.write("                    <td class=\"numero\" ");
      out.print( (inv_pro.inventarioFaltantes < 0 ? "style=\"background-color:#e60303;color:white;\"" : ""));
      out.write('>');
      out.print( df2.format(inv_pro.inventarioFaltantes));
      out.write("</td>\n");
      out.write("                    <td class=\"numero\">");
      out.print( df2.format(inv_pro.inventarioExistencia * inv_pro.entradaCosto));
      out.write("</td>\n");
      out.write("                    <td class=\"numero\">");
      out.print( df2.format(inv_pro.inventarioPrecio));
      out.write("</td>\n");
      out.write("                    <td class=\"numero\">");
      out.print( df2.format(inv_pro.inventarioExistencia * inv_pro.inventarioPrecio));
      out.write("</td>\n");
      out.write("\n");
      out.write("                    <td class=\"numero\"style=\"border-left: 2px solid black;\">");
      out.print( df2.format(inv_pro.ajustePositivo));
      out.write("</td>\n");
      out.write("                    <td class=\"numero\">");
      out.print( df2.format(inv_pro.ajusteNegativo));
      out.write("</td>\n");
      out.write("\n");
      out.write("                    <td class=\"numero\" style=\"border-left: 2px solid black;\">");
      out.print( df2.format(inv_pro.ventaCantidad));
      out.write("</td>\n");
      out.write("                    <td class=\"numero\">");
      out.print( df2.format(inv_pro.ventaTotal));
      out.write("</td>\n");
      out.write("                    <td class=\"numero\">");
      out.print( df2.format(inv_pro.ventaPrecio));
      out.write("</td>\n");
      out.write("                </tr>\n");
      out.write("\n");
      out.write("                ");
 } else if (inv_pro.rContador > 1 && inv_pro.sucursal.nombre == null) {
      out.write("\n");
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <td class=\"numero\" colspan=\"4\"><strong>Total</strong></td>\n");
      out.write("\n");
      out.write("                    <td class=\"numero\">");
      out.print( df2.format(inv_pro.entradaCosto));
      out.write("</td>\n");
      out.write("                    <td class=\"numero\">");
      out.print( df2.format(inv_pro.entradaCantidad));
      out.write("</td>\n");
      out.write("                    <td class=\"numero\">");
      out.print( df2.format(inv_pro.entradaCosto * inv_pro.entradaCantidad));
      out.write("</td>\n");
      out.write("\n");
      out.write("                    <td class=\"numero\">");
      out.print( df2.format(inv_pro.inventarioExistencia));
      out.write("</td>\n");
      out.write("                    <td class=\"numero\">");
      out.print( df2.format(inv_pro.inventarioMinimo));
      out.write("</td>\n");
      out.write("                    <td class=\"numero\" ");
      out.print( (inv_pro.inventarioFaltantes < 0 ? "style=\"background-color:#e60303;color:white;\"" : ""));
      out.write('>');
      out.print( df2.format(inv_pro.inventarioFaltantes));
      out.write("</td>\n");
      out.write("                    <td class=\"numero\">");
      out.print( df2.format(inv_pro.inventarioExistencia * inv_pro.entradaCosto));
      out.write("</td>\n");
      out.write("                    <td class=\"numero\">");
      out.print( df2.format(inv_pro.inventarioPrecio));
      out.write("</td>\n");
      out.write("                    <td class=\"numero\">");
      out.print( df2.format(inv_pro.inventarioExistencia * inv_pro.inventarioPrecio));
      out.write("</td>\n");
      out.write("\n");
      out.write("                    <td class=\"numero\">");
      out.print( df2.format(inv_pro.ajustePositivo));
      out.write("</td>\n");
      out.write("                    <td class=\"numero\">");
      out.print( df2.format(inv_pro.ajusteNegativo));
      out.write("</td>\n");
      out.write("\n");
      out.write("                    <td class=\"numero\">");
      out.print( df2.format(inv_pro.ventaCantidad));
      out.write("</td>\n");
      out.write("                    <td class=\"numero\">");
      out.print( df2.format(inv_pro.ventaTotal));
      out.write("</td>\n");
      out.write("                    <td class=\"numero\">");
      out.print( df2.format(inv_pro.ventaPrecio));
      out.write("</td>\n");
      out.write("                </tr>\n");
      out.write("\n");
      out.write("                ");
 }
                }
      out.write("\n");
      out.write("\n");
      out.write("            </table>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}