<%-- 
    Document   : index
    Created on : 07-oct-2020, 22:09:01
    Author     : hp
--%>

<%@page import="modelo.Marcas"%>  
<%@page import="java.util.HashMap"%> 
<%@page import="javax.swing.table.DefaultTableModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="header.jsp" %>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
    <title>bienvenido </title>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    </head>
    <body>
        
        <h1>Marcas</h1>
        <div class="container">
            <form
                <form action="sr_marca" method="post" class="form-group"> 
                <label for="lbl_idmarca"><b>id marca:</b></label>
                <input type="number" name="txt_idmarca" id="txt_idmarca"  class="form-control" readonly>
                <br> 
                <label for="lbl_marca"><b>marca:</b></label>
                <input type="text" name="txt_marca" id="txt_marca"  class="form-control" placeholder="marca" required>
                <br> 
             <button  name="btn_agregar" id="btn_agregar" value="agregar" class="btn btn-primary">agregar</button>
             <button  name="btn_modificar" id="btn_modificar" value="modificar" class="btn btn-primary">Modificar</button>
             <button  name="btn_eliminar" id="btn_eliminar" value="eliminar" class="btn btn-primary">Eliminar</button>
            
            </form>   
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
                    
                    
                    
                </table>
        </div>
        
        
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
        <script>
        function limpiar(){
         $("#txt_id").val(0);
   $("#txt_puesto").val('');
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
    </body>
</html>
