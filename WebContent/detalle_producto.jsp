<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.ropa.*"%>
<%
	HttpSession sesion = request.getSession(true);
	String nombre_user = (String) sesion.getAttribute("nombre_user") == null ? "Iniciar Sesión"
			: (String) sesion.getAttribute("nombre_user");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Logo</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/estilos.css">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
</head>
<body>
	<header class="sticky-top"> <nav
		class="navbar navbar-expand-lg navbar-dark bg-dark"> <a
		class="navbar-brand" href="#">Sportify</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarNavAltMarkup" container>
		<div class="navbar-nav">
			<a class="nav-item nav-link" href="index.jsp">Inicio <span
				class="sr-only">(current)</span></a> <a class="nav-item nav-link active"
				href="listaProductos.jsp">Productos</a> <a class="nav-item nav-link"
				href="#">Contactos</a> <a class="nav-item nav-link " href="#">¿Quienes
				Somos?</a> <a class="nav-item nav-link " href="login.jsp">Iniciar
				Sesión</a>
		</div>
	</div>
	</nav> </header>
	<div class="detalle_producto">
		<%
			Producto p = new Producto();
			int id = Integer.parseInt(request.getParameter("id"));
			String[] data = p.detalleProducto(id);
		%>
		<section class="detalle_imagen"> <img
			src="img/<%out.print(data[8]);%>" alt=""> </section>
		<section class="detalle_descripcion">
		<h1>
			<%
				out.print(data[7]);
			%>
		</h1>
		<p id="precio">
			<%
				out.print(data[5]);
			%>$
		</p>
		<form action="AddCart.jsp" method="post">
			<input type="submit" class="btn_compra" value="Agregar al carrito">
			<input type="text" class="texto" value="<%=id%>" name="id_producto">
			<input type="text" class="texto" value="<%=id%>" name="cantidad">
		</form>
		<div class="desplega">
			<p>INFORMACION DEL PRODUCTO</p>
			<input type="button" value="+" class="botones">
		</div>
		<section class="seccion1">
		<p>
			<%
				out.print(data[6]);
			%>
		</p>
		</section>
		<div class="desplega">
			<p>POLITICA DE REEMBOLSO</p>
			<input type="button" id="btns" value="+" class="botones">
		</div>
		<section class="seccion">
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
			Quibusdam magni omnis, maxime. Explicabo cum ad vel, facere nobis.
			Rerum laudantium ipsum obcaecati, nostrum eveniet aperiam beatae
			voluptatem molestias perferendis illo!</p>
		</section> </section>
	</div>
	<footer class="footer">
	<div class="contactos">
		<p>Contactos</p>
		<li class="contactos_content"><a
			href="https://www.facebook.com/tonykbezas" class="contacto__link">Anthony
				Cabezas</a></li>
		<li class="contactos_content"><a
			href="https://www.facebook.com/kevin.alias.12" class="contacto__link">Kevin
				Chacha</a></li>
		<li class="contactos_content"><a
			href="https://www.facebook.com/paul.pazos.1" class="contacto__link">Paul
				Pazos</a></li>
	</div>
	<div class="social">
		<a href="http://www.facebook.com" class="icon-facebook"> <img
			src="icon/facebook.png" alt="" class="footer__img"></a> <a href=""
			class="icon-twitter"><img src="icon/twitter.png" alt=""
			class="footer__img"></a> <a href="" class="icon-instagram"><img
			src="icon/instagram.png" alt="" class="footer__img"></a>
	</div>
	<p class="copy">&copy Sport TV todos los derechos reservados</p>
	<img src="icon/logo-ups.png" alt="" class="ups__img"> </footer>
	<script src="js/seccion.js"></script>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>