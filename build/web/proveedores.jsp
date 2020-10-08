<%-- 
    Document   : proveedores
    Created on : 5/10/2020, 10:41:54 AM
    Author     : AlekeyJr
--%>

<%@page import="modelo.proveedores" %>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.swing.table.DefaultTableModel"%>



<!DOCTYPE html>
<html>
    proveedores proveedor;
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>productos</title>
    </head>
    <body>
    <h1>productos</h1>
    <div class="container">
        <form action="sr_proveedores" method="post" class="form-group"> 
            <label for="lbl_idproveedor"><b>idproveedor:</b></label>
            <input type="text" name="txt_idproveedor" id="txt_idproveedor"  class="form-control" placeholder=" idprodcto" >
            <br> 
            <label for="lbl_proveedor"><b>proveedor:</b></label>
            <input type="text" name="txt_proveedor" id="txt_proveedor"  class="form-control" placeholder=" proveedor" required>
            <br> 
            <label for="lbl_nit"><b>nit:</b></label>
            <input type="text" name="txt_nit" id="txt_nit"  class="form-control" placeholder=" nit" required>
            <br> 
            <label for="lbl_direccion"><b>direccion:</b></label>
            <input type="text" name="txt_direccion" id="txt_direccion"  class="form-control" placeholder=" direccion" required>
            <br> 
            <label for="lbl_telefono"><b>telefono:</b></label>
            <input type="text" name="txt_telefono" id="txt_telefono"  class="form-control" placeholder=" telefono" >
            <br> 
            
            <button  name="btn_agregar" id="btn_agregar"  value="agregar" class="btn btn-primary">agregar</button>
             <button name="btn_modificar" id="btn_modificar" value="modificar" class="btn btn-primary" >Modificar</button>  
              <button name="btn_eliminar" id="btn_eliminar" value="eliminar" class="btn btn-primary" >Eliminar</button>       
        </form>
                     <table class="table table-striped">
                      <thead>
      <tr>
        <th>idProveedor</th>
        <th>Proveedor</th>
        <th>Nit</th>
        <th>Direccion</th>
        <th>Telefono</th>
        
      </tr>
    </thead>
    <tbody id="tbl_productos">
    <% 
        proveedores proveedor = new proveedores();
        DefaultTableModel tabla = new DefaultTableModel();
        tabla = proveedor.leer();
        for (int t=0;t<tabla.getRowCount();t++){
            out.println("<tr data-id=" + tabla.getValueAt(t,0) + ">");
            out.println("<td>" + tabla.getValueAt(t,1) + "</td>");
            out.println("<td>" + tabla.getValueAt(t,2) + "</td>");
            out.println("<td>" + tabla.getValueAt(t,3) + "</td>");
            out.println("<td>" + tabla.getValueAt(t,4) + "</td>");
            out.println("</tr>");
        }
        %>    
        </tbody>
        </table>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
        <script type="txt/javascript">
        $('#tbl_proveedores').on('click','tr td',function(evt){
        var target,idproveedor,proveedor,nit,direccion,telefono;
   
   target = $(event.target);
   idproveedor= target.parent().data('id');
   proveedor = target.parents("tr").find("td").eq(0).html();
   nit= target.parents("tr").find("td").eq(1).html();
   direccion= target.parents("tr").find("td").eq(2).html();
   telefono = target.parents("tr").find("td").eq(3).html();
   

   
   $("#txt_idproveedor").val(idproveedor);
   $("#txt_proveedor").val(proveedor);
   $("#txt_nit").val(idmarcas);
   $("#txt_direccion").val(direccion);
   $("#txt_telefono").val(telefono);
    } ); 
            
        </script>
    </body>
    
</html>

