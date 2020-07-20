<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.ropa.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Calendar"%>
<%
	HttpSession sesion = request.getSession(true);
	if (sesion.getAttribute("nombre_user") == null) {
		response.sendRedirect("login.jsp");
	}
	String nombre_user = (String) sesion.getAttribute("nombre_user") == null ? "Iniciar Sesión"
			: (String) sesion.getAttribute("nombre_user");

	ArrayList<Articulo> articulos = sesion.getAttribute("carrito") == null ? null
			: (ArrayList) sesion.getAttribute("carrito");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
</head>
<body>
	<header class="sticky-top"> <nav
		class="navbar navbar-expand-lg navbar-dark bg-dark magenbajo"> <a
		class="navbar-brand" href="#">Sportify</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarNavAltMarkup" container>
		<div class="navbar-nav">
			<a class="nav-item nav-link" href="listaProductos.jsp">Productos</a>
			<a class="nav-item nav-link active" href="cart.jsp">Carrito </a> <a
				class="nav-item nav-link" href="inicio_cliente.jsp">Cuenta</a> <a
				class="nav-item nav-link " href="cerrar.jsp">Cerrar Sesión</a>
		</div>
	</div>
	</nav> </header>
	<div class="container" style="margin-top: 5%;">
		<form action="saveTarjeta.jsp">
			<h4>Datos de facturación</h4>
			<div class="form-group">
				<label for="validationDefault03">Tu nombre como aparece en
					la tarjeta</label> <input type="text" class="form-control"
					id="validationDefault03" placeholder="" required name="datos">
			</div>
			<div class="form-group">
				<label for="validationDefault03">Número de la tarjeta</label> <input
					type="text" class="form-control" id="validationDefault03"
					placeholder="" required name="ntarjeta" maxlength="12"
					minlength="12">
			</div>
			<label for="exampleFormControlSelect1">Fecha de expiración</label>
			<div class="form-inline">
				<div class="form-group mb-3 col-md-3">
					<label for="exampleFormControlSelect1"></label> <select
						class="form-control" id="exampleFormControlSelect1" name="annio"
						required="true">
						<option value="" disabled>Año</option>
						<%
							Calendar c = Calendar.getInstance();
							int year = c.get(Calendar.YEAR);
							for (int i = year; i <= (year + 10); i++) {
						%><option value=<%=i%>><%=i%></option>
						<%
							}
						%>
					</select>

				</div>

				<div class="form-group mb-3 col-md-3">
					<label for="exampleFormControlSelect1"></label> <select
						class="form-control" id="exampleFormControlSelect1" name="mes"
						required="true">
						<option value="" disabled>Mes</option>
						<option value="01">01</option>
						<option value="02">02</option>
						<option value="03">03</option>
						<option value="04">04</option>
						<option value="05">05</option>
						<option value="06">06</option>
						<option value="07">07</option>
						<option value="08">08</option>
						<option value="09">09</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select>

				</div>
				<div class="form-group mb-3 col-md-3">
					<label for="nseguridad"> Número de Seguridad </label> <input
						type="text" class="form-control" id="nseguridad" placeholder=""
						required name="nseguridad" maxlength="3">
				</div>
			</div>
			<div class="form-group">
				<input class="btn btn-primary" type="submit" value="Aceptar">
			</div>
		</form>
	</div>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>