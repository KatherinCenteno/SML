<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.ropa.*"%>
<%@page import="java.util.ArrayList"%>
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
<link rel="stylesheet" href="css/estilos.css">
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
	<div class="container">
		<form action="tarjeta.jsp">
			<div class="row colorbartitle" style="margin-top: 5%;">
				<div class="col-md-6">Item(s) Seleccionados</div>
				<div class="col-md-2">Precio Unitario</div>
				<div class="col-md-2">Cantidad</div>
				<div class="col-md-1">Subtotal</div>
				<div class="col-md-1">Operación</div>
			</div>
			<%
				Producto p = new Producto();
				String[] data;
				try {
					for (Articulo a : articulos) {
						data = p.detalleProducto(a.getIdProducto());
						int id = a.getIdProducto();
			%>
			<div class="row" style="max-height: 120px;">
				<div class="col-md-6">
					<div class="row">
						<div class="col">
							<a href=""><img class="cartImage" src="img/<%=data[8]%>"
								alt=""></a>
						</div>
						<div class="col">
							<a href=""> <%=data[7]%>
							</a>
						</div>
					</div>
				</div>
				<div class="col-md-2"><%=data[5]%></div>
				<div class="col-md-2"><%=a.getCantidad()%></div>
				<div class="col-md-1"><%=Math.round(Double.parseDouble(data[5]) * a.getCantidad())%></div>
				<div class="col-md-1">
					<a href="eliminar.jsp?id=<%out.print(id);%>">Eliminar</a>
				</div>
			</div>
			<%
				}
				} catch (Exception e) {
			%>
			<div class="row">Carrito Vacio</div>
			<%
				}
			%>

			<div class="form-group">
				<input class="btn btn-primary" type="submit" value="Realizar Compra"
					onclick="tarjeta.jsp">
			</div>
		</form>
	</div>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>