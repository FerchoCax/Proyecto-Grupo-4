<%-- 
    Document   : VentasDetalle
    Created on : 20/10/2020, 14:15:06
    Author     : DanielRuiz
--%>

<%@page import="modelo.Cliente"%>
<%@page import="java.lang.String"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.VentasDetalle"%>
<%@page import="modelo.Producto"%>
<%@page import="modelo.Empleado"%>
<%@page import="modelo.Datos"%>
<%@page import="javax.swing.table.DefaultTableModel"%>
<%@page import="java.util.HashMap"%>
<%@page import="modelo.Ventas"%>
<%@page import="java.text.SimpleDateFormat"%>  
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <%
        HttpSession misession= (HttpSession) request.getSession();
        if(misession.getAttribute("inicio")=="iniciado"){
        HttpSession usuario= (HttpSession) request.getSession();
        String aux2 = (String)usuario.getAttribute("user2"); 
        Menu menu2 = new Menu();
        menu2.Pureba(aux2);
        if(menu2.getVentas()==1){
        %>
        
       <%@include file="header.jsp" %>
       
        <title>Ventas Detalle</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
         <link rel="stylesheet" href="estilo_formulario.css">
         <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet" />
         <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>
         <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css" rel="stylesheet" /> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>
         
    </head>
      <body>
                 <%@include file="clientes_ventas.jsp" %>
             
                 <%//action="sr_ventasdetalle" method="post"%>
                 <!-- --------------- Inicia formulario de ventas -------------- -->
                 <form action="sr_ventas" method="post">
                <button name="btn_pagar" id="btn_pagar"  value="Pagar" class="btn btn-success btn-lg">Terminar la compra</button>
                <br>
                     <label for="lbl_id_Ventas" Style="color: white;">ID Factura:</label>
                <%
                     Ventas venta= new Ventas();
                     venta.leer();
                     int idVenta=venta.getIdventa()+1;
                     out.println("<input type='text' name='txt_idVentas' id='txt_idVentas' class='form-control' value ='"+idVenta+"' readonly>");
                 %>
                <label for="lbl_nofactura"  Style="color: white;">No.Factura:</label>
                
                <%
                     out.println("<input type='text' name='txt_nofactura' id='txt_nofactura' class='form-control' value ='"+(venta.getNofactura()+1)+"' readonly>");
                 %>
                
                <label for="lbl_serie"  Style="color: white;">Serie:</label>
                
               
                <%
                     out.println("<input type='text' name='txt_serie' id='txt_serie' class='form-control' value ='"+venta.getSerie()+"' readonly>");
                 %>
                
                 <br>
                <label Style="color: white;">Fecha Factura:</label>
                <br>
                <%    
                SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");  
                Date date = new Date();  
               
                String fecha=  date.toString();
                out.println("<input type='text' name='fecha_factura' id='fecha_factura' value='"+fecha+"' class='form-control' readonly>");
                //System.out.println("<input type='date' name='fechaFactura' id='fechaFactura' value="+date+" class='form-control' readonly>");
                
                %>
                 <input type="text" Style="display:none;"  name="txt_idCliente" id="txt_idCliente" class="form-control" readonly>
                 <input type="text" Style="display:none;"  name="txt_idEmpleado" id="txt_idEmpleado" class="form-control" readonly>
                 </form>
                 <br>
                 <!-- --------------- Finaliza formulario de ventas -------------- -->
                 
                 
                 <!-- --------------- Inicia formulario de los clientes -------------- -->
                <form method="post">
                <label for="lbl_idcliente"  Style="color: white;">Nit:</label>
                
                <select class="SelectClientes" id="drop_clientes1" name="drop_clientes1" >
        <% 
                         Ventas ventas=new Ventas();
                        HashMap<String,String> dropclientes = ventas.ListaC();
                        out.println("<option value='0'>Seleccione</option>");
                         for (String i:dropclientes.keySet()){
                             out.println("<option value='" + i + "'>" + dropclientes.get(i) +"</option>");
                         }
                    %>
                </select>
                 
                <select Style="display:none;" class="SelectClientesI" id="drop_clientesI" name="drop_clientesI" >
        <%
            HashMap<String,String> dropclientesI = ventas.ListaCI();
                        out.println("<option value='0'>Seleccione</option>");
                         for (String i:dropclientesI.keySet()){
                             out.println("<option value='" + i + "'>" + dropclientesI.get(i) +"</option>");
                         }
                    %>
                </select>
                
                <button type="button" name="btn_nuevo" id="btn_nuevo" data-toggle="modal" data-target="#modal_clientes" >Crear Cliente</button>
                <br>
                <br><label Style="color: white;">Nombre Cliente:</label>
                <br>
                <input type="text"  name="text_nombreC" id="txt_nombreC" class="form-control"  required readonly>
               
      </form>    
                
                <!-- --------------- Finaliza formulario de Clientes -------------- -->
                
                <br>
                <label for="lbl_idempleado" Style="color: white;">Empleado:</label>
                <br>
                 <select name="drop_empleados" class="selectEmpleado" id="drop_empleados" >
                <%
                        Empleado empleado=new Empleado();
                        HashMap<String,String> dropempleados = empleado.ListaEmpleados();
                        out.println("<option value='0'>Seleccione</option>");
                         for (String i:dropempleados.keySet()){
                             out.println("<option value='" + i + "'>" + dropempleados.get(i) +"</option>");
                         }
                %>
                 </select>
                  <br>
                
                <br>
                <!-- --------------- Inicia formulario de ventasDetalle -------------- -->
                <form>
                <label for="lbl_Producto" Style="color: white;"><b>Producto</b></label>
                    
                <select name="drop_producto" id="drop_producto" class="form-control">
                <%
                Producto producto=new Producto();
                HashMap<String,String> dropproductos = producto.ListaProductos();
                out.println("<option value='0'>Seleccione</option>");
                  
                  for (String i:dropproductos.keySet()){
                    out.println("<option value='" + i + "'>" + dropproductos.get(i) +"</option>");
                    
                }
                   %>
                   </select>
                    <label for="lbl_PrecioUnitario"  Style="color: white;"><b>Precio Unitario</b></label>
                    <select name="drop_precio" Style="display:none;" id="drop_precio" class="form-control" disabled>
                <%
                HashMap<String,String> dropPrecio = producto.PrescioVenta();
                out.println("<option value='0'>0.00</option>");
                  for (String i:dropPrecio.keySet()){
                    out.println("<option value='" + i + "'><p name='txt_precio'>" + dropPrecio.get(i) +"<P></option>");
                    
                }
                %>
                 </select>
                 <input type="text"  name="txt_precio" id="txt_precio" class="form-control"  required readonly>
                <br>
                <label for="lbl_Cantidad" Style="color: white;" ><b>Cantidad</b></label>
                <input type="number"  name="txt_cantidad" id="txt_cantidad" class="form-control"  required>
                <br>
                <br>
                <button name="btn_agregar" id="btn_agregar"  value="agregar" class="btn btn-success btn-lg">Agregar</button>
                
      
              <br>
              <br>
             
       </form>   
                 
                 <!-- --------------- Finaliza formulario de ventasDetalle -------------- -->
                 
                 <!-- --------------- Tabla Ventas detalle -------------- -->
                <%
              if("agregar".equals(request.getParameter("btn_agregar"))){
                   Producto prod = new Producto();
                    DefaultTableModel tabla = new DefaultTableModel();
                    tabla = prod.agregarProducto(Integer.valueOf(request.getParameter("drop_producto")));
                    for (int t=0;t<tabla.getRowCount();t++){
                    VentasDetalle ventaD= new VentasDetalle();
                    String str1 = (String) tabla.getValueAt(t,1);
                    String str2 = (String) tabla.getValueAt(t,2);
                    String str3 = (String) tabla.getValueAt(t,3);
                    ventaD.setProducto(str1);
                    ventaD.setCantidad(Integer.valueOf(request.getParameter("txt_cantidad")));
                    ventaD.setMarca(str2);
                    double r = Double.valueOf(str3);
                    ventaD.setPrecio_venta(r);
                    double Sub=(Integer.valueOf(request.getParameter("txt_cantidad"))*(Double.valueOf(request.getParameter("txt_precio"))));
                    ventaD.setSubtotal(Sub);
                    ventaD.setidVenta(idVenta);
                    Datos.listador.add(ventaD);
                }
                }  
                %>
                 <table>
                <thead>
                    <tr>
                        <th>Cantidad</th>
                        <th>Producto</th>
                        <th>Marca</th>
                        <th>Precio Unitario</th>
                        <th>SubTotal</th>
                       
                    </tr>
                </thead>
                <tbody id="tbl_ventasDetalle">
                    <%
                    for(VentasDetalle ventasD : Datos.listador){
                         out.println("<tr>");
                        out.println("<td>" + ventasD.getCantidad() + "</td>");
                        out.println("<td>" + ventasD.getProducto() + "</td>");
                        out.println("<td>" + ventasD.getMarca() + "</td>");
                        out.println("<td>" + ventasD.getPrecio_venta() + "</td>"); 
                        out.println("<td>" + ventasD.getSubtotal() + "</td>"); 
                        out.println("</tr>");
                    }
                    %>
                </tbody>
                <tfoot>

    <tr>
        <th></th>
        <th></th>
        <th></th>
      <th>Total</th>
      <%
            double Total=0;
            for(VentasDetalle ventasD : Datos.listador) {
            Total = Total + ventasD.getSubtotal();
            }
            out.println("<th>"+Total+"</th>");
      %>
      

    </tr>

  </tfoot>
  
  <!-- --------------- Finaliza tabla ventasDetalle -------------- -->
            </table>
                 
                <br>
            <br>
            <%out.println("<h1 Style='color: white;'>"+Datos.listador.size()+"</h1>");%>
                 
              <script type="text/javascript">
           $("select[name=drop_producto]").change(function(){
            
           $('select[name=drop_precio]').val($(this).val());
           var combo = document.getElementById("drop_precio");
            var selected = combo.options[combo.selectedIndex].text;
            document.getElementById("txt_precio").value = selected;
        //('input[name=txt_precio]').val($(this).val(selected));
            });
            
            $("select[name=drop_clientes1]").change(function(){
            var combo = document.getElementById("drop_clientes1");
            var selected = combo.options[combo.selectedIndex].value;
            document.getElementById("txt_nombreC").value = selected;
            $('select[name=drop_clientesI]').val($(this).val());
            var combo2 = document.getElementById("drop_clientesI");
            var selected2 = combo2.options[combo2.selectedIndex].text;
            document.getElementById("txt_idCliente").value = selected2;
            });
            
            $("select[name=drop_empleados]").change(function(){
            
           $('select[name=drop_empleados]').val($(this).val());
           var combo3 = document.getElementById("drop_empleados");
            var selected3 = combo3.options[combo3.selectedIndex].value;
            document.getElementById("txt_idEmpleado").value = selected3;
        //('input[name=txt_precio]').val($(this).val(selected));
            });
           </script>
           
        <script>
        $(document).ready(function () {
            
            $("#myInput").on("keyup", function () {
                var value = $(this).val().toLowerCase();
                $("#tbl_ventasDetalle tr").filter(function () {
                    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
                });
            });
        });
    </script>
    <script>
       $(document).ready(function() {
    $('.SelectClientes').select2();
}); 
$(document).ready(function() {
    $('.selectEmpleado').select2();
}); 
    </script>
    </body>
</html>
<%}else{
        response.sendRedirect("index.jsp");}
            }else{
        response.sendRedirect("login.jsp");}

%>