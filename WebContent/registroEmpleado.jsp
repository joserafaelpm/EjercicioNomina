<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<%--  --%>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  </script>
<title> Registro de Empleado</title>
</head>
<body>
<h1><b>Registro De Empleados</b></h1>
<c:if test="${empleado != null}">
                           <%--  <form action="${pageContext.request.contextPath}/ActualizarEmpleado?accion=edita&codigo=${empleado.codigo}"  method="post"> --%>
                           <form action="actualizar"  method="POST">
                        </c:if>
                        <c:if test="${empleado == null}">
                           <%--  <form action="${pageContext.request.contextPath}/AgregarEmpleado?accion=agregar&codigo=${empleado.codigo}"  method="POST"> --%>
                            <form action="registrar"  method="POST">
                        </c:if>

  <div class="form-group row">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Codigo:</label>
    <div class="col-sm-10">
      <input type="text" name="codigo" value="${empleado.codigo}"  class="form-control" id="inputEmail3">
    </div>
  </div>
  
  <div class="form-group row">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Nombre:</label>
    <div class="col-sm-10">
      <input type="text" name="nombre" value="${empleado.nombre}"  class="form-control" id="inputEmail3">
    </div>
  </div>
  
  <div class="form-group row">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Cedula:</label>
    <div class="col-sm-10">
      <input type="text" name="cedula" value="${empleado.cedula}"  class="form-control" id="inputEmail3">
    </div>
  </div>
  
  <div class="form-group row">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Fecha Nacimiento:</label>
    <div class="col-sm-10">
    <input type="date" name="fechaNacimiento" value="<fmt:formatDate pattern='yyyy-MM-dd' value='${empleado.fechanacimiento}' />" >
    </div>
  </div>
  
  
  <div class="form-group row">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Fecha Ingreso:</label>
    <div class="col-sm-10">
     <input type="date" name="fechaIngreso" value="<fmt:formatDate pattern='yyyy-MM-dd' value='${empleado.fechaingreso}' />"  >
    </div>
  </div>
  
  <div class="form-group row">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Fecha Retiro:</label>
    <div class="col-sm-10">
     <input type="date" name="fechaRetiro" value="<fmt:formatDate pattern='yyyy-MM-dd' value='${empleado.fecharetiro}' />" >
    </div>
  </div>
  
  
  <div class="form-group row">
    <div class="col-sm-10">
      <button type="submit" class="btn btn-primary">Registrar</button>
     <a href="${pageContext.request.contextPath}/buscar.jsp" class="btn btn-primary">Volver</a>
    </div>
    </div>
    
 <%--    <c:if test="${empleado != null}">
                            <form action="${pageContext.request.contextPath}/ActualizarEmpleado?accion=edita&codigo=${empleado.codigo}"  method="post">
                           <form action="ActualizarEmpleado"  method="POST">
                        </c:if>
                        <c:if test="${empleado == null}">
                            <form action="${pageContext.request.contextPath}/AgregarEmpleado?accion=agregar&codigo=${empleado.codigo}"  method="POST">
                            <form action="AgregarEmpleado"  method="POST">
                        </c:if> --%>
    
  
</form>
</body>
</html>