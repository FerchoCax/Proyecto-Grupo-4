<%-- 
    Document   : puestos
    Created on : 3/10/2020, 07:47:15 PM
    Author     : Kim
--%>

<%@page import="javax.swing.table.DefaultTableModel"%>
<%@page import="modelo.Empleado"%>
<%@page import="modelo.Puesto"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Puestos</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    </head>
    <body>
        <h1>FORMULARIO PUESTOS</h1>
        <button type="button" name="btn_nuevo" id="btn_nuevo" class="btn btn-info btn-lg" data-toggle="modal" data-target="#modal_puestos" onclick="limpiar()">Nuevo</button>
        <a href="index.jsp" class="btn btn-info btn-lg" role="button" >Empleados</a>
        
        <div class="container">
        <div class="modal fade" id="modal_puestos" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-body">
            <form action="sr_puesto" method="post" class="form-group">
                
                <label for="lbl_id"><b>Id:</b></label>
                <input type="text" name="txt_id" id="txt_id" class="form-control" value ="0" readonly>  
                  
                <label for="lbl_puesto"><b>Puesto:</b></label>
                <input type="text" name="txt_puesto" id="txt_puesto" class="form-control" required>
               
                <br>
             
                <input type="submit" class="btn btn-primary" name="btn_agregar" id="btn_agregar" value="agregar" >
                <input type="submit" class="btn btn-success" name="btn_modificar" id="btn_modificar" value="modificar">
                <input type="submit" class="btn btn-danger" name="btn_eliminar" id="btn_eliminar" value="eliminar"onclick="javascript:if(!confirm('¿Desea Eliminar?'))return false">
                <button type="button" class="btn btn-warning" data-dismiss="modal">Cerrar</button>
                
               
            </form>
        </div>
      </div>
      
    </div>
  </div>  
            
          
                
                
            <table class="table table-striped">
    <thead>
        <tr>
        <th>Puesto</th>
      </tr>
    </thead>
    <tbody id="tbl_puestos">
       <% 
        Puesto puesto = new Puesto();
        DefaultTableModel tabla = new DefaultTableModel();
        tabla = puesto.leer();
        for (int t=0;t<tabla.getRowCount();t++){
            out.println("<tr data-id=" + tabla.getValueAt(t,0) + ">");
            out.println("<td>" + tabla.getValueAt(t,1) + "</td>");
            out.println("</tr>");
        
        }
        %>
    </tbody>
  </table>
        </div>
        
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <script>
        
     function limpiar(){
         $("#txt_id").val(0);
   $("#txt_puesto").val('');
     }   
        $('#tbl_puestos').on('click','tr td', function(evt){
   var target,id,puesto;
   
   target = $(event.target);
   id = target.parent().data('id');
   puesto= target.parents("tr").find("td").eq(0).html();
   
   $("#txt_id").val(id);
   $("#txt_puesto").val(puesto);
   $("#modal_puestos").modal('show');
});
</script>
    </body>
</html>

