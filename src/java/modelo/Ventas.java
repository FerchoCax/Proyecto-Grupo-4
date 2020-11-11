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

/**
 *
 * @author DanielRuiz
 */
public class Ventas {
  Conexioon cn;  
  private int idventa, nofactura,idcliente,idempleado;
  private String fechafactura,fechaingreso;
  private String serie;

  
    public Ventas(){};

    public Ventas(int idventa, int nofactura, String serie, int idcliente, int idempleado, String fechafactura) {
        this.idventa = idventa;
        this.nofactura = nofactura;
        this.serie = serie;
        this.idcliente = idcliente;
        this.idempleado = idempleado;
        this.fechafactura = fechafactura;
        
    }

    public Conexioon getCn() {
        return cn;
    }

    public void setCn(Conexioon cn) {
        this.cn = cn;
    }

    public int getIdventa() {
        return idventa;
    }

    public void setIdventa(int idventa) {
        this.idventa = idventa;
    }

    public int getNofactura() {
        return nofactura;
    }

    public void setNofactura(int nofactura) {
        this.nofactura = nofactura;
    }

   public String getSerie() {
        return serie;
    }

    public void setSerie(String serie) {
        this.serie = serie;
    }

    public int getIdcliente() {
        return idcliente;
    }

    public void setIdcliente(int idcliente) {
        this.idcliente = idcliente;
    }

    public int getIdempleado() {
        return idempleado;
    }

    public void setIdempleado(int idempleado) {
        this.idempleado = idempleado;
    }

    public String getFechafactura() {
        return fechafactura;
    }

    public void setFechafactura(String fechafactura) {
        this.fechafactura = fechafactura;
    }

    public String getFechaingreso() {
        return fechaingreso;
    }

    public void setFechaingreso(String fechaingreso) {
        this.fechaingreso = fechaingreso;
    }
    
    
  
  

    public int agregar(){
        int retorno = 0;
    try{
        PreparedStatement parametro;
     
        cn = new Conexioon();
        String query="INSERT INTO ventas(nofactura,serie,fechafactura,idcliente,idempleado)VALUES(?,?,?,?,?);";
        cn.abrir_conexion();
        parametro = (PreparedStatement)cn.conexioonbd.prepareStatement(query);
        parametro.setInt(1, getNofactura());
        parametro.setString(2, getSerie());
        parametro.setString(3, getFechafactura());
        parametro.setInt(4, getIdcliente());
        parametro.setInt(5, getIdempleado());

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
            String query = "update ventas set nofactura=?, serie=?, fechafactura=?, idcliente=?, idempleado=?, fechaingreso=? where idVenta=?;";
            cn.abrir_conexion();
            parametro = (PreparedStatement)cn.conexioonbd.prepareStatement(query);
            parametro.setInt(1, getNofactura());
            parametro.setString(2, getSerie());
            parametro.setString(3, getFechafactura());
            parametro.setInt(4, getIdcliente());
            parametro.setInt(5, getIdempleado());
            parametro.setString(6, getFechaingreso());
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
            String query = "delete from ventas where idVenta=?;";
            cn.abrir_conexion();
            parametro = (PreparedStatement)cn.conexioonbd.prepareStatement(query);
            parametro.setInt(1, this.getIdventa());
            retorno = parametro.executeUpdate();
            cn.cerrar_conexion();
        }catch(SQLException ex){
            System.out.println(ex.getMessage()); 
        }
        return retorno;  
    }

 public  HashMap ListaC(){
  HashMap<String,String> drop = new  HashMap();
 try{
        String query ="Select NIT as nit,nombres from clientes";
         cn = new Conexioon();
         cn.abrir_conexion();
            ResultSet consulta = cn.conexioonbd.createStatement().executeQuery(query);
            while (consulta.next()){
            drop.put(consulta.getString("nombres"),consulta.getString("nit"));
            }
         cn.cerrar_conexion();
    }catch(SQLException ex){
        System.out.println(ex.getMessage());
    }
 
 return drop;
 }
  public  HashMap ListaCI(){
  HashMap<String,String> drop = new  HashMap();
 try{
        String query ="Select idCliente as id,nombres from clientes";
         cn = new Conexioon();
         cn.abrir_conexion();
            ResultSet consulta = cn.conexioonbd.createStatement().executeQuery(query);
            while (consulta.next()){
            drop.put(consulta.getString("nombres"),consulta.getString("id"));
            }
         cn.cerrar_conexion();
    }catch(SQLException ex){
        System.out.println(ex.getMessage());
    }
 
 return drop;
 }
    
 public int leer(){
         try{
             String query ="Select idVenta,nofactura,serie from ventas;";
         cn = new Conexioon();
         cn.abrir_conexion();
            ResultSet consulta = cn.conexioonbd.createStatement().executeQuery(query);
            while (consulta.next()){
            setIdventa(consulta.getInt("idVenta"));
            setNofactura(consulta.getInt("nofactura"));
            setSerie(consulta.getString("serie"));
            }
         cn.cerrar_conexion();
    }catch(SQLException ex){
        System.out.println(ex.getMessage());
    }
         return 1;
    }

    
}
