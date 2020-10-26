<%-- 
    Document   : productos
    Created on : 5/10/2020, 02:47:45 PM
    Author     : ferperez
--%>
<%@page import="modelo.Marcas" %>
<%@page import="modelo.Producto" %>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.swing.table.DefaultTableModel"%>
<%@page import="javax.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <link rel="shortcut icon" href="imagen/icono.png" type="image/x-icon">
         <title>Productos</title>
                      <link rel="stylesheet" href="estilo_formulario.css">

    </head>
    
    <body>
       
        <%
        HttpSession misession= (HttpSession) request.getSession();
        if(misession.getAttribute("inicio")=="iniciado"){
        HttpSession usuario= (HttpSession) request.getSession();
        String aux2 = (String)usuario.getAttribute("user2"); 
        Menu menu2 = new Menu();
        menu2.Pureba(aux2);
        if(menu2.getProductos()==1){
        %>
        
        <%@include file="header.jsp" %>
    

        <div class="container">
        <div class="modal fade" id="modal_producto" role="dialog">
        <div class="modal-dialog">
        <div class="modal-content">
        <div class="modal-body">
        
        <form action="sr_productos" method="post" class="form-group"> 
           
            <label for="lbl_idproducto"><b>Id:</b></label>
            <input type="text" name="txt_idproducto" id="txt_idproducto"  class="form-control" placeholder="0" required>
            <br>
            <label for="lbl_producto"><b>Producto:</b></label>
            <input type="text" name="txt_producto" id="txt_producto"  class="form-control" placeholder="" required>
            <br>
            <label for="lbl_producto"><b>Marca:</b></label>
            <select name="drop_marca" id="drop_marca" class="form-control">
                <%
                    Marcas marca = new Marcas();
                    HashMap<String,String> drop = marca.drop_marca();
                    for(String i: drop.keySet()){
                            out.println("<option value='"+ i +"'>"+ drop.get(i) +" </option>");
                    }
                %>   
                    
            </select>
                <br>
            <label for="lbl_descripcion"><b>Descripcion:</b></label>
            <input type="text" name="txt_descripcion" id="txt_descripcion"  class="form-control" placeholder="" required>
            <br>
            <label for="lbl_imagen"><b>Imagen:</b></label> 
            <input type="File" name="txt_imagen" id="txt_imagen"  required>
            <br>
            <label for="lbl_precio_costo"><b>Precio costo:</b></label>
            <input type="number" step="0.01" name="txt_precio_costo" id="txt_precio_costo"  class="form-control" placeholder="0.00" required>
            <br>
            <label for="lbl_precio_venta"><b>Precio venta:</b></label>
            <input type="number" step="0.01" name="txt_precio_venta" id="txt_precio_venta"  class="form-control" placeholder="0.00" required>
            <br>
            <label for="lbl_existencial"><b>Existencia:</b></label>
            <input type="number" name="txt_existencia" id="txt_existencia"  class="form-control" placeholder="0" required>
            <br>
            <label for="lbl_fecha_ingreso"><b>Fecha de ingreso:</b></label>
            <input type="date" name="txt_fecha_ingreso" id="txt_fecha_ingreso" class="form-control" required>
            
            <br>
            
            <button  name="btn_agregar" id="btn_agregar"  value="Agregar"  class="btn btn-warning">agregar</button>
            <button name="btn_modificar" id="btn_modificar" value="Modificar" class="btn btn-warning" >Modificar</button>  
            <button name="btn_eliminar" id="btn_eliminar" value="Eliminar"  class="btn btn-warning" >Eliminar</button>       
            <button type="button" class="btn btn-warning" data-dismiss="modal">Cerrar</button>

        </form>
    </div>
    </div>
    </div>
    </div>
                
    <div id="main-container-empleados">                
    <table >
    <thead>
    <tr>
        <th>Marca</th>
        <th>Producto</th>
        <th>Descripcion</th>
        <th>imagen</th>
        <th>Precio Costo</th>
        <th>Precio Venta</th>
        <th>Existencia</th>
        <th>fecha ingreso</th>
        
    </tr>
    </thead>
    <tbody id="tbl_productos">
    <% 
        Producto producto = new Producto();
        DefaultTableModel tabla = new DefaultTableModel();
        tabla = producto.leer();
        for (int t=0;t<tabla.getRowCount();t++){
            out.println("<tr data-id=" + tabla.getValueAt(t,0) + " data-id_m=" + tabla.getValueAt(t,9) + ">");
            out.println("<td>" + tabla.getValueAt(t,8) + "</td>");
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
            <button type="button" name="btn_nuevo" id="btn_nuevo"  data-toggle="modal" data-target="#modal_producto" onclick="limpiar()">Nuevo</button>

     </div>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script> 
    
    <script>
        function limpiar(){
            $("#txt_idproducto").val(0);
            $("#txt_producto").val('');
            $("#drop_marca").val(1);
            $("#txt_descripcion").val('');
           // $("#txt_imagen").val('');
            $("#txt_precio_costo").val('');
            $("#txt_precio_venta").val('');
            $("#txt_existencia").val('');
            $("#txt_fecha_ingreso").val('');}  

        $('#tbl_productos').on('click','tr td', function(evt){
        var target,id,id_m,producto,descripcion,precio_costo,precio_venta,existencia,fecha_ingreso;
   
        target = $(event.target)
        id = target.parent().data('id');
        id_m = target.parent().data('id_m');
        producto= target.parents("tr").find("td").eq(0).html();
        descripcion= target.parents("tr").find("td").eq(1).html();
        //imagen= target.parents("tr").find("td").eq(2).html();
        precio_costo= target.parents("tr").find("td").eq(3).html();
        precio_venta= target.parents("tr").find("td").eq(4).html();
        existencia= target.parents("tr").find("td").eq(5).html();
        fecha_ingreso= target.parents("tr").find("td").eq(6).html();

        $("#txt_idproducto").val(id);
        $("#txt_producto").val(producto);
        $("#txt_descripcion").val(descripcion);
        //$("#txt_imagen").val(imagen);
        $("#txt_precio_costo").val(precio_costo);
        $("#txt_precio_venta").val(precio_venta);
        $("#txt_existencia").val(existencia);
        $("#txt_fecha_ingreso").val(fecha_ingreso);
        $("#drop_marca").val(id_marcas);
        $("#modal_producto").modal('show');

    });
    </script>
    
    <%}else{
        response.sendRedirect("index.jsp");}
            }else{
        response.sendRedirect("login.jsp");}
    %>
    </body>
</html>