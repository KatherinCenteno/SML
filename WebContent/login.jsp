<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	HttpSession sesion = request.getSession(true);
	String nombre_user = (String) sesion.getAttribute("nombre_user") == null ? "Iniciar Sesión"
			: (String) sesion.getAttribute("nombre_user");
	if (!nombre_user.equals("Iniciar Sesión")) {
		if (sesion.getAttribute("perfil_user").equals("1")) {
			response.sendRedirect("inicio_administrador.jsp");
		}
		if (sesion.getAttribute("perfil_user").equals("2")) {
			response.sendRedirect("inicio_vendedor.jsp");
		}
		if (sesion.getAttribute("perfil_user").equals("3")) {
			response.sendRedirect("inicio_cliente.jsp");
		}
	}
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
			<a class="nav-item nav-link" href="index.jsp">Inicio <span
				class="sr-only">(current)</span></a> <a class="nav-item nav-link"
				href="listaProductos.jsp">Productos</a> <a class="nav-item nav-link"
				href="#">Contactos</a> <a class="nav-item nav-link" href="#">¿Quienes
				Somos?</a> <a class="nav-item nav-link active" href="login.jsp">Iniciar
				Sesión</a>
		</div>
	</div>
	</nav> </header>
	<div class="container" style="margin-top: 5%;">
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<form action="autenticar.jsp" method="post">
					<div class="form-group">
						<label for="exampleInputEmail1">Correo Electronico</label> <input
							type="email" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" placeholder="Ingresa tu email"
							name="usuario" required> <small id="emailHelp"
							class="form-text text-muted">Nunca compartiremos tu email
							con nadie.</small>
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Contraseña</label> <input
							type="password" class="form-control" id="exampleInputPassword1"
							placeholder="Contraseña" name="clave" required>
					</div>
					<button type="submit" class="btn btn-primary">Submit</button>
				</form>
				<a href="registro.jsp">Resgistrate Ahora</a>
			</div>
		</div>
	</div>

	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>