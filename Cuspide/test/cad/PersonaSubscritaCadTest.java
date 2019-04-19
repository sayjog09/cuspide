/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cad;

import javaBean.PersonaSubscrita;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author CUSPIDE4
 */
public class PersonaSubscritaCadTest {
    
    public PersonaSubscritaCadTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }

    /**
     * Test of registrarCorreo method, of class PersonaSubscritaCad.
     */
    @Test
    public void testRegistrarCorreo() {
        System.out.println("registrarCorreo");
        PersonaSubscrita ps = new PersonaSubscrita();
        boolean expResult = true;
        
        ps.setEmail("ijieufjwei");
        
        boolean result = PersonaSubscritaCad.registrarCorreo(ps);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }
    
}
