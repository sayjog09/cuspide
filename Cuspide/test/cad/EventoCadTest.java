/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cad;

import java.util.ArrayList;
import javaBean.Evento;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author CUSPIDE4
 */
public class EventoCadTest {
    
    public EventoCadTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }

    /**
     * Test of listarEventos method, of class EventoCad.
     */
    @Test
    public void testListarEventos() {
        System.out.println("listarEventos");
        ArrayList<Evento> expResult = null;
        ArrayList<Evento> result = EventoCad.listarEventos(0, 3);
        
        for (Evento evento : result) {
            System.out.println(evento.getNombre()+"\t"
                    +evento.getDescripcion()+"\t"
                    +evento.getFoto()+"\t"
                    +evento.getLugar()+"\t"
                    +evento.getFecha());
        }
        
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }
    
}
