package controlador;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import modelo.Producto;

/**
 *
 * @author ferch
 */

@MultipartConfig    // upload file's size up to 16MB
public class sr_productos extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
        Producto producto;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet sr_productos</title>");            
            out.println("</head>");
            out.println("<body>"); 
            out.println("<h1>Xd</h1>");
        
          
            String nombreIMAGEN=request.getParameter("nameimg");  
            out.println("<h1>Xd 2</h1>");
             if("Agregar".equals(request.getParameter("btn_agregar"))){
                 Producto prod = new Producto(0,request.getParameter("txt_productso"),Integer.valueOf(request.getParameter("drop_marca")),request.getParameter("txt_descripcion"),nombreIMAGEN,Double.valueOf(request.getParameter("txt_precio_costo")),Double.valueOf(request.getParameter("txt_precio_venta")),Integer.valueOf(request.getParameter("txt_existencia")),request.getParameter("fecha_factura"));
          
           if (prod.agregar()>0) { 
               
                   Part Archivo=request.getPart("imag");
                    InputStream is=Archivo.getInputStream();
                    File im=new File("C:/Users/ferch/Desktop/universidad/Semestre_2_2020/Programacion_2/Proyecto Final/web/img/" + nombreIMAGEN);
                
                    FileOutputStream ou=new FileOutputStream(im);
                    int d=is.read();
                    while (d!=-1) { 
                     ou.write(d);
                     d=is.read();
                    }
                    ou.close();
                    is.close();
                   response.sendRedirect("productos.jsp");
                }else{
                    out.print("<h1>Error!!</h1>");
                   
                }
             }
           out.println("<h1>Va por aqui 1</h1>");
        //modificar
            if("Modificar".equals(request.getParameter("btn_modificar"))){
               producto = new Producto (Integer.valueOf(request.getParameter("txt_idproducto")),request.getParameter("txt_producto"),Integer.valueOf(request.getParameter("drop_marca")),request.getParameter("txt_descripcion"),nombreIMAGEN,Double.valueOf(request.getParameter("txt_precio_costo")),Double.valueOf(request.getParameter("txt_precio_venta")),Integer.valueOf(request.getParameter("txt_existencia")),request.getParameter("fecha_factura"));
              if(producto.modificar() > 0){
                  Part Archivo=request.getPart("imag");
                    InputStream is=Archivo.getInputStream();
                    File im=new File("C:/Users/ferch/Desktop/universidad/Semestre_2_2020/Programacion_2/Proyecto Final/web/img/" + nombreIMAGEN);

                   
                    FileOutputStream ou=new FileOutputStream(im);
                    int d=is.read();
                    while (d!=-1) { 
                     ou.write(d);
                     d=is.read();
                    }
                    ou.close();
                    is.close();
                    response.sendRedirect("productos.jsp");
                }else{
                 out.println("<h1>no se modifico......</h1>");
              out.println("<a href ='index.jsp'>regresar</a>");    
            }
            }
            out.println("<h1>Va por aqui 2</h1>");
            //eliminar
            if("Eliminar".equals(request.getParameter("btn_eliminar"))){
               out.println("<h1>Va por aqui</h1>");

             producto = new Producto (Integer.valueOf(request.getParameter("txt_idproducto")),request.getParameter("txt_producto"),Integer.valueOf(request.getParameter("drop_marca")),request.getParameter("txt_descripcion"),"iamgen",Double.valueOf(request.getParameter("txt_precio_costo")),Double.valueOf(request.getParameter("txt_precio_venta")),Integer.valueOf(request.getParameter("txt_existencia")),request.getParameter("fecha_factura"));
             
                out.println("<h1>no se elimino........</h1>");

             if(producto.eliminar() > 0){
                    response.sendRedirect("productos.jsp");
                }else{
                    out.println("<h1>no se elimino........</h1>");
                    out.println("<a href ='index.jsp'>Regresar</a>");
             }
            }
            out.println("</body>");
            out.println("</html>");
        
    }
    }
    
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
