/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import javax.swing.table.DefaultTableModel;
/**
 *
 * @author Kim
 */
public class Puesto {
    private int idpuesto;
    private String puesto;
    private Conexioon cn;
    public Puesto(){}
    public Puesto(int idpuesto, String puesto) {
        this.idpuesto = idpuesto;
        this.puesto = puesto;
    }

    public int getIdpuesto() {
        return idpuesto;
    }

    public void setIdpuesto(int idpuesto) {
        this.idpuesto = idpuesto;
    }

    public String getPuesto() {
        return puesto;
    }

    public void setPuesto(String puesto) {
        this.puesto = puesto;
    }
    public HashMap drop_sangre(){
    HashMap<String,String> drop = new HashMap();
    try{
        cn = new Conexioon();
        String query= "SELECT idpuesto as id,puesto FROM puestos;";
        cn.abrir_conexion();
        ResultSet consulta = cn.conexioonbd.createStatement().executeQuery(query);
        while(consulta.next()){
            drop.put(consulta.getString("id"), consulta.getString("puesto"));
        }
        cn.cerrar_conexion();
        
    }catch(SQLException ex){
        System.out.println(ex.getMessage());
    }
    return drop;
}
    
    public DefaultTableModel leer(){
   DefaultTableModel tabla = new DefaultTableModel();
   try{
       cn = new Conexioon();
       cn.abrir_conexion();
       String query = "SELECT idPuesto as id,puesto FROM puestos;";
       ResultSet consulta = cn.conexioonbd.createStatement().executeQuery(query);
       String encabezado[] = {"id", "puesto"};
       tabla.setColumnIdentifiers(encabezado);
       String datos[] = new  String[2];
       while(consulta.next()){
           datos[0] = consulta.getString("id");
           datos[1] = consulta.getString("puesto");
           tabla.addRow(datos);
       }
       
       cn.cerrar_conexion();
   }catch(SQLException ex){
       System.out.println(ex.getMessage());
   }
   return tabla;
   }
  
   
    public int agregar(){
        int retorno = 0;
    try{
        PreparedStatement parametro;
        cn = new Conexioon();
        String query="INSERT INTO puestos(puesto)VALUES(?);";
        cn.abrir_conexion();
        parametro = (PreparedStatement)cn.conexioonbd.prepareStatement(query);
        parametro.setString(1, getPuesto());
        retorno =parametro.executeUpdate();
        cn.cerrar_conexion();
        
    }catch(SQLException ex){
        System.out.println(ex.getMessage());
        retorno = 0;
    }
    
    return retorno;
    }
  
    public int modificar(){
        int retorno = 0;
        try{
            PreparedStatement parametro;
            cn = new Conexioon();
            String query = "update puestos set puesto=? where idPuesto=?;";

            cn.abrir_conexion();
            parametro = (PreparedStatement)cn.conexioonbd.prepareStatement(query);
            parametro.setString(1, this.getPuesto());
            parametro.setInt(2, this.getIdpuesto());
            retorno = parametro.executeUpdate();
            cn.cerrar_conexion();
        }catch(SQLException ex){
            System.out.println(ex.getMessage()); 
        }
        return retorno;  
    }
    

    public int eliminar(){
        int retorno = 0;
        try{
            PreparedStatement parametro;
            cn = new Conexioon();
            String query = "delete from puestos where idPuesto=?;";
            cn.abrir_conexion();
            parametro = (PreparedStatement)cn.conexioonbd.prepareStatement(query);
            parametro.setInt(1, this.getIdpuesto());
            retorno = parametro.executeUpdate();
            cn.cerrar_conexion();
        }catch(SQLException ex){
            System.out.println(ex.getMessage()); 
        }
        return retorno;  
    }
}
