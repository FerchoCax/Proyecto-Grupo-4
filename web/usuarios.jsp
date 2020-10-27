<%-- 
    Document   : usuarios
    Created on : 23/10/2020, 12:40:39 PM
    Author     : ferch
--%>


<%@page import="javax.swing.table.DefaultTableModel"%>
<%@page import="modelo.Usuarios"%>
<%-- 
    Document   : index
    Created on : 5/10/2020, 02:46:55 PM
    Author     : ferch
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <link rel="shortcut icon" href="imagen/icono.png" type="image/x-icon">
        

        <title>Inicio</title>
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
        if(menu2.getUsuarios()==1){
        %>
        <%@include file="header.jsp" %>
        <div class="container">
        <h1>Permisos de los usuarios</h1>
        <form action="sr_usuarios" method="post" class="form-group"> 
        <table class="table table-striped">
        <thead>
        <tr>
            <th>ID</th>
            <th>Usuario</th>
            <th>Productos</th>
            <th>Marcas</th>
            <th>Empleados</th>
            <th>Puestos</th>
            <th>Clientes</th>
            <th>Proveedores</th>
            <th>Compras</th>
            <th>Ventas</th>
            <th>Usuarios</th>
        </tr>
        </thead>
        <tbody id="tbl_usuarioActual"></tbody>
        <tr>
            <td ><input type="text" name="txt_id" id="txt_id" class="form-control" value ="0" readonly>  </td>
            <td ><input type="text" name="txt_nombre" id="txt_nombre" class="form-control" >  </td>
            <td><select name="drop_productos" id="drop_productos" class="">
                    <option value="1">Activo</option>
                    <option value="0">Inactivo</option>
                </select></td>
            <td><select name="drop_marcas" id="drop_marcas" class="">
                    <option value="1">Activo</option>
                    <option value="0">Inactivo</option>
            </select></td> 
            <td><select name="drop_empleados" id="drop_empleados" class="">
                    <option value="1">Activo</option>
                    <option value="0">Inactivo</option>
            </select></td> 
            <td><select name="drop_puestos" id="drop_puestos" class="">
                    <option value="1">Activo</option>
                    <option value="0">Inactivo</option>
            </select></td>
            <td><select name="drop_clientes" id="drop_clientes" class="">
                    <option value="1">Activo</option>
                    <option value="0">Inactivo</option>
            </select></td> 
            <td><select name="drop_proveedores" id="drop_proveedores" class="">
                    <option value="1">Activo</option>
                    <option value="0">Inactivo</option>
            </select></td> 
            <td><select name="drop_compras" id="drop_compras" class="">
                    <option value="1">Activo</option>
                    <option value="0">Inactivo</option>
            </select></td> 
            <td><select name="drop_ventas" id="drop_ventas" class="">
                    <option value="1">Activo</option>
                    <option value="0">Inactivo</option>
            </select></td> 
            <td><select name="drop_usuarios" id="drop_usuarios" class="">
                    <option value="1">Activo</option>
                    <option value="0">Inactivo</option>
            </select></td> 
            
        </tr>
        </tbody>
        </table>  
            <button name="btn_modificar" id="btn_modificar" value="Modificar" class="btn btn-primary" >Modificar</button>  
              </form>
         <table class="table table-striped">
        <thead>
        <tr>
        <th>Usuario</th>
        <th>Productos</th>
        <th>Marcas</th>
        <th>Empleados</th>
        <th>Puestos</th>
        <th>Clientes</th>
        <th>Proveedores</th>
        <th>Compras</th>
        <th>Ventas</th>
        <th>Usuarios</th>
        <th>        </th>
        
      </tr>
    </thead>
    <tbody id="tbl_usuarios">
    <% 
        Usuarios usuario2 = new Usuarios();
        DefaultTableModel tabla = new DefaultTableModel();
        tabla = usuario2.leer();
        for (int t=0;t<tabla.getRowCount();t++){
            out.println("<tr data-id=" + tabla.getValueAt(t,0) + " data-pr="+tabla.getValueAt(t,2)+" data-m="+tabla.getValueAt(t,3)+" data-e="+tabla.getValueAt(t,4)+" data-pu="+tabla.getValueAt(t,5)+" data-c="+tabla.getValueAt(t,6)+" data-pro="+tabla.getValueAt(t,7)+" data-com="+tabla.getValueAt(t,8)+" data-ven="+tabla.getValueAt(t,9)+" data-u="+tabla.getValueAt(t,10)+">");
            out.println("<td>" + tabla.getValueAt(t,1) + "</td>");
                for(int l=2;l<11;l++){
                if(tabla.getValueAt(t,l).equals("1")){
                    out.println("<td ><input type='checkbox' checked disabled></td>");
                }else{
                    out.println("<td ><input type='checkbox'  disabled></td>");    
                }
                }
            
            out.println("</tr>");
            }    
               
         
        %>    
        </tbody>
        </table>    
        </div>
        <script>
        
   $('#tbl_usuarios').on('click','tr td', function(evt){
   var target,idUsuario,nombre,productos,marcas,empleados,puestos,clientes,proveedores,compras,ventas,usuarios;
  
   target = $(event.target);
   idUsuario =      target.parent().data('id');
   nombre =         target.parent("tr").find("td").eq(0).html();
   productos =      target.parent().data('pr');
   marcas =         target.parent().data('m');
   empleados =      target.parent().data('e');
   puestos =        target.parent().data('pu');
   clientes =       target.parent().data('c');
   proveedores =    target.parent().data('pro');
   compras =        target.parent().data('com');
   ventas =         target.parent().data('ven');
   usuarios =       target.parent().data('u');
  
   $("#drop_productos").val(productos);
   $("#txt_id").val(idUsuario);
   $("#txt_nombre").val(nombre);
   $("#drop_marcas").val(marcas);
   $("#drop_empleados").val(empleados);
   $("#drop_puestos").val(puestos);
   $("#drop_clientes").val(clientes);
   $("#drop_proveedores").val(proveedores);
   $("#drop_compras").val(compras);
   $("#drop_ventas").val(ventas);
   $("#drop_usuarios").val(usuarios);
   
   });
</script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
        <%}else{
    response.sendRedirect("index.jsp");}
            }else{
    response.sendRedirect("login.jsp");}
%>
    </body>
</html>

