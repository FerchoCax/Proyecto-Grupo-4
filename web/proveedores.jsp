<%-- 
    Document   : proveedores
    Created on : 5/10/2020, 10:41:54 AM
    Author     : AlekeyJr
--%>

<%@page import="modelo.Proveedores" %>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.swing.table.DefaultTableModel"%>
<%@page import="javax.swing.table.DefaultTableModel"%>
<%@page import="javax.servlet.http.HttpSession"%>

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
                
                <label for="lbl_idproveedor"><b>Id Proveedor:</b></label>
                <input type="text" name="txt_idproveedor" id="txt_idproveedor" class="form-control" value ="0" readonly>  
                <br> 
                <label for="lbl_proveedor"><b>Proveedor:</b></label>
                <input type="text" name="txt_proveedor" id="txt_proveedor" class="form-control" placeholder="Nombre Proveedor" required>
               <br>
                <label for="lbl_nit"><b>Nit:</b></label>
                <input type="text" name="txt_nit" id="txt_nit" class="form-control" placeholder="Nit 12345678" required>  
                <br>
                <label for="lbl_direccion"><b>Direccion:</b></label>
                <input type="text" name="txt_direccion" id="txt_direccion" class="form-control" placeholder="Ejemplo: # CASA CALLE ZONA CIUDAD" required>
                <br>
                <label for="lbl_telefono"><b>Telefono:</b></label>
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
            
          
                
            <div id="main-container">   
            <table>
    <thead>
        <tr>
        <th>Proveedor</th>
        <th>Nit</th>
        <th>Direccion</th>
        <th>Telefono</th>
        
      </tr>
    </thead>
    <tbody id="tbl_proveedores">
        <% 
        Proveedores proveedor = new Proveedores();
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
    <button type="button" name="btn_nuevo" id="btn_nuevo"  data-toggle="modal" data-target="#modal_proveedores" onclick="limpiar()">Nuevo</button>

        </div>
        
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <script>
        
     function limpiar(){
   $("#txt_idproveedor").val(0);
   $("#txt_proveedor").val('');
   $("#txt_nit").val('');
   $("#txt_direccion").val('');
   $("#txt_telefono").val('');
     }   
   $('#tbl_proveedores').on('click','tr td', function(evt){
   var target,idproveedores,proveedor,nit,direccion,telefono;
   
   target = $(event.target);
   idproveedores = target.parent().data('id');
   proveedor = target.parent("tr").find("td").eq(0).html();
   nit=        target.parent("tr").find("td").eq(1).html();
   direccion=  target.parent("tr").find("td").eq(2).html();
   telefono=   target.parent("tr").find("td").eq(3).html();
   
   $("#txt_idproveedor").val(idproveedores);
   $("#txt_proveedor").val(proveedor);
   $("#txt_nit").val(nit);
   $("#txt_direccion").val(direccion);
   $("#txt_telefono").val(telefono);
   $("#modal_proveedores").modal('show');
});
</script>
<%}else{
    response.sendRedirect("index.jsp");}
    }else{
    response.sendRedirect("login.jsp");}
%>
    </body>
</html>