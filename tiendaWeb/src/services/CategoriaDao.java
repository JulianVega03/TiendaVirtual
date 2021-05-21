package services;

import conexion.Conexion;
import entities.Categoria;

public class CategoriaDao extends Conexion<Categoria> implements GenericDao<Categoria>{
	
	public CategoriaDao(){
		super(Categoria.class);
	}

}
