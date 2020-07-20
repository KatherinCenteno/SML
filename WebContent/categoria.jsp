<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.ropa.*"%>
<%
	HttpSession sesion = request.getSession(true);
	if (sesion.getAttribute("nombre_user") == null || !sesion.getAttribute("perfil_user").equals("2")) {
		response.sendRedirect("index.jsp");
	}
	String nombre_user = (String) sesion.getAttribute("nombre_user") == null
			? "Iniciar Sesión"
			: (String) sesion.getAttribute("nombre_user");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<meta charset="UTF-8">
<title>Logo</title>
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<link rel="stylesheet" href="css/estilos.css">
<script language="JavaScript">
	function aviso(url) {
		if (!confirm("ALERTA!! va a proceder a eliminar este registro, si desea eliminarlo de click en ACEPTAR\n de lo contrario de click en CANCELAR.")) {
			return false;
		} else {
			document.location = url;
			return true;
		}
	}
</script>
</head>
<body>
	<header class="header">
	<div class="contenedor">
		<h1 class="logo">Sports TV</h1>
		<span class="icon-menu"></span>
		<nav class="nav">
		<ul class="menu">
			<li class="menu__item"><a class="menu__link" href="index.jsp">Inicio</a></li>
			<li class="menu__item"><a class="menu__link "
				href="producto.jsp">Productos</a></li>
			<li class="menu__item"><a class="menu__link" href="">Quienes
					Somos</a></li>
			<li class="menu__item"><a class="menu__link" href="login.jsp"><%=nombre_user%></a></li>
			</a>
			</li>
			<li><a href="cerrar.jsp">Cerrar Sesión</a></li>
		</ul>
		</nav>
	</div>
	</header>
	<div class="banner"></div>
	<div class="kiosko">
		<h1 class="tile">Agregar Categoria</h1>
	</div>
	<div class="formulario">
		<form action="ingresoCat.jsp">
			<label for="" class="label">Nombre Categoria</label> <input
				type="text" class="input" name="categoria"> <input
				type="submit" class="btn_compra" value="Crear">
		</form>
	</div>
	<div class="formulario">
		<%
			Categoria category = new Categoria();

			out.print(category.consultarCategorias());
		%>
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

</body>
</html>