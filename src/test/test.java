package test;

import static org.junit.Assert.*;

//import java.sql.Connection;
//import org.junit.After;
//import org.junit.AfterClass;
//import org.junit.Before;
//import org.junit.BeforeClass;
import org.junit.Test;
import DB.conexion;
import DAO.LoginDAO;

public class test {
	
	@Test
	public void testUsuarioCorrecto() throws Exception {
		System.out.println("TEST Ok: Ingresar nombre de usuario y contrase�a correctos.");
		try {
			
			LoginDAO instance = new LoginDAO();
			String rut = instance.validar("victor", "1234");
			assertEquals(rut, "15737935-6");
			
		} catch(IllegalArgumentException e) {
			System.out.println(e.getMessage());
			fail(e.getMessage());
		}
	}
	
	@Test
	public void testUsuarioIncorrecto() throws Exception {
		System.out.println("TEST Ok: Ingresar nombre de usuario y contrase�a incorrecto.");
		try {
			LoginDAO instance = new LoginDAO();
			String rut = instance.validar("ricardo", "00000");
			assertEquals(rut, "6565965-4");
		} catch(IllegalArgumentException e) {
			System.out.println(e.getMessage());
			fail(e.getMessage());
		}
	}
	
	@Test
	public void testUsuarioVacio() throws Exception {
		System.out.println("TEST Ok: Ingresar valores vac�os.");
		try {
			LoginDAO instance = new LoginDAO();
			String rut = instance.validar("", "");
			assertEquals(rut, "6565965-4");
		} catch(IllegalArgumentException e) {
			System.out.println(e.getMessage());
			fail(e.getMessage());
		}
	}
	
	@Test
	public void testConexion() {
		System.out.println("TEST Ok: Conexi�n");
		try {
			conexion instance = new DB.conexion();
			String resultado = "";
			if(instance.conectar() != null) {
				resultado = "Conexion OK";
			}else {
				resultado = "Conexion noOK";
			}
			assertEquals(resultado, "Conexion OK");
		} catch(IllegalArgumentException e) {
			System.out.println(e.getMessage());
			fail(e.getMessage());
		}
	}

}
