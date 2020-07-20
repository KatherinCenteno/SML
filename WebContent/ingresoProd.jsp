<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.ropa.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<link rel="stylesheet" href="css/bootstrap.min.css">
<META HTTP-EQUIV="REFRESH" CONTENT="2;URL=login.jsp">
</head>
<body>
	<%
		String nombre = request.getParameter("nombre");
		Double precio = Double.parseDouble(request.getParameter("precio"));
		String talla = request.getParameter("talla");
		String stock = request.getParameter("stock");
		String descripcion = request.getParameter("descripcion");
		String url_imagen = request.getParameter("imagen");
		int categoria = Integer.parseInt(request.getParameter("categoria").trim());
		Producto p = new Producto();
		try {
			p.insertarProducto(nombre, categoria, talla, stock, precio, descripcion, url_imagen);
			out.print("Registro insertado correctamente!");
		} catch (Exception e) {
			out.print("no lo hemos logrado" + e);
		}
	%>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>