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
        <title>Inicio</title>
        <link rel="stylesheet" href="estilo_inicio.css">
        <link rel="shortcut icon" href="imagen/icono.png" type="image/x-icon">
    </head>
    

    <body>
        <%
            HttpSession misession= (HttpSession) request.getSession();
            if(misession.getAttribute("inicio")=="iniciado"){
        //out.println("Hola");
        %>
        <%@include file="header.jsp" %>
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
        <%}else{
            response.sendRedirect("login.jsp");}
         %>
         
         <header>
            <div class="wave"style="height: 120px; overflow: hidden;" ><svg viewBox="0 0 500 150" preserveAspectRatio="none" style="height: 100%; width: 100%;"><path d="M-4.90,4.45 C121.05,159.38 349.20,-49.98 501.63,24.17 L500.00,150.00 L0.00,150.00 Z" style="stroke: none; fill: #ffffff;"></path></svg></div>  
         </header>
         
         <main>
             <section  class="portafolio">
                <div class="contenedor">
                    <h2 class="titulo">NUESTROS PRODUCTOS</h2>
                    <div class="galeria-port">
                        <div class="imagen-port">
                            <img src="imagen/relojgg.jpg" alt="">
                         </div>     
                        <div class="imagen-port">
                            <img src="imagen/3.jpg" alt="">
                           
                         </div>  
                        <div class="imagen-port">
                            <img src="imagen/4.jpg" alt="">
                            
                         </div>     
                        <div class="imagen-port">
                            <img src="imagen/camara.jpg" alt="">
                          
                         </div>     
                        <div class="imagen-port">
                            <img src="imagen/telefono.jpg" alt="">
                            
                         </div>     
                        <div class="imagen-port">
                            <img src="imagen/5.jpg" alt="">
                          
                         </div>     
                        <div class="imagen-port">
                            <img src="imagen/6.jpg" alt="">
                            
                         </div>     
                        <div class="imagen-port">
                            <img src="imagen/7.jpg" alt="">
                            
                         </div>     
                    </div>  
                </div>
             </section>
         </main>
    </body>
</html>



