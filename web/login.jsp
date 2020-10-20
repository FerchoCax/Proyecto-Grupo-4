
<%-- 
    Document   : Principal
    Created on : 14/10/2020, 20:33:35
    Author     : DanielRuiz
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <title>Login</title>
    </head>
    <body>
        <div class="container col-lg-3">
            <form action="sr_logins" method="post">
                <div class="form-goup text-center">
                    <br>
                    <br>
                    <br>
                    <br> <img src="imagen/acceso.jpg" height="150" width="150"/>
                    <p><strong>Bienvenidos al Sistema</strong></p>             
                </div>
                <div class="form-goup">
                    <label>Usuario</label>
                    <input class="form-control" type="text" name="txt_nom" placeholder="Ingrese Nombres">
                </div>
                <div class="form-goup">
                    <label>Contraseña</label>
                    <input type="password" name="txt_pass" placeholder="Ingrese su contraseña" class="form-control">
                </div>
                <br><input class="btn btn-danger btn-block" type="submit" name="btn_ingresar" value="Ingresar">
                <!--<label>Primero agregar nuevamente la base de datos ya que sino no funcionara :p</label>
                <label>despues usuario: admin</label>
                <label>contraseña: admin</label>-->
            </form>
            
        </div>
        
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>