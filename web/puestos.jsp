<%-- 
    Document   : puestos
    Created on : 3/10/2020, 07:47:15 PM
    Author     : Kim
--%>

<%@page import="javax.swing.table.DefaultTableModel"%>
<%@page import="modelo.Empleado"%>
<%@page import="modelo.Puesto"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Puestos</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="shortcut icon" href="imagen/icono.png" type="image/x-icon">
             <link rel="stylesheet" href="estilo_formulario.css">

    </head>
    <body>
        <%
        HttpSession misession= (HttpSession) request.getSession();
        if(misession.getAttribute("inicio")=="iniciado"){
        //out.println("Hola");
        HttpSession usuario= (HttpSession) request.getSession();
        String aux2 = (String)usuario.getAttribute("user2"); 
        Menu menu2 = new Menu();
        menu2.Pureba(aux2);
        if(menu2.getClientes()==1){
        %>
    
        <%@include file="header.jsp" %>
        
    
    <div class="container">
    <div class="modal fade" id="modal_puestos" role="dialog">
    <div class="modal-dialog">
    <div class="modal-content">
    <div class="modal-body">
    <form action="sr_puesto" method="post"class="form-group" >
                
        <label    for="lbl_id"><b>ID</b></label>
        <input type="text" name="txt_id" id="txt_id" class="form-control"  value ="0" readonly>  
        <br>
        <label class="puesto" for="lbl_puesto"><b>Puesto</b></label>
        <input type="text" name="txt_puesto" id="txt_puesto"  class="form-control" required>
               
        <br>
             
        <input type="submit" class="btn btn-warning" name="btn_agregar" id="btn_agregar" value="Agregar" >
        <input type="submit" class="btn btn-warning" name="btn_modificar" id="btn_modificar" value="Modificar">
        <input type="submit" class="btn btn-warning" name="btn_eliminar" id="btn_eliminar" value="Eliminar"onclick="javascript:if(!confirm('¿Desea Eliminar?'))return false">
        <button type="button" class="btn btn-warning" data-dismiss="modal">Cerrar</button>
                
    </form>
    </div>
    </div>
    </div>
    </div>  
    
    <div id="main-container">
    <table>
        
    <thead>
    <tr>
        <th>Puesto</th>
    </tr>
    </thead>
    <tbody id="tbl_puestos">
       <% 
        Puesto puesto = new Puesto();
        DefaultTableModel tabla = new DefaultTableModel();
        tabla = puesto.leer();
        for (int t=0;t<tabla.getRowCount();t++){
            out.println("<tr data-id=" + tabla.getValueAt(t,0) + ">");
            out.println("<td>" + tabla.getValueAt(t,1) + "</td>");
            out.println("</tr>");
        
        }
        %>
    </tbody>
    </table>
    <button type="button" name="btn_nuevo" id="btn_nuevo"  data-toggle="modal" data-target="#modal_puestos" onclick="limpiar()">Formulario</button>        
    </div>
    </div>
        
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <script>
        
     function limpiar(){
         $("#txt_id").val(0);
   $("#txt_puesto").val('');
     }   
        $('#tbl_puestos').on('click','tr td', function(evt){
   var target,id,puesto;
   
   target = $(event.target);
   id = target.parent().data('id');
   puesto= target.parents("tr").find("td").eq(0).html();
   
   $("#txt_id").val(id);
   $("#txt_puesto").val(puesto);
   $("#modal_puestos").modal('show');
   });
</script>
<%}else{
    response.sendRedirect("index.jsp");}
    }else{
    response.sendRedirect("login.jsp");}
%>
    </body>
</html>

