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
 * @author hp
 */
public class producto {
    private int idproducto;
    private String producto;
    private int idmarca;
    private String descripcion;
    private String imagen;
    private double precio_costo;
    private double precio_venta;
    private int existencia;
    private Conexioon cn;
    private String fecha_ingreso;

    public producto (){}
    public producto(int idproducto, String producto, int idmarca, String descripcion, String imagen, double precio_costo, double precio_venta, int existencia, String fecha_ingreso) {
        this.idproducto = idproducto;
        this.producto = producto;
        this.idmarca = idmarca;
        this.descripcion = descripcion;
        this.imagen = imagen;
        this.precio_costo = precio_costo;
        this.precio_venta = precio_venta;
        this.existencia = existencia;
        this.fecha_ingreso = fecha_ingreso;
    }
    

    public int getIdproducto() {
        return idproducto;
    }

    public void setIdproducto(int idproducto) {
        this.idproducto = idproducto;
    }

    public String getProducto() {
        return producto;
    }

    public void setProducto(String producto) {
        this.producto = producto;
    }

    public int getId_marca() {
        return idmarca;
    }

    public void setId_marca(int id_marca) {
        this.idmarca = id_marca;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public double getPrecio_costo() {
        return precio_costo;
    }

    public void setPrecio_costo(double precio_costo) {
        this.precio_costo = precio_costo;
    }

    public double getPrecio_venta() {
        return precio_venta;
    }

    public void setPrecio_venta(double precio_venta) {
        this.precio_venta = precio_venta;
    }

    public int getExistencia() {
        return existencia;
    }

    public void setExistencia(int existencia) {
        this.existencia = existencia;
    }

    public String getFecha_ingreso() {
        return fecha_ingreso;
    }

    public void setFecha_ingreso(String fecha_ingreso) {
        this.fecha_ingreso = fecha_ingreso;
    }

public int agregar(){
    
int retorno;
        try{
            PreparedStatement parametro;
            cn = new Conexioon();
            String query = "INSERT INTO productos (idproducto, producto, idmarca, descripcion, imagen, precio_costo, precio_venta, existencia,fecha_ingreso) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);";
            cn.abrir_conexion();
            parametro = (PreparedStatement)cn.conexioonbd.prepareStatement(query);
            parametro.setInt(1,getIdproducto());
            parametro.setString(2,getProducto());        
            parametro.setInt(3,getId_marca()); 
            parametro.setString(4,getDescripcion());
            parametro.setString(5,getImagen());
            parametro.setDouble(6,getPrecio_costo());
            parametro.setDouble(7,getPrecio_venta());
            parametro.setInt(8,getExistencia());
            parametro.setString(9,getFecha_ingreso());
    
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
            
            String query = "SELECT e.idproducto,e.producto,e.idmarca,e.descripcion,e.imagen,e.precio_costo,e.precio_venta,e.existencia,e.fecha_ingreso,p.marca,p.idmarcas FROM productos as e,marcas as p where e.idmarca = p.idmarcas;";
            ResultSet consulta = cn.conexioonbd.createStatement().executeQuery(query);
            String encabezado[] = {"idproducto","producto","idmarca","descripcion","imagen","precio_costo","precio_venta","existencia","fehca:ingreso","marca","idmarca"};
      tabla.setColumnIdentifiers(encabezado);
      String datos[] = new String[10];
      while (consulta.next()){
          datos[0] = consulta.getString("idproducto");
          datos[1] = consulta.getString("producto");
          datos[2] = consulta.getString("idmarca");
          datos[3] = consulta.getString("descripcion");
          datos[4] = consulta.getString("imagen");
          datos[5] = consulta.getString("precio_costo");
          datos[6] = consulta.getString("precio_venta");
          datos[7] = consulta.getString("existencia");
          datos[8] = consulta.getString("fecha_ingreso");
          datos[9] = consulta.getString("marca");
          datos[10] = consulta.getString("idmarcas");
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
            String query = "update productos set idproducto=?, producto=?,idmarca=?,descripcion=?,imagen=?,precio_costo=?,precio_venta=?,existencia=?,fecha_ingreso=?,where id_producto =? ;";
            cn.abrir_conexion();
            parametro = (PreparedStatement)cn.conexioonbd.prepareStatement(query);
            parametro.setInt(1,getIdproducto());
            parametro.setString(2,getProducto());
            parametro.setInt(3,getId_marca());
            parametro.setString(4,getDescripcion());
            parametro.setString(5,getImagen());
            parametro.setDouble(6,getPrecio_costo());
            parametro.setDouble(7,getPrecio_venta());
            parametro.setInt(8,getExistencia());
             parametro.setString(9,getFecha_ingreso());
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
            String query = "delete from productos where id_producto =? ;";
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
 
 




    




