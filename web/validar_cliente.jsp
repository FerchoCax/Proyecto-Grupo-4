<%-- 
    Document   : validar_cliente
    Created on : 2/11/2020, 04:43:41 PM
    Author     : ferch
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="modelo.Conexioon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
PreparedStatement parametro;
Conexioon cn = new Conexioon();
String nombre = request.getParameter("txt_nit");
String query = "SELECT * FROM clientes where nit = '"+nombre+"';";
ResultSet consulta = cn.conexioonbd.createStatement().executeQuery(query);
while (consulta.next()){
if(consulta.next()){
    out.println("<div id='Success'>Cliente Existente</div>");
}else{
    out.println("<div id='Error'>Cliente no existe</div>");
}

%>
