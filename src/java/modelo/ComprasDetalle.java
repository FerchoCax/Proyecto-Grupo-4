/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.table.DefaultTableModel;
import modelo.Conexioon;
/**
 *
 * @author Kim
 */
public class ComprasDetalle {
    Conexioon cn;
    private int idcompra,cantidad;
    private String producto,marca;
    private double precio_venta,subtotal;
    private int idProducto;

    public ComprasDetalle(){}
    public ComprasDetalle( int cantidad, String producto, String marca, double precio_venta, double subtotal, int idcompra,int idProducto) {
        this.idcompra = idcompra;
        this.cantidad = cantidad;
        this.producto = producto;
        this.marca = marca;
        this.precio_venta = precio_venta;
        this.subtotal = subtotal;
        this.idProducto = idProducto;
    }

    public int getIdcompra() {
        return idcompra;
    }

    public void setIdcompra(int idcompra) {
        this.idcompra = idcompra;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public String getProducto() {
        return producto;
    }

    public void setProducto(String producto) {
        this.producto = producto;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public double getPrecio_venta() {
        return precio_venta;
    }

    public void setPrecio_venta(double precio_venta) {
        this.precio_venta = precio_venta;
    }

    public double getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(double subtotal) {
        this.subtotal = subtotal;
    }
    public int getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }
    
    public int agregar(){
        int retorno = 0;
    try{
        PreparedStatement parametro;
     
        cn = new Conexioon();
            String query="INSERT INTO compras_detalle(idcompra,producto,cantidad,precio_costo_unitario)VALUES(?,?,?,?);";
        cn.abrir_conexion();
        parametro = (PreparedStatement)cn.conexioonbd.prepareStatement(query);
        parametro.setInt(1, getIdcompra());
        parametro.setInt(2, getIdProducto());
        parametro.setInt(3, getCantidad());
        parametro.setDouble(4, getPrecio_venta());
        
        retorno =parametro.executeUpdate();
        cn.cerrar_conexion();
        
    }catch(SQLException ex){
        System.out.println(ex.getMessage());
        retorno = 0;
    }
    
    return retorno;
    }
    
    public int verExistencia(int id){
        
         int retorno= 0;
        int existencia=0;
         try {
             cn = new Conexioon();
        ResultSet rs;
        PreparedStatement parametro;
        String query = "Select existencia from productos where idProducto = ?;";
        cn.abrir_conexion();
        parametro = (PreparedStatement)cn.conexioonbd.prepareStatement(query);
        parametro.setInt(1, id);
        rs = parametro.executeQuery();
        while (rs.next()){
            retorno= retorno+1;
            existencia=rs.getInt("existencia");
            
        }
        if(retorno==1){
            cn.cerrar_conexion();
            return existencia;
        }else{
            cn.cerrar_conexion();
            return 0;
        }
        } catch (SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return retorno;

    }
    
    public int actualizarProd(int producto, double preciocompra, int cantidad){
        int retorno =0;
        try{
        PreparedStatement parametro;
        int existentes;
        existentes=verExistencia(producto)+cantidad;
        cn = new Conexioon();
            String query="UPDATE productos SET precio_costo = ?, precio_venta = ?, existencia = ?  Where idProducto = ?;";
        cn.abrir_conexion();
        double precionuevo;
        precionuevo = preciocompra*1.25;
        parametro = (PreparedStatement)cn.conexioonbd.prepareStatement(query);
        parametro.setDouble(1, getPrecio_venta());
        parametro.setDouble(2, precionuevo);
        parametro.setInt(3, existentes);
        parametro.setInt(4, producto);
        
        retorno =parametro.executeUpdate();
        cn.cerrar_conexion();
        
    }catch(SQLException ex){
        System.out.println(ex.getMessage());
        retorno = 0;
    }
    
    return retorno;
    }

    
}
