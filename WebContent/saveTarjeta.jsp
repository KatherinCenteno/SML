<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.ropa.*"%>
<%
	HttpSession sesion = request.getSession(true);
	if (sesion.getAttribute("nombre_user") == null) {
		response.sendRedirect("login.jsp");
	}
	String nombre_user = (String) sesion.getAttribute("nombre_user") == null ? "Iniciar Sesión"
			: (String) sesion.getAttribute("nombre_user");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<META HTTP-EQUIV="REFRESH" CONTENT="2;URL=factura.jsp">
</head>
<body>
	<%
		Usuario user = new Usuario();
		long numero = Long.parseLong(request.getParameter("ntarjeta"));
		String propietario = (String) sesion.getAttribute("id_user");
		String fecha = request.getParameter("annio") + "-" + request.getParameter("mes") + "-"
				+ "09";
		int numSeguridad = Integer.parseInt(request.getParameter("nseguridad"));
		user.saveTarjeta(numero, propietario, numSeguridad, fecha);
	%>

</body>
</html>