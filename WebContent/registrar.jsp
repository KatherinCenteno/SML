<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.ropa.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<META HTTP-EQUIV="REFRESH" CONTENT="2;URL=login.jsp">
<title>Insert title here</title>
</head>
<body>
	<%
		String nombre = request.getParameter("nombres");
		String clave = request.getParameter("clave");
		String nick = request.getParameter("nick");
		Usuario user = new Usuario();
		user.insertarUsuario(nombre, clave, nick, 3);
	%>
	Registrado Correctamente! Inicia Sesi�n para empezar a comprar.
</body>
</html>