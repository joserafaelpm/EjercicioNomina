<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Empleado</title>
</head>
<body>
<jsp:useBean class="model.EmpleadoDAO" id = "empleadoDAO" ></jsp:useBean>
<h1><b>Empleados</b></h1>
  	<table class="table">
  <thead>
    <tr>
      <th scope="col">Codigo</th>
      <th scope="col">Cedula</th>
      <th scope="col">Nombre</th>
      <th scope="col">Fecha Nacimiento</th>
      <th scope="col">Fecha Ingreso</th>
      <th scope="col">Fecha Retiro</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${empleadoDAO.list()}" var = "empleado" >
    <tr>
      <th scope="row"><c:out value="${empleado.codigo}" /></th>
      <td><c:out value="${empleado.cedula}" /></td>
      <td><c:out value="${empleado.nombre}" /></td>
      <td><c:out value="${empleado.fechanacimiento}" /></td>
      <td><c:out value="${empleado.fechaingreso}" /></td>
      <td><c:out value="${empleado.fecharetiro}" /></td>
      </del><td><a href="eliminar?&codigo=${empleado.codigo}">Eliminar</a></td>
      <td><a href="mostrar?&codigo=${empleado.codigo}">Editar</a></td>
    </tr>
 </c:forEach>
  </tbody>
</table>
</body>
</html>