<%-- 
    Document   : clientes
    Created on : 8/10/2020, 02:30:47 PM
    Author     : Mélida Pérez
--%>

<%@page import="javax.swing.table.DefaultTableModel"%>
<%@page import="modelo.Cliente"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<%@include file="header.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CLIENTES</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <h1>FORMULARIO CLIENTES</h1>
        </div>
        <div class="container"> 
            <form action="sr_cliente" method="post" class="formg-roup">
                
                <label for="lbl_id">ID:</label>
                <input type="text" name="txt_id" id="txt_id" class="form-control" value="0" readonly>
                <br>
                <label for="lbl_nombres">Nombres:</label>
                <input type="text" name="txt_nombres" id="txt_nombres" class="form-control" placeholder="Ejemplo: nombre1 nombre2" required>
                <br>
                <label for="lbl_apellidos">Aprellidos:</label>
                <input type="text" name="txt_apellidos" id="txt_apellidos" class="form-control" placeholder=" Ejemplo: apellido1 apellido2" required>
                <br>
                <label for="lbl_nit">NIT:</label>
                <input type="text" name="txt_nit" id="txt_nit" class="form-control" placeholder="Ejemplo: 1750519-4" required>
                <br>
                <label for="lbl_genero">Genero:</label>
                <input type="text"  name="txt_genero" id="txt_genero" class="form-control" placeholder="Ejemplo: 0 " required>
                <br>
                <label for="lbl_telefono">Telefono:</label>
                <input type="number" name="txt_telefono" id="txt_telefono" class="form-control" placeholder="Ejemplo: 12345678" required>
                <br>
                <label for="lbl_correo">Correo electronico:</label>
                <input type="text" name="txt_correo" id="txt_correo" class="form-control" placeholder="Ejemplo: correo_ejemplo@gmail.com" required >
                <br>
                <label for="lbl_fechaingreso">Fecha de ingreso:</label>
                <input type="date" name="txt_fechaingreso" id="txt_fechaingreso" class="form-control" required >
                <br>
            <button name="btn_agregar" id="btn_agregar" value="agregar" class="btn btn-primary" >Agregar</button>  
            <button name="btn_modificar" id="btn_modificar" value="modificar" class="btn btn-success" >Modificar</button>  
            <button name="btn_eliminar" id="btn_eliminar" value="eliminar" class="btn btn-danger" >Eliminar</button> 
            </br>
            </form> 
            </br>

            <table class="table table-striped">
    <thead>
      <tr>
        <th>Nombres</th>
        <th>Apellidos</th>
        <th>Nit</th>
        <th>Genero</th>
        <th>Telefono</th>
        <th>Correo electronico</th>
        <th>Fecha de ingreso</th>
      </tr>
    </thead>
    <tbody id="tbl_clientes">
        <% 
        Cliente cliente = new Cliente();
        DefaultTableModel tabla = new DefaultTableModel();
        tabla = cliente.leer();
        for (int t=0;t<tabla.getRowCount();t++){
            out.println("<tr data-id=" + tabla.getValueAt(t,0) + ">");
            out.println("<td>" + tabla.getValueAt(t,1) + "</td>");
            out.println("<td>" + tabla.getValueAt(t,2) + "</td>");
            out.println("<td>" + tabla.getValueAt(t,3) + "</td>");
            out.println("<td>" + tabla.getValueAt(t,4) + "</td>");
            out.println("<td>" + tabla.getValueAt(t,5) + "</td>");
            out.println("<td>" + tabla.getValueAt(t,6) + "</td>");
            out.println("<td>" + tabla.getValueAt(t,7) + "</td>");
       
            out.println("</tr>");
        }
        %>
      
    </tbody>
    </table>    
        </div>
        
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
      
        <script>
           $('#tbl_clientes').on('click','tr td', function(evt){
   var target,id,nombres,apellidos,nit,genero,telefono,correo, fechaingreso;
   
   target = $(event.target);
   id= target.parent().data('id');
   nombres = target.parents("tr").find("td").eq(0).html();
   apellidos = target.parents("tr").find("td").eq(1).html();
   nit = target.parents("tr").find("td").eq(2).html();
   genero = target.parents("tr").find("td").eq(3).html();
   telefono = target.parents("tr").find("td").eq(4).html();
   correo = target.parents("tr").find("td").eq(5).html();
   fechaingreso = target.parents("tr").find("td").eq(6).html();
   
   $("#txt_id").val(id);
   $("#txt_nombres").val(nombres);
   $("#txt_apellidos").val(apellidos);
   $("#txt_nit").val(nit);
   $("#txt_genero").val(genero);
   $("#txt_telefono").val(telefono);
   $("#txt_correo").val(correo);
   $("#txt_fechaingreso").val(fechaingreso);
   
   
});
</script>
   
    </body>
</html>

