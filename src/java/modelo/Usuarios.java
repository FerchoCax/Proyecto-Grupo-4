/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author ferch
 */
public class Usuarios {
    private String usuario;
    private String password;
    private int tipo;
    private Conexioon cn;
    public Usuarios(String usuario, String password) {
        this.usuario = usuario;
        this.password = password;
    }
    public int TipoUsuario() throws SQLException{
        try{
            cn = new Conexioon();
            cn.abrir_conexion();
            
            String query = "SELECT e.idUsusario as id,e.usuario,p.nombre,p.idtipo FROM usuarios as e inner join tipo_usuario as p on e.tipo= p.idtipo;";
            ResultSet consulta = cn.conexioonbd.createStatement().executeQuery(query);
            int tipo;
            tipo = consulta.getInt("idtipo");
            cn.cerrar_conexion();
            return tipo;
       
        }catch(SQLException ex){
            System.out.println(ex.getMessage());
        }
        return 0;
    }
}
