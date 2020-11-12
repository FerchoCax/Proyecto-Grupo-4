<%-- 
    Document   : clientes_ventas
    Created on : 2/11/2020, 01:32:38 PM
    Author     : ferch
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <link rel="shortcut icon" href="imagen/icono.png" type="image/x-icon">
        <link rel="stylesheet" href="estilo_formulario.css">
    </head>
    <body>
        <div class="modal fade" id="modal_clientes" role="dialog">
        <div class="modal-dialog">
        <div class="modal-content">
        <div class="modal-body">
        <form action="sr_cliente_ventas" method="post" class="formg-roup">
                
            <label for="lbl_id"><b>ID:</b></label>
                <input type="text" name="txt_id" id="txt_id" class="form-control" value="0" readonly>
                <br>
                <label for="lbl_nombres"><b>Nombres:</b></label>
                <input type="text" name="txt_nombres" id="txt_nombres" class="form-control" placeholder="Ejemplo: nombre1 nombre2" required>
                <br>
                <label for="lbl_apellidos"><b>Apellidos:</b></label>
                <input type="text" name="txt_apellidos" id="txt_apellidos" class="form-control" placeholder=" Ejemplo: apellido1 apellido2" required>
                <br>
                <label for="lbl_nit"><b>NIT:</b></label>
                <input type="text" name="txt_nit" id="txt_nit" class="form-control" placeholder="Ejemplo: 1750519-4" required>
                <br>
                <label><b>Género: </b></label> <br>
                <input type="radio" id="gender" name="gender" value="0" required>
                <label for="male">Hombre</label>
                <input type="radio" id="gender" name="gender" value="1" required>
                <label for="female">Mujer</label>
                <br>
                <label for="lbl_telefono"><b>Telefono:</b></label>
                <input type="number" name="txt_telefono" id="txt_telefono" class="form-control" placeholder="Ejemplo: 12345678" required>
                <br>
                <label for="lbl_correo"><b>Correo electronico:</b></label>
                <input type="text" name="txt_correo" id="txt_correo" class="form-control" placeholder="Ejemplo: correo_ejemplo@gmail.com" required >
                <br>
                <label for="lbl_fechaingreso"><b>Fecha de ingreso:</b></label>
                <input type="date" name="txt_fechaingreso" id="txt_fechaingreso" class="form-control" required >
                
                <br>
            
            <button name="btn_agregar" id="btn_agregar" value="agregar" class="btn btn-warning" >Agregar</button>  
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
