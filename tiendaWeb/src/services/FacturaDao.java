package services;

import conexion.Conexion;
import entities.Factura;

public class FacturaDao extends Conexion<Factura> implements GenericDao<Factura>{
	
	public FacturaDao(){
		super(Factura.class);
	}

}
