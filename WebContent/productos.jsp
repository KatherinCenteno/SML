<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.ropa.*"%>
<%
	HttpSession sesion = request.getSession(true);
	if (sesion.getAttribute("nombre_user") == null || !sesion.getAttribute("perfil_user").equals("2")) {
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
			<a class="nav-item nav-link active" href="productos.jsp">Añadir
				Productos</a> <a class="nav-item nav-link" href="categoria.jsp">Añadir
				Categorias</a> <a class="nav-item nav-link" href="">Cuenta</a> <a
				class="nav-item nav-link " href="cerrar.jsp">Cerrar Sesión</a>
		</div>
	</div>
	</nav> </header>
	<div class="container" style="margin-top: 5%;">
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<h3>Ingreso de Productos</h3>
				<form action="ingresoProd.jsp">
					<div class="form-group">
						<label for="validationDefault03">Nombre Producto</label> <input
							type="text" class="form-control" id="validationDefault03"
							placeholder="Producto" name="nombre" required>
					</div>
					<div class="form-group">
						<label for="exampleFormControlTextarea1">Descripción</label>
						<textarea class="form-control" id="exampleFormControlTextarea1"
							rows="3" required name="descripcion"></textarea>
					</div>
					<div class="form-group">
						<label for="validationDefault03">Precio</label> <input type="text"
							class="form-control" id="validationDefault03"
							placeholder="Por ejemplo: 120.50" required name="precio">
					</div>

					<div class="form-group">
						<label for="validationDefault03">Stock</label> <input type="text"
							class="form-control" id="validationDefault03"
							placeholder="¿Cuántos productos tienes?" required name="stock">
					</div>
					<div class="form-group">
						<label for="validationDefault03">Nombre de la imagen</label> <input
							type="text" class="form-control" id="validationDefault03"
							placeholder="Por ejemplo: MiImagen.jpg" required name="imagen">
					</div>
					<div class="form-group">
						<label for="validationDefault03">Talla</label> <input type="text"
							class="form-control" id="validationDefault03"
							placeholder="Por ejemplo: MiImagen.jpg" required name="talla">
					</div>
					<div class="form-group">
						<label for="exampleFormControlSelect1">Escoge la categoria
							de tu producto</label> <select class="form-control"
							id="exampleFormControlSelect1" name="categoria" required="true">
							<option>Selecciona una...</option>
							<%
								Categoria cat = new Categoria();
								out.print(cat.nombreCategorias());
							%>
						</select>
					</div>
					<div class="form-group">
						<input class="btn btn-primary" type="submit"
							value="Añadir este producto">
					</div>
				</form>
			</div>
		</div>
	</div>

	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
