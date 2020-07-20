<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.ropa.*"%>
<%
	HttpSession sesion = request.getSession(true);
	if (sesion.getAttribute("nombre_user") == null || !sesion.getAttribute("perfil_user").equals("3")) {
		response.sendRedirect("index.jsp");
	}
	String nombre_user = (String) sesion.getAttribute("nombre_user") == null ? "Iniciar Sesión"
			: (String) sesion.getAttribute("nombre_user");
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
			<a class="nav-item nav-link " href="cart.jsp">Carrito </a> <a
				class="nav-item nav-link active" href="">Cuenta</a> <a
				class="nav-item nav-link " href="cerrar.jsp">Cerrar Sesión</a>
		</div>
	</div>
	</nav> </header>
	<%
		Usuario user = new Usuario();
	%>
	<div class="container" style="margin-top: 5%;">
		<h3>Información Personal</h3>
		<br>
		<form action="">
			<div class="row">
				<div class="col-md-4 mb-3">
					<label for="validationDefault03">Tus Nombres</label> <input
						type="text" class="form-control" id="validationDefault03"
						placeholder="Contraseña" required name="nombres"
						value="<%=nombre_user%>">
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 mb-3">
					<label for="validationDefault03">Correo</label> <input type="text"
						class="form-control" id="validationDefault03"
						placeholder="Contraseña" required name="clave"
						value="<%=sesion.getAttribute("id_user")%>" readonly="readonly">
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 mb-3">
					<label for="validationDefault03">Contraseña Actual</label> <input
						type="password" class="form-control" id="validationDefault03"
						placeholder="Confirma Contraseña" required name="clave">
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 mb-3">
					<label for="validationDefault03">Nueva Contraseña</label> <input
						type="password" class="form-control" id="validationDefault03"
						placeholder="Contraseña" required name="clave">
				</div>
			</div>
			<input class="btn btn-primary" type="submit" value="Actualizar Datos">
		</form>
	</div>

	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>