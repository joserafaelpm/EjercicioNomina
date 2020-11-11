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
<h1> <b>Empleado</b> </h1>
  <div class="form-group row">
    <div class="col-sm-10">
    <a href="${pageContext.request.contextPath}/buscar.jsp" class="btn btn-primary">Buscar Empleado</a>
     <a href="${pageContext.request.contextPath}/registroEmpleado.jsp" class="btn btn-primary">Registrar Empleado</a>
     <a href="${pageContext.request.contextPath}/lista.jsp" class="btn btn-primary">Lista De Empleados</a>
    </div>
</body>
</html>