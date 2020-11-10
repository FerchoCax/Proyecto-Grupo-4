<%-- 
    Document   : proveedores_compras
    Created on : 9/11/2020, 09:34:07 PM
    Author     : Kim
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Empleados</title>
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
        if(menu2.getProveedores()==1){
        %>
        <%@include file="header.jsp" %>
       <br>
        
        <div class="container">
        <div class="modal fade" id="modal_proveedores" role="dialog">
        <div class="modal-dialog">
    
        <!-- Modal content-->
        <div class="modal-content">
        <div class="modal-body">
            <form action="sr_provedores" method="post" class="form-group">
                
                <label for="lbl_idproveedor"><b>ID</b></label>
                <input type="text" name="txt_idproveedor" id="txt_idproveedor" class="form-control" value ="0" readonly>  
                <br> 
                <label for="lbl_proveedor"><b>Proveedor</b></label>
                <input type="text" name="txt_proveedor" id="txt_proveedor" class="form-control" placeholder="Nombre Proveedor" required>
               <br>
                <label for="lbl_nit"><b>NIT</b></label>
                <input type="text" name="txt_nit" id="txt_nit" class="form-control" placeholder="Nit 12345678" required>  
                <br>
                <label for="lbl_direccion"><b>Dirección</b></label>
                <input type="text" name="txt_direccion" id="txt_direccion" class="form-control" placeholder="Ejemplo: # CASA CALLE ZONA CIUDAD" required>
                <br>
                <label for="lbl_telefono"><b>Telefono</b></label>
                <input type="number" name="txt_telefono" id="txt_telefono" class="form-control" placeholder="Ejemplo:55555555" required>  
                
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
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
          
    </body>
</html>
