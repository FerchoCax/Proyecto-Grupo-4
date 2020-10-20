
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.Login;

/**
 *
 * @author ferch
 */
public class sr_logins extends HttpServlet {

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
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            Login login = new Login(request.getParameter("txt_nom"),request.getParameter("txt_pass"));
            
                //out.println("error 3 :p");
                
            if(login.verificar()>0){
                HttpSession misession= request.getSession();
                misession.setAttribute("inicio","iniciado");
                int aux;
                aux = login.getTipo();
                if(aux==1){
                    HttpSession sesion= request.getSession();
                    sesion.setAttribute("Tipo","admin");
                    response.sendRedirect("index.jsp");
                }
                if(aux==2){
                    HttpSession sesion= request.getSession();
                    sesion.setAttribute("Tipo","bodega");
                    response.sendRedirect("index.jsp");
                }
                if(aux==3){
                    HttpSession sesion= request.getSession();
                    sesion.setAttribute("Tipo","gerente");
                    response.sendRedirect("index.jsp");
                }
            }else{
                out.println("error 2 :p");
                response.sendRedirect("login.jsp");
            }
                try (PrintWriter pw = response.getWriter()) {
                 
            }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(sr_logins.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(sr_logins.class.getName()).log(Level.SEVERE, null, ex);
        }
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
