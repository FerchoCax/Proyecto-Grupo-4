/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ferch
 */
public class Login {
    private String usuario;
    private String password;
    private Conexioon cn;
    private int tipo;
    public Login(String usuario, String password) {
        this.usuario = usuario;
        this.password = password;
    }

    public String getPassword() {
        return password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String Usuario) {
        this.usuario = usuario;
    }
      public int getTipo() {
        return tipo;
    }

    public void setTipo(int tipo) {
        this.tipo = tipo;
    }

    
    public int verificar(){
        int retorno= 0;
        try {
        ResultSet rs;
        PreparedStatement parametro;
        Conexioon cnn; 
        cnn= new Conexioon();
        String query = "Select usuario,contra from usuarios where usuario=? and contra=?";
        cnn.abrir_conexion();
        parametro = (PreparedStatement)cnn.conexioonbd.prepareStatement(query);
        parametro.setString(1, getUsuario());
        parametro.setString(2, getPassword());
        rs = parametro.executeQuery();
        while (rs.next()){
            retorno= retorno+1;
            setUsuario(rs.getString("usuario"));
            setPassword(rs.getString("contra"));
            setTipo(rs.getInt("tipo"));
        }
        if(retorno==1){
            cnn.cerrar_conexion();
            return 1;
        }else{
            cnn.cerrar_conexion();
            return 0;
        }
        } catch (SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return retorno;
    }
}
