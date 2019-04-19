/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cad;

import java.sql.CallableStatement;
import java.sql.SQLException;
import javaBean.PersonaSubscrita;
import javax.swing.JOptionPane;
import util.ConexionDB;

/**
 *
 * @author CUSPIDE4
 */
public class PersonaSubscritaCad {
    
    public static boolean registrarCorreo(PersonaSubscrita ps){
        
        boolean registro;
        
        try {
            ConexionDB.getConexionDB().setAutoCommit(false);
            String sql = "call sp_insertarCorreos(?)";
            CallableStatement cb = ConexionDB.getConexionDB().prepareCall(sql);
            
            cb.setString(1, ps.getEmail());
            
            registro = cb.executeUpdate() > 0;
            cb.getConnection().commit();

        } catch (SQLException e) {
            System.out.println(e.getMessage());
            registro = false;
        }
        return registro;
    }
    
}
