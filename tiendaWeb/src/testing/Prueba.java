package testing;

import java.util.Date;

import entities.Cliente;
import services.ClienteDao;

public class Prueba {

	public static void main(String[] args) {
	
		Cliente c = new Cliente();
		
		c.setNombre("julian");
		c.setApellido("vega");
		c.setEmail("julian_bec@gmail.com");
		c.setDireccion("av 7");
		c.setFechaNacimiento(new Date());
		c.setClave("vega777");
		c.setTelefono("3143127428");
		
		ClienteDao cdao = new ClienteDao();
		
		cdao.insert(c);

	}

}
