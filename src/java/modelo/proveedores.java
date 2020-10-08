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
 * @author AlekeyJr
 */
public class proveedores {
    private int idproveedor;
    private String proveedor, nit, direccion, telefono;
    Conexioon cn;

    public proveedores(){};
    public proveedores(int idproveedor, String proveedor, String nit, String direccion, String telefono) {
        this.idproveedor = idproveedor;
        this.proveedor = proveedor;
        this.nit = nit;
        this.direccion = direccion;
        this.telefono = telefono;
    }

    public int getIdproveedor() {
        return idproveedor;
    }

    public void setIdproveedor(int idproveedor) {
        this.idproveedor = idproveedor;
    }

    public String getProveedor() {
        return proveedor;
    }

    public void setProveedor(String proveedor) {
        this.proveedor = proveedor;
    }

    public String getNit() {
        return nit;
    }

    public void setNit(String nit) {
        this.nit = nit;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }
    
   public int agregar(){
    
int retorno;
        try{
            PreparedStatement parametro;
            cn = new Conexioon();
            String query = "INSERT INTO proveedores (idproveedor, proveedor, nit, direccion, telefono) VALUES (?, ?, ?, ?, ?);";
            cn.abrir_conexion();
            parametro = (PreparedStatement)cn.conexioonbd.prepareStatement(query);
            parametro.setInt(1,getIdproveedor());
            parametro.setString(2,getProveedor());        
            parametro.setString(3,getNit()); 
            parametro.setString(4,getDireccion());
            parametro.setString(5,getTelefono());
    
            retorno =parametro.executeUpdate();
            cn.cerrar_conexion();
        }catch(SQLException ex){
            System.out.println(ex.getMessage());
        retorno =0;
        }
return retorno;
} 
public DefaultTableModel leer(){
    
        DefaultTableModel tabla = new DefaultTableModel();
        try{
            cn = new Conexioon();
            cn.abrir_conexion();
            
            String query = "SELECT e.idproveedor,e.proveedor,e.nit,e.direccion,e.telefono FROM proveedores as e;";
            ResultSet consulta = cn.conexioonbd.createStatement().executeQuery(query);
            String encabezado[] = {"idproveedor","proveedor","nit","direccion","telefono"};
      tabla.setColumnIdentifiers(encabezado);
      String datos[] = new String[10];
      while (consulta.next()){
          datos[0] = consulta.getString("idproveedor");
          datos[1] = consulta.getString("proveedor");
          datos[2] = consulta.getString("nit");
          datos[3] = consulta.getString("direccion");
          datos[4] = consulta.getString("telefono");

          tabla.addRow(datos);
      
      } 
            cn.cerrar_conexion();
        }catch(SQLException ex){
            System.out.println(ex.getMessage());
        }
        return tabla;
    
    }
public int modificar(){
        
        int retorno =0;
        try{
            PreparedStatement parametro;
            cn = new Conexioon();
            String query = "update proveedores set idproveedores=?, proveedores=?,nit=?,direccion=?,telefono=? where idproveedor =? ;";
            cn.abrir_conexion();
            parametro = (PreparedStatement)cn.conexioonbd.prepareStatement(query);
            parametro.setInt(1,getIdproveedor());
            parametro.setString(2,getProveedor());        
            parametro.setString(3,getNit()); 
            parametro.setString(4,getDireccion());
            parametro.setString(5,getTelefono());
            retorno = parametro.executeUpdate();
            cn.cerrar_conexion();
        }catch(SQLException ex){  
            System.out.println(ex.getMessage());
        }
       
    return retorno;

}
 public int eliminar(){
    int retorno =0;
        try{
            PreparedStatement parametro;
            cn = new Conexioon();
            String query = "delete from proveedores where idproveedor =? ;";
            cn.abrir_conexion();
            parametro = (PreparedStatement)cn.conexioonbd.prepareStatement(query);
           
            
            retorno = parametro.executeUpdate();
            cn.cerrar_conexion();
        }catch(SQLException ex){
            System.out.println(ex.getMessage());
}
 return retorno;
 } 
}
