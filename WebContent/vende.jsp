<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.ArrayList"
	import="com.ropa.*"%>
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
<META HTTP-EQUIV="REFRESH" CONTENT="2;URL=login.jsp">
</head>
<body>
	<%
		Factura fact = new Factura();
		String usuario = (String) sesion.getAttribute("id_user");
		if (fact.vender(usuario)) {
			out.print("Venta Exitosa!");
			for (Articulo a : articulos) {
				fact.restaArticulo(a);
			}
		} else {
			out.print("No se pudo vender");
		}
	%>
</body>
</html>