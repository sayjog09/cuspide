/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cad;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javaBean.Evento;
import javax.swing.JOptionPane;
import util.ConexionDB;

/**
 *
 * @author CUSPIDE4
 */
public class EventoCad {
    
    public static ArrayList<Evento> listarEventos(int iniciPagina, int numeroPagina){
        
        ArrayList<Evento> lista = null;

        try {

            ConexionDB.getConexionDB().setAutoCommit(false);
            String sql = "call sp_listarEventos('"+(iniciPagina-1)*3+"', '"+numeroPagina+"')";
            CallableStatement ps = ConexionDB.getConexionDB().prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            rs.last();

            if (rs.getRow() > 0) {
                lista = new ArrayList<>();
                rs.beforeFirst();
                
                while (rs.next()) {

                    Evento evento = new Evento();
                    evento.setNombre(rs.getString("nombre"));
                    evento.setLugar(rs.getString("lugar"));
                    evento.setFecha(rs.getDate("fecha"));
                    evento.setDia(rs.getInt("dia"));
                    evento.setMes(rs.getString("mes"));
                    evento.setDescripcion(rs.getString("descripcion"));
                    evento.setFoto(rs.getString("foto"));
                    
                    lista.add(evento);
                }
                ConexionDB.getConexionDB().commit();
            }
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, e.getMessage(), "Evento", JOptionPane.ERROR_MESSAGE);
        }
        return lista;
    }
    
    public static int contarfilas(){
        
        int contador = 0;
        try {

            ConexionDB.getConexionDB().setAutoCommit(false);
            String sql = "SELECT * FROM eventos";
            CallableStatement ps = ConexionDB.getConexionDB().prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            rs.last();

            if (rs.getRow() > 0) {
                rs.beforeFirst();
                
                while (rs.next()) {
                    contador ++;
                }
                ConexionDB.getConexionDB().commit();
            }
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, e.getMessage(), "Evento", JOptionPane.ERROR_MESSAGE);
            contador = 0;
        }
        return contador;
    }
}
