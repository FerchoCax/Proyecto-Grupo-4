<%-- 
    Document   : productos
    Created on : 5/10/2020, 02:47:45 PM
    Author     : ferperez
--%>
<%@page import="modelo.marcas" %>
<%@page import="modelo.producto" %>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.swing.table.DefaultTableModel"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
    <h1>productos</h1>
    <div class="container">
        <form action="sr_productos" method="post" class="form-group"> 
            <label for="lbl_idproducto"><b>id producto:</b></label>
            <input type="text" name="txt_idproductos" id="txt_idproducto"  class="form-control" placeholder=" idprodcto" required>
            <br> 
            <label for="lbl_producto"><b>producto:</b></label>
            <input type="text" name="txt_producto" id="txt_producto"  class="form-control" placeholder=" producto" required>
            <br> 
            <label for="lbl_producto"><b>id marca:</b></label>
            <select name="drop_marca" id="drop_marca" class="form-control">
                 
                   
                    
                    <%
                        marcas marca = new marcas();
                        HashMap<String,String> drop = marca.drop_marca();
                        for(String i: drop.keySet()){
                            out.println("<option value='"+ i +"'>"+ drop.get(i) +" </option>");
                        }
                            
                     %>   
                    
                </select>
            
            <br> 
            <label for="lbl_descripcion"><b>descripcion:</b></label>
            <input type="text" name="txt_descripcion" id="txt_descripcion"  class="form-control" placeholder=" descripcion" required>
            <br> 
            <label for="lbl_imagen"><b>imagen:</b></label>
            <input type="text" name="txt_imagen" id="txt_imagen"  class="form-control" placeholder=" imagen" required>
            <br> 
            <label for="lbl_precio_costo"><b>precio_costo:</b></label>
            <input type="text" name="txt_precio_costo" id="txt_precio_costo"  class="form-control" placeholder=" precio_costo" required>
            <br> 
            <label for="lbl_precio_venta"><b>precio_venta:</b></label>
            <input type="text" name="txt_precio_venta" id="txt_precio_venta"  class="form-control" placeholder=" precio_venta" required>
            <br> 
            <label for="lbl_existencial"><b>existencia:</b></label>
            <input type="text" name="txt_existencial" id="txt_existencia"  class="form-control" placeholder=" existencial" required>
            <br> 
            <label for="lbl_fecha_ingreso"><b>fecha_ingreso:</b></label>
            <input type="date" name="txt_fecha_ingregeso" id="txt_fecha_ingreso"  class="form-control" placeholder=" fecha_ingreso" required>
             
            
            <br>
            <button  name="btn_agregar" id="btn_agregar"  value="agregar" class="btn btn-primary">agregar</button>
             <button name="btn_modificar" id="btn_modificar" value="modificar" class="btn btn-primary" >Modificar</button>  
              <button name="btn_eliminar" id="btn_eliminar" value="eliminar" class="btn btn-primary" >Eliminar</button>       
        </form>
                     <table class="table table-striped">
                      <thead>
      <tr>
        <th>idProducto</th>
          <th>Producto</th>
          <th>idmarca</th>
        <th>Descripcion</th>
        <th>imagen</th>
        <th>Precio Costo</th>
        <th>Precio Venta</th>
        <th>Existencia</th>
        <th>fecha ingreso</th>
        <th>Marca</th>
      </tr>
    </thead>
    <tbody id="tbl_productos">
    <% 
        producto producto = new producto();
        DefaultTableModel tabla = new DefaultTableModel();
        tabla = producto.leer();
        for (int t=0;t<tabla.getRowCount();t++){
            out.println("<tr data-id=" + tabla.getValueAt(t,0) + " data-id_m=" + tabla.getValueAt(t,9) + ">");
            out.println("<td>" + tabla.getValueAt(t,1) + "</td>");
            out.println("<td>" + tabla.getValueAt(t,2) + "</td>");
            out.println("<td>" + tabla.getValueAt(t,3) + "</td>");
            out.println("<td>" + tabla.getValueAt(t,4) + "</td>");
            out.println("<td>" + tabla.getValueAt(t,5) + "</td>");
            out.println("<td>" + tabla.getValueAt(t,6) + "</td>");
            out.println("<td>" + tabla.getValueAt(t,7) + "</td>");
            out.println("<td>" + tabla.getValueAt(t,8) + "</td>");
            out.println("<td>" + tabla.getValueAt(t,9) + "</td>");
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
          $('#tbl_productos').on('click','tr td',function(evt){
        var target,idproducto,producto,idmarca,descripcion,imagen,precio_costo,precio_venta,existencia,fecha_ingreso,marca;
   
   target = $(event.target);
   idprodctos= target.parent().data('id');
   producto = target.parents("tr").find("td").eq(0).html();
   idmarca=target.parent().data('id_marca');
   descripcion= target.parents("tr").find("td").eq(1).html();
   imagen = target.parents("tr").find("td").eq(2).html();
   precio_costo= target.parents("tr").find("td").eq(3).html();
   precio_venta= target.parents("tr").find("td").eq(4).html();
   existencia= target.parents("tr").find("td").eq(4).html();
   fecha_ingreso= target.parents("tr").find("td").eq(6).html();
   marca= target.parents("tr").find("td").eq(7).html();
   
   $("#txt_idproductos").val(idproductos);
   $("#txt_producto").val(producto);
   $("#txt_idmarcas").val(idmarcas);
   $("#txt_descripcion").val(descripcion);
   $("#txt_imagen").val(imagen);
   $("#txt_precio_costo").val(precio_costo);
   $("#txt_precio_venta").val(precio_venta);
   $("#txt_existencia").val(existencia);
   $("#txt_fecha_ingreso").val(fecha:ingreso);
   $("#drop_marca").val(id_m);
          
          
    
    
    } ); 
            
        </script>
    </body>
</html>
