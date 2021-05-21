package services;

import java.util.Date;

import conexion.Conexion;
import entities.Cliente;

public class ClienteDao extends Conexion<Cliente> implements GenericDao<Cliente> {

	public ClienteDao() {
		super(Cliente.class);
	}

	public String iniciarSesion(String email, String clave) {
		
		Cliente usuario;

		if(email != "" && clave != ""){
			
			if (find(email) != null) {
	
				usuario = find(email);
	
				if (usuario.getClave().equals(clave)) {
					
					return "SUCCESS";
					
				} else {
					return "Contrase�a Incorrecta";
				}
	
			} else {
				return "El Usuario no se encuentra registrado";
			}
		}else{
			return "Debe Completar Todos Los Campos";
		}
	}

	public String registrarse(String nombre, String apellido, String direccion,Date fechaNacimiento,String telefono, String email, String contrase�a){

	if(nombre!="" && apellido!="" && direccion!="" && fechaNacimiento!=null && telefono!="" && email!="" && contrase�a!=""){
		
			if (contrase�a.length() > 6) {
	
				if (find(email) == null) {
					
					Cliente c = new Cliente(email, apellido, contrase�a, direccion, fechaNacimiento, nombre, telefono);
					
					insert(c);
					
					return "<h4>Registro Exitoso!!</h4>";
				} else {
					return "Ya se ha registrado un usuario con este correo:  <b>"+email+"</b>";
				}
				
			} else {
				return "La clave debe contener al menos 7 digitos";
			}
			
     }else{
			  return "Debe Completar Todos Los Campos";
	      }
	
	
	}
	
}
