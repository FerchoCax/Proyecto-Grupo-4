/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

        


/**
 *
 * @author ferperez
 */
public class Conexioon {
    public Connection conexioonbd;
    public final String bd="dbempresa";
    public final String urlConexioon= String.format("jdbc:mysql://localhost:3306/%s ", bd +  "?useTimezone=true&serverTimezone=UTC") ;
    public final String usuario = "usr_empresa_parcial"; 
    public final String contra="P@rcial02";
    public final String jdbc="com.mysql.cj.jdbc.Driver";
    
    public void abrir_conexion(){
    try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        conexioonbd = DriverManager.getConnection(urlConexioon,usuario,contra);
        /*JOptionPane.showMessageDialog(null, "Conexion etsitosa :3", "Exito",JOptionPane.INFORMATION_MESSAGE);*/
    }catch(ClassNotFoundException | SQLException ex){
    System.out.println("Lastima :c "+ ex.getMessage());
    }
    }
   
    public void cerrar_conexion(){
    try{
        conexioonbd.close();
    }catch(SQLException ex){
        System.out.println("Lastima :c "+ ex.getMessage());
    }
        
    
    }
    
}
