<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.ropa.*"%>
<%
	HttpSession sesion = request.getSession(true);
	if (sesion.getAttribute("nombre_user") == null || !sesion.getAttribute("perfil_user").equals("4")) {
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
			<a class="nav-item nav-link active" href="reportes.jsp">Reportes</a>
			<a class="nav-item nav-link" href="">Cuenta</a> <a
				class="nav-item nav-link " href="cerrar.jsp">Cerrar Sesión</a>
		</div>
	</div>
	</nav> </header>
	<div class="container" style="margin-top: 5%;">
		<div class="card-group">
			<div class="card">
				<a href="reporteClie.jsp"> <img class="card-img-top"
					src="img/img2.jpg" alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title">Reporte Clientes</h5>
						<p class="card-text">Listar clientes con sus facturas</p>
					</div>
				</a>
			</div>
			<div class="card">
				<a href="reporteClie.jsp"><img class="card-img-top"
					src="img/img1.png" alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title">Listado Productos</h5>
						<p class="card-text">Productos más vendidos por categoria</p>
					</div> </a>
			</div>
		</div>
	</div>

	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>