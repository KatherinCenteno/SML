<%@page import="com.sun.javafx.beans.IDProperty"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.ropa.Articulo"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		HttpSession sesion = request.getSession(true);
		String nombre = (String) sesion.getAttribute("nombre_user");

		int cantidad = Integer.parseInt(request.getParameter("cantidad"));
		int id_producto = Integer.parseInt(request.getParameter("id_producto"));

		ArrayList<Articulo> articulos = sesion.getAttribute("carrito") == null ? new ArrayList<>()
				: (ArrayList) sesion.getAttribute("carrito");

		boolean flag = false;

		if (articulos.size() > 0) {
			for (Articulo a : articulos) {
				if (id_producto == a.getIdProducto()) {
					a.setCantidad(a.getCantidad() + cantidad);
					flag = true;
					break;
				}
			}
		}

		if (!flag) {
			articulos.add(new Articulo(id_producto, cantidad));
		}

		sesion.setAttribute("carrito", articulos);
		response.sendRedirect("cart.jsp");
	%>
	<%=nombre%>
</body>
</html>
