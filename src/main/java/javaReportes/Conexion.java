/**
 * Autor: Oscar Fuentes Alvarado
 * Fecha de creación: 25 de noviembre de 2022
 * Fecha de actualización: 06 de diciembre de 2022
 * Descripción:clase para hacer la conexión a la base de datos.
 */
package javaReportes;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Conexion {

    /**
     * Declaración de variables a utilzar, todas de tipo String y una variable
     * de tipo Conecction
     */
    private String driver;
    private String user;
    private String pwd;
    private String url;
    private String ip;
    private String puerto;
    private String db;

    private Connection connection;

    public Conexion() {
        /**
         * Asignación de valores
         */
        this.driver = "com.mysql.cj.jdbc.Driver";
        this.url = "jdbc:mysql://";
        this.ip = "172.17.0.2";
        this.puerto = "3306";
        this.db = "reporte";
        this.user = "root";
        this.pwd = "root";
    }

    /**
     * Método para realizar la conexión, el try es para gestionar los errores ya
     * sea que no pueda realizar la conexión por x motivo, si no se realiza
     * retornará un valor nulo
     */
    public Connection getConnection() throws ClassNotFoundException {
        try {
            Class.forName(this.driver);
            connection = DriverManager.getConnection(this.url
                    + this.ip + ":" + this.puerto + "/" + this.db,
                    this.user, this.pwd);
            return connection;
        } catch (SQLException e) {
            System.out.println("Error de conexión: " + e.getMessage());
        }
        return null;
    }
    
    public void close(){
        try {
            this.connection.close();
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
