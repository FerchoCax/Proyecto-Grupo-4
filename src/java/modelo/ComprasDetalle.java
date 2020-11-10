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

    public ComprasDetalle(){}
    public ComprasDetalle(int idcompra, int cantidad, String producto, String marca, double precio_venta, double subtotal) {
        this.idcompra = idcompra;
        this.cantidad = cantidad;
        this.producto = producto;
        this.marca = marca;
        this.precio_venta = precio_venta;
        this.subtotal = subtotal;
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
    
    public int agregar(){
        int retorno = 0;
    try{
        PreparedStatement parametro;
     
        cn = new Conexioon();
            String query="INSERT INTO compras_detalle(idcompra,producto,cantidad,precio_costo_unitario)VALUES(?,?,?,?);";
        cn.abrir_conexion();
        parametro = (PreparedStatement)cn.conexioonbd.prepareStatement(query);
        parametro.setInt(1, getIdcompra());
        parametro.setString(2, getProducto());
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
}
