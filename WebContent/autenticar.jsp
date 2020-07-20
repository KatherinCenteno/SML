<%@page import="java.lang.ProcessBuilder.Redirect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="true" import="com.conexion.*"
	import="com.ropa.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		Usuario user = new Usuario();
		Menu menu = new Menu();

		String usuario = request.getParameter("usuario");
		String clave = request.getParameter("clave");

		boolean login = user.buscarUsuario(usuario, clave);

		if (login) {
			HttpSession sess = request.getSession();
			sess.setAttribute("id_user", user.getInfoUser()[0]);
			sess.setAttribute("nombre_user", user.getInfoUser()[1]);
			sess.setAttribute("perfil_user", user.getInfoUser()[2]);

			if (user.getInfoUser()[2].equals("3")) {

				response.sendRedirect("inicio_cliente.jsp");

			} else if (user.getInfoUser()[2].equals("2")) {
				response.sendRedirect("inicio_vendedor.jsp");

			} else if (user.getInfoUser()[2].equals("1")) {

				response.sendRedirect("inicio_administrador.jsp");
			} else if (user.getInfoUser()[2].equals("4")) {

				response.sendRedirect("inicio_gerente.jsp");
			}

		} else {
			response.sendRedirect("login.jsp");
		}
	%>
</body>
</html>