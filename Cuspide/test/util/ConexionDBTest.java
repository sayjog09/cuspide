/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.sql.Connection;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author CUSPIDE4
 */
public class ConexionDBTest {
    
    public ConexionDBTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }

    /**
     * Test of getConexionDB method, of class ConexionDB.
     */
    @Test
    public void testGetConexionDB() throws Exception{
        System.out.println("getConexionDB");
        Connection expResult = null;
        Connection result = ConexionDB.getConexionDB();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }
    
}
