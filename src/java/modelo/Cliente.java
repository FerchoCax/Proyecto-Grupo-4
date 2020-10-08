/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.table.DefaultTableModel;
/**
 *
 * @author Mélida Pérez
 */
public class Cliente{
   private Conexioon cnx;
    
    public Cliente() {}
    private int id, genero;
    private String  nombres, apellidos,nit, telefono, correo_electronico, fechaingreso; 

    public Cliente(int id, int genero, String nombres, String apellidos, String nit, String telefono, String correo_electronico, String fechaingreso) {
        this.id = id;
        this.genero = genero;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.nit = nit;
        this.telefono = telefono;
        this.correo_electronico = correo_electronico;
        this.fechaingreso = fechaingreso;
    }
    
      public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getGenero() {
        return genero;
    }

    public void setGenero(int genero) {
        this.genero = genero;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getNit() {
        return nit;
    }

    public void setNit(String nit) {
        this.nit = nit;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getCorreo_electronico() {
        return correo_electronico;
    }

    public void setCorreo_electronico(String correo_electronico) {
        this.correo_electronico = correo_electronico;
    }

    public String getFechaingreso() {
        return fechaingreso;
    }

    public void setFechaingreso(String fechaingreso) {
        this.fechaingreso = fechaingreso;
    }

    
    
    
   public DefaultTableModel leer(){
 DefaultTableModel tabla = new DefaultTableModel();
 try{
     cnx = new Conexioon();
     cnx.abrir_conexion();
      String query = "SELECT idCliente as id, nombres, apellidos, NIT, genero, telefono, correo_electronico, fechaingreso FROM dbempresa.clientes;";
      ResultSet consulta = cnx.conexioonbd.createStatement().executeQuery(query);
      String encabezado[] = {"id","nombres","apellidos","NIT","genero","telefono","correo_electronico", "fechaingreso"};
      tabla.setColumnIdentifiers(encabezado);
      String datos[] = new String[8];
      while (consulta.next()){
          datos[0] = consulta.getString("id");
          datos[1] = consulta.getString("nombres");
          datos[2] = consulta.getString("apellidos");
          datos[3] = consulta.getString("NIT");
          datos[4] = consulta.getString("genero");
          datos[5] = consulta.getString("telefono");
          datos[6] = consulta.getString("correo_electronico");
          datos[7] = consulta.getString("fechaingreso");
          tabla.addRow(datos);
      
      }
      
     cnx.cerrar_conexion();
 }catch(SQLException ex){
     System.out.println(ex.getMessage());
 }
 return tabla;
 }
    

    public int agregar(){
        int retorno = 0;
        try{
            PreparedStatement parametro;
            cnx = new Conexioon();
            String query = "INSERT INTO clientes (nombres,apellidos,NIT,genero,telefono,correo_electronico,fechaingreso) VALUES(?,?,?,?,?,?,?);";
            cnx.abrir_conexion();
            parametro = (PreparedStatement)cnx.conexioonbd.prepareStatement(query);
            parametro.setString(1, this.getNombres());
            parametro.setString(2, this.getApellidos());
            parametro.setString(3, this.getNit());
            parametro.setInt(4,this.getGenero());
            parametro.setString(5, this.getTelefono());
            parametro.setString(6, this.getCorreo_electronico());
            parametro.setString(7, this.getFechaingreso());
            retorno = parametro.executeUpdate();
            cnx.cerrar_conexion();
        }catch(SQLException ex){
            System.out.println(ex.getMessage());
        }
        return retorno;
    }
   
    public int modificar(){
       int retorno = 0;
        try{
            PreparedStatement parametro;
            cnx = new Conexioon();
            String query = "update clientes set  nombres=?,apellidos=?,NIT=?,genero=?,telefono=?,correo_electronico=?, fechaingreso=? where idCliente = ? ;";
            cnx.abrir_conexion();
            parametro = (PreparedStatement)cnx.conexioonbd.prepareStatement(query);
            parametro.setString(1, this.getNombres());
            parametro.setString(2, this.getApellidos());
            parametro.setString(3, this.getNit());
            parametro.setInt(4, this.getGenero());
            parametro.setString(5, this.getTelefono());
            parametro.setString(6, this.getCorreo_electronico());
            parametro.setString(7, this.getFechaingreso());
            parametro.setInt(8, this.getId());
            retorno = parametro.executeUpdate();
            cnx.cerrar_conexion();
        }catch(SQLException ex){
            System.out.println(ex.getMessage()); 
        }
        return retorno;  
    }
    
    
    public int eliminar(){
        int retorno = 0;
        try{
            PreparedStatement parametro;
            cnx = new Conexioon();
            String query = "DELETE from clientes where idCliente=?;";
            cnx.abrir_conexion();
            parametro = (PreparedStatement)cnx.conexioonbd.prepareStatement(query);
            parametro.setInt(1, this.getId());
            retorno = parametro.executeUpdate();
            cnx.cerrar_conexion();
        }catch(SQLException ex){
            System.out.println(ex.getMessage()); 
        }
        return retorno;  
    }


  
}
