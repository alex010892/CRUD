<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Modificar cliente</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/estilos3.css">
</head>
<body>

	<form:form action="insertarCliente" class="form" method="post" modelAttribute="elCliente">
		
		<form:hidden path="id"/>
	
		<h2 class="form__title">Ingreso datos</h2>
		
		<div class="form__container">
			<div class="form__group">
				<label for="name" class="form__label">Nombre:</label>
				<form:input path="nombre" class="form__input" required="true"/> 
				<span class="form__line"></span>
				<!-- <form:errors path="nombre" style="color:red"/> -->
				<!-- <input type="text" id="name" class="form__input" name="nombre" placeholder=" "/> -->
				<!-- <input type="text" class="form__input" name="nombre" path="nombre" required>  -->								
			</div>
			<div class="form__group">
				<label for="apellido" class="form__label">Apellido:</label>
				<form:input path="apellido" class="form__input" required="true"/>
				<span class="form__line"></span>
				<!--  <input type="text" id="apellido" class="form__input" name="apellido" placeholder=" " />-->
			</div>
			<div class="form__group">
				<label for="email" class="form__label">E-mail:</label>								
				<form:input path="email" class="form__input" required="true"/>
				<span class="form__line"></span>
				<!-- <form:errors path="email" style="color:red"/> -->
				<!-- <input type="text" id="email" class="form__input" name="email" placeholder=" "/> -->
			</div>
						
			<input type="submit" class="form__submit" value="Insertar">
		</div>
	</form:form>
	

</body>
</html>