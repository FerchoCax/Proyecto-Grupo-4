/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author ferch
 */
public class Registro {
     private String usuario;
    private String password;
    private String email;
    private Conexioon cn;
    private int id;
    
    
    
    public Registro(int id,String usuario,String email,String password) {
        this.password = password;
        this.email = email;
        this.id = id;
        this.usuario = usuario;
    }
    public Registro(){
        
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    public int registrar(){
        int retorno=0;
        cn = new Conexioon();
        cn.abrir_conexion();
        try{
        PreparedStatement parametro;
        
        String query=("INSERT INTO usuarios (usuario,contra,correo, productos, marcas, empleados, puestos, clientes, proveedores, compras, ventas, usuarios) VALUES ( ? , ?, ?, 0, 0 , 0 , 0 , 0, 0, 0, 1, 0);");
        parametro = (PreparedStatement)cn.conexioonbd.prepareStatement(query);
            parametro.setString(1,getUsuario());
            parametro.setString(2,getPassword());        
            parametro.setString(3,getEmail()); 
            retorno =parametro.executeUpdate();
            cn.cerrar_conexion();
        }catch(SQLException ex){
            System.out.println(ex.getMessage());
        retorno =0;
        }
         return retorno;
    }
    
}
