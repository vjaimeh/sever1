<%-- 
    Document   : test-jsp
    Created on : 12/01/2019, 11:04:10 PM
    Author     : Sensei
--%>
<%@page import="xCore.xOperaciones.OperaVars"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%
    Exception ee = null;

    Connection conn = null;

    boolean persistente = false;
    
    String sConn = "jdbc:mysql://" + OperaVars.db_dir + "/" + OperaVars.db_name + "?"
                    + "user=" + OperaVars.db_user + "&password=" + OperaVars.db_pass + (persistente?"&connectTimeout=0":"");
    //try {
        Class.forName("com.mysql.jdbc.Driver").newInstance();
            System.out.println("tiempo 1 getConn >" + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.S").format(Calendar.getInstance().getTime()));
            System.out.println("Rule:" + sConn);
            
            conn = DriverManager.getConnection( sConn );
            System.out.println("tiempo 2 getConn >" + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.S").format(Calendar.getInstance().getTime()));
            
            
    //} catch (Exception e) {
    //    ee = e;
    //}
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
