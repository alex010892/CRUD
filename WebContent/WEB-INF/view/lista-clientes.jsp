<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista clientes</title>

<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css "/>

</head>
<body>

	<div id="container">
		<header>
			<h1>CRUD MySQL</h1>
			<h2>Lista de clientes</h2>
		</header>
		
		<section id="content">

			<!--Hemos llegado a la lista de futuros clientes!!!  -->
			<table border="1">

				<tr>

					<th>Nombre</th>
					<th>Apellido</th>
					<th>Email</th>
					<th>Modificar</th>
					<th>Eliminar</th>

				</tr>

				<c:forEach var="clienteTemp" items="${clientes }">

					<!-- link para actualizar -->	
					<c:url var="linkActualizar" value="/cliente/muestraFormularioActualizar">
		
						<c:param name="clienteId" value="${clienteTemp.id}"/>
		
					</c:url>
		
					<!-- link para eliminar -->	
					<c:url var="linkEliminar" value="/cliente/eliminar">
		
						<c:param name="clienteId" value="${clienteTemp.id}"/>
		
					</c:url>
	
					<tr>
		
						<td>${clienteTemp.nombre }</td>
						<td>${clienteTemp.apellido }</td>
						<td>${clienteTemp.email }</td>

						<td><a href="${linkActualizar}"><input type="button" value="Modificar"/></a></td>
			
						<td><a href="${linkEliminar}"><input type="button" value="Eliminar" onclick="if(!(confirm('Vas a eliminar un registro. ?Est?s seguro?'))) return false"/></a></td>
		
					</tr>
	
				</c:forEach>
			</table>
			
			<br/><br/>
			<input type="button" value="Agregar Cliente" onclick="window.location.href='muestraFormularioAgregar'; return false;" id="agregarCliente"/>				
		</section>
		
		<footer>	
			Alex Murcia WEB &copy; 2022
		</footer>
	</div>

</body>
</html>