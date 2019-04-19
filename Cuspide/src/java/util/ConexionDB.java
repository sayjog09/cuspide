/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

/**
 *
 * @author CUSPIDE4
 */
public class ConexionDB {
    
    public ConexionDB(){
        
    }
    
    private static Connection conexionDB;
    
    public static Connection getConexionDB(){
        
        try {
            if (conexionDB == null) {
                
                Properties props = new Properties();
                props.load(ConexionDB.class.getClassLoader().getResourceAsStream("util/conexionDB.properties"));
                
                String driver = props.getProperty("jdbc.driver");
                
                if (driver != null) {
                    Class.forName(driver);
                }
                
                String url = props.getProperty("jdbc.url");
                String username = props.getProperty("jdbc.username");
                String password = props.getProperty("jdbc.password");
                
                conexionDB = (Connection) DriverManager.getConnection(url, username, password);
                System.out.println("conexión exitosa");
            }
        } catch (IOException | ClassNotFoundException | SQLException e) {
            System.out.println(e.getMessage());
            System.out.println("error");
           
        }
        return conexionDB;
    }
   
}
