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
 * @author ferch
 */
public class Usuarios {
    private String usuario;
    private String password;
    private int tipo;
    private Conexioon cn;
    private int id, productos ,marcas,empleados,puestos,clientes,proveedores,ventas,usuarios,compras;
    
    
    
    public Usuarios(int id,String usuario, int productos, int marcas, int empleados, int puestos, int clientes, int proveedores, int ventas,int compras, int usuarios) {
        this.productos = productos;
        this.id = id;
        this.marcas = marcas;
        this.empleados = empleados;
        this.puestos = puestos;
        this.clientes = clientes;
        this.proveedores = proveedores;
        this.ventas = ventas;
        this.compras = compras;
        this.usuarios = usuarios;
        this.usuario = usuario;
    }
    public Usuarios(){
        
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

    public int getProductos() {
        return productos;
    }

    public void setProductos(int productos) {
        this.productos = productos;
    }

    public int getMarcas() {
        return marcas;
    }

    public void setMarcas(int marcas) {
        this.marcas = marcas;
    }

    public int getEmpleados() {
        return empleados;
    }

    public void setEmpleados(int empleados) {
        this.empleados = empleados;
    }

    public int getPuestos() {
        return puestos;
    }

    public void setPuestos(int puestos) {
        this.puestos = puestos;
    }

    public int getClientes() {
        return clientes;
    }

    public void setClientes(int clientes) {
        this.clientes = clientes;
    }

    public int getProveedores() {
        return proveedores;
    }

    public void setProveedores(int proveedores) {
        this.proveedores = proveedores;
    }

    public int getVentas() {
        return ventas;
    }

    public void setVentas(int ventas) {
        this.ventas = ventas;
    }

    public int getUsuarios() {
        return usuarios;
    }

    public void setUsuarios(int usuarios) {
        this.usuarios = usuarios;
    }
    public int getCompras() {
        return compras;
    }

    public void setCompras(int compras) {
        this.compras = compras;
    }
    
    public int TipoUsuario() throws SQLException{
        
        return 0;
    }

    public DefaultTableModel leer(){
    
        DefaultTableModel tabla = new DefaultTableModel();
        try{
            cn = new Conexioon();
            cn.abrir_conexion();
            
            String query = "Select idUsusario,usuario,productos,marcas,empleados,puestos,clientes,proveedores,compras,ventas,usuarios from usuarios;";
            ResultSet consulta = cn.conexioonbd.createStatement().executeQuery(query);
            String encabezado[] = {"idUsusario","usuario","productos","marcas","empleados","puestos","clientes","proveedores","compras","ventas","usuarios"};
      tabla.setColumnIdentifiers(encabezado);
      String datos[] = new String[11];
      while (consulta.next()){
          datos[0] = consulta.getString("idUsusario");
          datos[1] = consulta.getString("usuario");
          datos[2] = consulta.getString("productos");
          datos[3] = consulta.getString("marcas");
          datos[4] = consulta.getString("empleados");
          datos[5] = consulta.getString("puestos");
          datos[6] = consulta.getString("clientes");
          datos[7] = consulta.getString("proveedores");
          datos[8] = consulta.getString("compras");
          datos[9] = consulta.getString("ventas");
          datos[10] = consulta.getString("usuarios");

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
            String query = "UPDATE usuarios SET usuario =? ,productos =? ,marcas =? , empleados =? , puestos = ?, clientes =? , proveedores =? , compras = ?, ventas = ?, usuarios =? WHERE idUsusario =? ;";
            cn.abrir_conexion();
            parametro = (PreparedStatement)cn.conexioonbd.prepareStatement(query);
            parametro.setString(1,getUsuario());        
            parametro.setInt(2,getProductos()); 
            parametro.setInt(3,getMarcas());
            parametro.setInt(4,getEmpleados());
            parametro.setInt(5,getPuestos());
            parametro.setInt(6,getClientes());
            parametro.setInt(7,getProveedores());
            parametro.setInt(8,getCompras());
            parametro.setInt(9,getVentas());
            parametro.setInt(10,getUsuarios());
            parametro.setInt(11,getId());
            retorno = parametro.executeUpdate();
            cn.cerrar_conexion();
        }catch(SQLException ex){  
            System.out.println(ex.getMessage());
        }
       
    return retorno;
    }

    
}
