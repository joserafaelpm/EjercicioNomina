package model;

import util.GenericDAO;
import util.Conexion;
import entity.Empleado;

public class EmpleadoDAO extends Conexion<Empleado> implements GenericDAO<Empleado> {

 public EmpleadoDAO() { 
	 super(Empleado.class);
 }
}