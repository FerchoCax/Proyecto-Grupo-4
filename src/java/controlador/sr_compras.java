/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Datosc;
import java.util.ArrayList;
import modelo.Compras;
import modelo.ComprasDetalle;

/**
 *
 * @author Kim
 */
public class sr_compras extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet sr_compras</title>");            
            out.println("</head>");
            out.println("<body>");
            double Total=0;
            for(ComprasDetalle comprasD : Datosc.listador) {
            Total = Total + comprasD.getSubtotal();
            }
            out.println("Error1");
            if("Pagar".equals(request.getParameter("btn_pagar"))){
                out.println("Error2");
                Compras compras = new Compras (0,Integer.parseInt(request.getParameter("txt_no_orden_compra")),Integer.parseInt(request.getParameter("txt_serie")),request.getParameter("fecha_factura"),request.getParameter("fecha_factura"));
                out.println("Error3");
                if(compras.agregar() > 0){
                  out.println("Error4");
                  response.sendRedirect("ComprasDetalle.jsp");
                 //  out.println("<h1>Ingreso Exitoso....................</h1>");
                   // out.println("<a href ='index.jsp'>Regresar</a>");
                }else{
                    out.println("<h1>Error....................</h1>");
                    out.println("<a href ='ComprasDetalle.jsp'>Regresar</a>");
                }
                Datosc.listador.forEach(_item -> {
                    ComprasDetalle comprasD = new ComprasDetalle(_item.getCantidad(),_item.getProducto(),_item.getMarca(),_item.getPrecio_venta(),_item.getSubtotal(),_item.getIdcompra());
                    comprasD.agregar();
                });
                Datosc.listador.clear();
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
