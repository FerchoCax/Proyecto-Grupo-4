/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;
import com.mysql.cj.protocol.Resultset;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import javax.servlet.http.HttpServletResponse;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author hp
 */
public class Producto {
    private int idproducto;
    private String producto;
    private int idmarca;
    private String descripcion;
    //private String imagen;
    private double precio_costo;
    private double precio_venta;
    private int existencia;
    private Conexioon cn;
    private String fecha_ingreso;
    InputStream imagen;

    public Producto (){}
    public Producto(int idproducto, String producto, int idmarca, String descripcion, InputStream imagen, double precio_costo, double precio_venta, int existencia, String fecha_ingreso) {
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

    public InputStream getImagen() {
        return imagen;
    }

    public void setImagen(InputStream imagen) {
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
            InputStream inputStream = null; // input stream of the upload file
        try{
            PreparedStatement parametro;
            cn = new Conexioon();
            String query = "INSERT INTO productos (producto, idMarca, Descripcion, Imagen, precio_costo, precio_venta, existencia,fecha_ingreso) VALUES (?, ?, ?, ?, ?, ?, ?, ?);";
            cn.abrir_conexion();
            parametro = (PreparedStatement)cn.conexioonbd.prepareStatement(query);
            parametro.setString(1,getProducto());        
            parametro.setInt(2,getId_marca()); 
            parametro.setString(3,getDescripcion());
            parametro.setBlob(4, getImagen());
            parametro.setDouble(5,getPrecio_costo());
            parametro.setDouble(6,getPrecio_venta());
            parametro.setInt(7,getExistencia());
            parametro.setString(8,getFecha_ingreso());
    
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
            
            String query = "SELECT e.idproducto as id,e.producto,e.descripcion,e.imagen,e.precio_costo,e.precio_venta,e.existencia,e.fecha_ingreso,p.marca,p.idmarca FROM productos as e inner join marcas as p on e.idmarca = p.idmarca;";
            ResultSet consulta = cn.conexioonbd.createStatement().executeQuery(query);
            String encabezado[] = {"idproducto","producto","descripcion","imagen","precio_costo","precio_venta","existencia","fecha_ingreso","marca","idmarca"};
      tabla.setColumnIdentifiers(encabezado);
      String datos[] = new String[10];
      while (consulta.next()){
          datos[0] = consulta.getString("id");
          datos[1] = consulta.getString("producto");
          datos[2] = consulta.getString("descripcion");
          datos[3] = consulta.getString("imagen");
          datos[4] = consulta.getString("precio_costo");
          datos[5] = consulta.getString("precio_venta");
          datos[6] = consulta.getString("existencia");
          datos[7] = consulta.getString("fecha_ingreso");
          datos[8] = consulta.getString("marca");
          datos[9] = consulta.getString("idmarca");
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
            String query = "update productos set producto=?,idmarca=?,Descripcion=?,Imagen=?,precio_costo=?,precio_venta=?,existencia=?,fecha_ingreso=? where idProducto =? ;";
            cn.abrir_conexion();
            parametro = (PreparedStatement)cn.conexioonbd.prepareStatement(query);
            
            parametro.setString(1,getProducto());
            parametro.setInt(2,getId_marca());
            parametro.setString(3,getDescripcion());
            parametro.setBlob(4, getImagen());
            parametro.setDouble(5,getPrecio_costo());
            parametro.setDouble(6,getPrecio_venta());
            parametro.setInt(7,getExistencia());
             parametro.setString(8,getFecha_ingreso());
             parametro.setInt(9,getIdproducto());
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
            String query = "delete from productos where idProducto =? ;";
            cn.abrir_conexion();
            parametro = (PreparedStatement)cn.conexioonbd.prepareStatement(query);
             parametro.setInt(1,getIdproducto());       
            retorno = parametro.executeUpdate();
            cn.cerrar_conexion();
        }catch(SQLException ex){
            System.out.println(ex.getMessage());
}
 return retorno;
 }
    public void imagen(int id, HttpServletResponse response) throws IOException, SQLException{
        int retorno =0;
        InputStream in = null;
        OutputStream out = null;
        BufferedInputStream bufferedInputStream= null;
        BufferedOutputStream bufferedOutputStream= null;
        response.setContentType("image/*");
        try{
            ResultSet rs;
            String query="Select * from productos where idProducto="+idproducto;
            out = response.getOutputStream();
            cn = new Conexioon();
            cn.abrir_conexion();
            PreparedStatement parametro;
            parametro = (PreparedStatement)cn.conexioonbd.prepareStatement(query);    
            rs = parametro.executeQuery();
            if(rs.next()) {
                in=rs.getBinaryStream("Imagen");
            } 
            bufferedInputStream = new BufferedInputStream(in);
            bufferedOutputStream = new BufferedOutputStream(out);
            int i=0;
            while((i==bufferedInputStream.read())&&(i!=-1)){
                bufferedOutputStream.write(i);
            }
        
            cn.cerrar_conexion();
        }catch (SQLException e){
            
        }
    
    }
    
    public HashMap ListaProductos(){
    HashMap<String,String> drop = new HashMap();
    try{
        cn = new Conexioon();
        String query= "SELECT idProducto as id,producto FROM productos;";
        cn.abrir_conexion();
        ResultSet consulta = cn.conexioonbd.createStatement().executeQuery(query);
        while(consulta.next()){
            drop.put(consulta.getString("id"), consulta.getString("producto"));
        }
        cn.cerrar_conexion();
        
    }catch(SQLException ex){
        System.out.println(ex.getMessage());
    }
    return drop;   
    }
    
    public HashMap<String, String> PrescioVenta() throws SQLException{
        
        HashMap<String,String> precio = new HashMap();
        cn = new Conexioon();
        String query = "SELECT idProducto as id,precio_venta FROM productos;";
        cn.abrir_conexion();
        ResultSet consulta = cn.conexioonbd.createStatement().executeQuery(query);
        while(consulta.next()){
            precio.put(consulta.getString("id"), consulta.getString("precio_venta"));
        }
        cn.cerrar_conexion();
        return precio;
    }
    public DefaultTableModel agregarProducto(int i){
    
        DefaultTableModel tabla = new DefaultTableModel();
        try{
            cn = new Conexioon();
            cn.abrir_conexion();
            PreparedStatement parametro;
            String query = "SELECT e.idproducto as id,e.producto,p.marca,e.precio_venta,p.idmarca  FROM productos as e inner join marcas as p on e.idmarca = p.idmarca and idProducto=?;";
            parametro = (PreparedStatement)cn.conexioonbd.prepareStatement(query);
             parametro.setInt(1,i); 
            ResultSet consulta;
            consulta = parametro.executeQuery();
            String encabezado[] = {"idproducto","producto","marca","precio_venta","idmarca"};
      tabla.setColumnIdentifiers(encabezado);
      String datos[] = new String[5];
      while (consulta.next()){
          datos[0] = consulta.getString("id");
          datos[1] = consulta.getString("producto");
          datos[2] = consulta.getString("marca");
          datos[3] = consulta.getString("precio_venta");
          datos[4] = consulta.getString("idmarca");
          tabla.addRow(datos);
      
      } 
            cn.cerrar_conexion();
        }catch(SQLException ex){
            System.out.println(ex.getMessage());
        }
        return tabla;
    
    }
}

 
 
