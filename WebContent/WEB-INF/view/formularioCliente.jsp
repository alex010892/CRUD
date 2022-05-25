<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Agregar cliente</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/estilos2.css">
	</head>
<body>

	<form action="insertarCliente" class="form" method="post">
		<h2 class="form__title">Ingreso datos</h2>
		
		<div class="form__container">
			<div class="form__group">
				<input type="text" id="nombre" class="form__input" name="nombre" placeholder=" " required/> 				
				<form:errors path="nombre" style="color:red"/> 
				<label for="nombre" class="form__label">Nombre:</label>
				<span class="form__line"></span>
			</div>
			<div class="form__group">
				<input type="text" id="apellido" class="form__input" name="apellido" placeholder=" " required>
				<form:errors path="apellido" style="color:red"/> 
				<label for="apellido" class="form__label">Apellido:</label>
				<span class="form__line"></span>
			</div>
			<div class="form__group">
				<input type="text" id="email" class="form__input" name="email" placeholder=" " required>
				<form:errors path="email" style="color:red"/> 
				<label for="email" class="form__label">E-mail:</label>
				<span class="form__line"></span>
			</div>
			
			<input type="submit" class="form__submit" value="Insertar">
		</div>
	</form>
</body>
</html>