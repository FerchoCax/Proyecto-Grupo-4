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

/**
 *
 * @author hp
 */
public class Marcas extends Producto {
 private int idmarca;
private String marca;
private Conexioon cn; 
    public Marcas() {
        
    }

    public Marcas(String marca, int idproducto, String producto, int idmarca, String descripcion, String imagen, double precio_costo, double precio_venta, int existencia, String fecha_ingreso) {
        super(idproducto, producto, idmarca, descripcion, imagen, precio_costo, precio_venta, existencia, fecha_ingreso);
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
} 



