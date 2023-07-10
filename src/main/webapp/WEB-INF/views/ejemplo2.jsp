<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${!error}"> 
	<p>Datos recibidos en el servidor:<br>
	  <b>Nombre: </b>${nombre}<br>
	  <b>Edad: </b>${edad}<br>
	</p>
</c:if>
<c:if test="${error}"> 
	<p style="color: red;">Error: Los campos son obligatorios.</p>
</c:if>