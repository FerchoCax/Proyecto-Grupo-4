<%-- 
    Document   : index
    Created on : 07-oct-2020, 22:09:01
    Author     : hp
--%>

<%@page import="modelo.Marcas"%>  
<%@page import="java.util.HashMap"%> 
<%@page import="javax.swing.table.DefaultTableModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">   
    <title>Marcas</title>
    <link rel="shortcut icon" href="imagen/icono.png" type="image/x-icon">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    </head>
    
    <%
        HttpSession misession= (HttpSession) request.getSession();
        if(misession.getAttribute("inicio")=="iniciado"){
        //out.println("Hola")
        HttpSession usuario= (HttpSession) request.getSession();
        String aux2 = (String)usuario.getAttribute("user2"); 
        Menu menu2 = new Menu();
        menu2.Pureba(aux2);
        if(menu2.getMarcas()==1){
        %>
    
        <%@include file="header.jsp" %>
    
    <body>
        
    <h1>Formulario marcas</h1>
    <button type="button" name="btn_nuevo" id="btn_nuevo" class="btn btn-info btn-lg" data-toggle="modal" data-target="#modal_marcas" onclick="limpiar()">Nuevo</button>       
    <div class="container">
    <div class="modal fade" id="modal_marcas" role="dialog">
    <div class="modal-dialog">
    <div class="modal-content">
    <div class="modal-body">
    <form action="sr_marca" method="post" class="form-group"> 
           
        <label for="lbl_idmarca"><b>id marca:</b></label>
        <input type="number" name="txt_idmarca" id="txt_idmarca"  class="form-control" readonly>
                 
        <label for="lbl_marca"><b>marca:</b></label>
        <input type="text" name="txt_marca" id="txt_marca"  class="form-control" placeholder="marca" required>
                
        <br> 
             
        <button  name="btn_agregar" id="btn_agregar" value="agregar" class="btn btn-primary">agregar</button>
        <button  name="btn_modificar" id="btn_modificar" value="modificar" class="btn btn-primary">Modificar</button>
        <button  name="btn_eliminar" id="btn_eliminar" value="eliminar" class="btn btn-primary">Eliminar</button>
        <button type="button" class="btn btn-warning" data-dismiss="modal">Cerrar</button>
   
    </form>  
    </div>
    </div>
    </div>
    </div>  
         
    <table class="table table-striped">
    <thead>
    <tr>
        <th>marca</th>
    </tr>
    </thead>
    <tbody id="tbl_marcas">
        <% 
        Marcas marcas = new Marcas();
        DefaultTableModel tabla = new DefaultTableModel();
        tabla = marcas.leer();
        for (int t=0;t<tabla.getRowCount();t++){
            out.println("<tr data-id=" + tabla.getValueAt(t,0) + ">");
            out.println("<td>" + tabla.getValueAt(t,1) + "</td>");
            out.println("</tr>");
        }
        %>    
    </tbody>
    </table>
    </div>
 
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    <script>
         function limpiar(){
             $("#txt_id").val(0);
             $("#txt_marca").val('');
     }   
        $('#tbl_marcas').on('click','tr td', function(evt){
        var target,id,marca;
   
        target = $(event.target);
        id = target.parent().data('id');
        marca= target.parents("tr").find("td").eq(0).html();
   
        $("#txt_idmarca").val(id);
        $("#txt_marca").val(marca);
        });
            
        </script>
        <%}else{
    response.sendRedirect("index.jsp");}
            }else{
    response.sendRedirect("login.jsp");}
%>
    </body>
</html>
