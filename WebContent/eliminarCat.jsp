<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.ropa.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<META HTTP-EQUIV="REFRESH" CONTENT="1;URL=categoria.jsp">
</head>
<body>
	<%
		int id = Integer.parseInt(request.getParameter("id"));
		Categoria cat = new Categoria();
		cat.eliminarCategoria(id);
		out.println("Registro eliminado correctamente!");
	%>
</body>
</html>