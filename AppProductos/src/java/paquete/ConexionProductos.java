/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package paquete;

import java.sql.*;
import java.util.ArrayList;

/**
 *
 * @author Administrator
 */
public class ConexionProductos {

    private Connection conexion;

    public ConexionProductos() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        this.conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/despliegue", "daw2", "1234");
    }

    public void cerrarConexion() {
        if (this.conexion != null) {
            try {
                this.conexion.close();
                System.out.println("Conexión cerrada correctamente.");
            } catch (SQLException e) {
                System.err.println("Error al cerrar la conexión: " + e.getMessage());
            }
        }
    }

    public boolean compruebaUsuario(String usuario, String contraseña) throws Exception {
        String consulta = "SELECT usuario, contraseña FROM login_registro WHERE usuario = ? AND contraseña = ?";
        try (PreparedStatement pstm = this.conexion.prepareStatement(consulta)) {
            pstm.setString(1, usuario);
            pstm.setString(2, contraseña);
            try (ResultSet rs = pstm.executeQuery()) {
                return rs.next();
            }
        }
    }

    public boolean añadirProducto(String codigoArticulo, String seccion, String nombreArticulo, String precio, String fecha, String importado, String paisOrigen) throws Exception {
        String consulta = "INSERT INTO PRODUCTOS (CODIGOARTICULO, SECCION, NOMBREARTICULO, PRECIO, FECHA, IMPORTADO, PAISDEORIGEN) VALUES (?, ?, ?, ?, ?, ?, ?);";
        try (PreparedStatement psmt = this.conexion.prepareStatement(consulta)) {
            psmt.setString(1, codigoArticulo.toUpperCase());
            psmt.setString(2, seccion.toUpperCase());
            psmt.setString(3, nombreArticulo.toUpperCase());
            psmt.setString(4, precio.toUpperCase());
            psmt.setString(5, fecha.toUpperCase());
            psmt.setString(6, importado.toUpperCase());
            psmt.setString(7, paisOrigen.toUpperCase());
            int filas = psmt.executeUpdate();
            return filas > 0;
        }
    }

    public boolean borrarProducto(String codigoArticulo) throws Exception {
        String consulta = "DELETE FROM PRODUCTOS WHERE CODIGOARTICULO = ?;";
        try (PreparedStatement pstm = this.conexion.prepareStatement(consulta)) {
            pstm.setString(1, codigoArticulo.toUpperCase());
            int fila = pstm.executeUpdate();
            return fila > 0;
        }
    }

    public boolean modificarProducto(String codigoArticulo, String seccion, String nombreArticulo, String precio, String fecha, String importado, String paisOrigen) throws Exception {
        String consulta = "UPDATE PRODUCTOS SET SECCION = ?, NOMBREARTICULO = ?, PRECIO = ?, FECHA = ?, IMPORTADO = ?, PAISDEORIGEN = ? WHERE CODIGOARTICULO = ?";
        try (PreparedStatement pstm = this.conexion.prepareStatement(consulta)) {
            pstm.setString(1, seccion.toUpperCase());
            pstm.setString(2, nombreArticulo.toUpperCase());
            pstm.setString(3, precio);
            pstm.setString(4, fecha);
            pstm.setString(5, importado.toUpperCase());
            pstm.setString(6, paisOrigen.toUpperCase());
            pstm.setString(7, codigoArticulo.toUpperCase());
            int columnas = pstm.executeUpdate();
            return columnas > 0;
        }
    }

    public boolean compruebaCodigo(String codigo) throws Exception {
        String consulta = "SELECT * FROM PRODUCTOS WHERE CODIGOARTICULO = ?;";
        try (PreparedStatement pstm = this.conexion.prepareStatement(consulta)) {
            pstm.setString(1, codigo.toUpperCase());
            try (ResultSet rs = pstm.executeQuery()) {
                return rs.next();
            }
        }
    }

    public ArrayList<String> devuelveValores(String codigo) throws Exception {
        ArrayList<String> columnas = devuelveCampos();
        ArrayList<String> valores = new ArrayList<String>();
        String consulta = "SELECT * FROM PRODUCTOS WHERE CODIGOARTICULO = ?;";
        try (PreparedStatement pstm = this.conexion.prepareStatement(consulta)) {
            pstm.setString(1, codigo);
            try (ResultSet rs = pstm.executeQuery()) {
                while (rs.next()) {
                    int i = 0;
                    for (String campo : columnas) {
                        valores.add(rs.getString(campo));
                        System.out.println(valores.get(i));
                        i++;
                    }
                }
            }
            return valores;
        }
    }

    public ArrayList<String> devuelveCampos() throws Exception {
        String consulta = "SHOW COLUMNS FROM PRODUCTOS";
        ArrayList<String> columnas = new ArrayList<String>();
        try (PreparedStatement pstm = this.conexion.prepareStatement(consulta)) {
            try (ResultSet rs = pstm.executeQuery()) {
                while (rs.next()) {
                    columnas.add(rs.getString("field"));
                    System.out.println(rs.getString("field"));
                }
            }
            return columnas;
        }
    }

}
