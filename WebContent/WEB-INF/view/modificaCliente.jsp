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
				<!-- <input type="text" id="name" class="form__input" name="nombre" placeholder=" "/> -->
				<form:input path="nombre" class="form__input"/>
				<form:errors path="nombre" style="color:red"/>				
				<span class="form__line"></span>
			</div>
			<div class="form__group">
				<label for="apellido" class="form__label">Apellido:</label>
				<!--  <input type="text" id="apellido" class="form__input" name="apellido" placeholder=" " />-->				
				<form:input path="apellido" class="form__input"/>
				<span class="form__line"></span>
			</div>
			<div class="form__group">
				<label for="email" class="form__label">E-mail:</label>
				<!-- <input type="text" id="email" class="form__input" name="email" placeholder=" "/> -->				
				<form:input path="email" class="form__input" />
				<form:errors path="email" style="color:red"/>
				<span class="form__line"></span>
			</div>
						
			<input type="submit" class="form__submit" value="Insertar">
		</div>
	</form:form>
	

</body>
</html>