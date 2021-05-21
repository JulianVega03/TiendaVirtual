package services;

import conexion.Conexion;
import entities.Detalle;

public class DetalleDao extends Conexion<Detalle> implements GenericDao<Detalle>{
	
	public DetalleDao(){
		super(Detalle.class);
	}

}
