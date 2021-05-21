package services;

import conexion.Conexion;
import entities.Producto;

public class ProductoDao extends Conexion<Producto> implements GenericDao<Producto>{
	
	public ProductoDao(){
		super(Producto.class);
	}

}
