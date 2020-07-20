<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	HttpSession sesion = request.getSession(true);
	sesion.removeAttribute("id_user");
	sesion.removeAttribute("nombre_user");
	sesion.removeAttribute("perfil_user");
	sesion.removeAttribute("carrito");
	response.sendRedirect("index.jsp");
%>