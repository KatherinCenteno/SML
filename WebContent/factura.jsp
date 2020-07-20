<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.ropa.*" import="java.util.*"%>
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
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/estilos.css">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
</head>
<body>
	<%
		Calendar c = Calendar.getInstance();
		String fecha = c.get(Calendar.YEAR) + "-" + c.get(Calendar.MONTH) + "-" + c.get(Calendar.DATE);
		double total = 0;
	%>
	<div class="container">
		<br>
		<form action="vende.jsp">
			<div class="form-group row">
				<label for="staticEmail" class="col-sm-2 col-form-label">Cliente</label>
				<div class="col-sm-10">
					<input type="text" readonly class="form-control-plaintext"
						id="staticEmail" value="<%=sesion.getAttribute("nombre_user")%>">
				</div>
			</div>
			<div class="form-group row">
				<label for="inputPassword" class="col-sm-2 col-form-label">Fecha</label>
				<div class="col-sm-10">
					<input type="text" readonly class="form-control-plaintext"
						id="staticEmail" value="<%=fecha%>">
				</div>
			</div>

			<div class="row colorbartitle" style="margin-top: 5%;">
				<div class="col-md-6">Productos</div>
				<div class="col-md-2">Precio Unitario</div>
				<div class="col-md-2">Cantidad</div>
				<div class="col-md-1">Subtotal</div>
			</div>
			<%
				Producto p = new Producto();
				String[] data;
				try {
					for (Articulo a : articulos) {
						data = p.detalleProducto(a.getIdProducto());
						int id = a.getIdProducto();
			%>
			<div class="row" style="max-height: 120px;">
				<div class="col-md-6">
					<div class="row">
						<div class="col">
							<%=data[7]%>
						</div>
					</div>
				</div>
				<div class="col-md-2"><%=data[5]%></div>
				<div class="col-md-2"><%=a.getCantidad()%></div>
				<div class="col-md-1"><%=Double.parseDouble(data[5]) * a.getCantidad()%></div>
				<%
					total += Double.parseDouble(data[5]) * a.getCantidad();
				%>
			</div>
			<%
				}
				} catch (Exception e) {
			%>
			<div class="row">Carrito Vacio</div>
			<%
				}
			%>
			<div class="row">
				<div class="col-md-6"></div>
				<div class="col-md-2"></div>
				<div class="col-md-2 colorb">Total</div>
				<div class="col-md-1 colorb"><%=total%></div>
			</div>
			<div class="form-group">
				<input class="btn btn-primary" type="submit" value="Acepto la Compra">
			</div>
		</form>
	</div>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>