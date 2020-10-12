        /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.sql.PreparedStatement;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author hp
 */
public class Marcas{
 private int idmarca;
private String marca;
private Conexioon cn; 
    public Marcas() {
        
    }

    public Marcas(int idmarca, String marca) {
        this.idmarca = idmarca;
        this.marca = marca;
    }


    

public int getIdmarca() {
        return idmarca;
    }

    public void setIdmarca(int idmarca) {
        this.idmarca = idmarca;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }
public HashMap drop_marca(){
        HashMap<String,String> drop= new HashMap();
        
        try{
            cn = new Conexioon();
            String query = "SELECT idmarca as id,marca FROM marcas; ";
            cn.abrir_conexion();
            
            ResultSet consulta = cn.conexioonbd.createStatement().executeQuery(query);
            while (consulta.next()){
                drop.put(consulta.getString("id"), consulta.getString("marca"));
            }
            cn.cerrar_conexion();
            
        }catch(SQLException ex){
            System.out.println(ex.getMessage());
        }
        return drop;
    }

public int agregar(){
    
    int retorno = 0;        
    try{
            PreparedStatement parametro;
            cn = new Conexioon();
            String query = "INSERT INTO marcas (idmarca,marca) VALUES (?,?);";
            cn.abrir_conexion();
            parametro = (PreparedStatement)cn.conexioonbd.prepareStatement(query);
            parametro.setInt(1,getIdmarca());
            parametro.setString(2,getMarca());         
            retorno = parametro.executeUpdate();
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
            
            String query = "SELECT idmarca as id,marca from marcas";
            ResultSet consulta = cn.conexioonbd.createStatement().executeQuery(query);
            String encabezado[] = {"idmarca","marca"};
      tabla.setColumnIdentifiers(encabezado);
      String datos[] = new String[2];
      while (consulta.next()){
          datos[0] = consulta.getString("id");
          datos[1] = consulta.getString("marca");
          tabla.addRow(datos);
      } 
            cn.cerrar_conexion();
        }catch(SQLException ex){
            System.out.println(ex.getMessage());
        }
        return tabla;
    
    }
public int modificar(){
    
    int retorno = 0;        
    try{
            PreparedStatement parametro;
            cn = new Conexioon();
            String query = "update marcas set marca=? where idmarca= ?;";
            cn.abrir_conexion();
            parametro = (PreparedStatement)cn.conexioonbd.prepareStatement(query);
            parametro.setString(1,getMarca());  
            parametro.setInt(2,getIdmarca());
            retorno =parametro.executeUpdate();
            cn.cerrar_conexion();
        }catch(SQLException ex){
            System.out.println(ex.getMessage());
        retorno =0;
        }
return retorno;
}
public int eliminar(){
    
    int retorno = 0;        
    try{
            PreparedStatement parametro;
            cn = new Conexioon();
            String query = "delete from marcas where idmarca= ?;";
            cn.abrir_conexion();
            parametro = (PreparedStatement)cn.conexioonbd.prepareStatement(query);
            parametro.setInt(1,getIdmarca());  
            retorno =parametro.executeUpdate();
            cn.cerrar_conexion();
        }catch(SQLException ex){
            System.out.println(ex.getMessage());
        retorno =0;
        } 
return retorno;
}
} 



