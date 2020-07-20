package com.ropa;

import java.sql.ResultSet;

import com.conexion.Conexion;

public class Producto {

	String nombre = "Tony";
	String id_producto;
	String precio;
	String talla;

	public boolean insertarProducto(String nombre, int categoria, String talla, String stock, Double precio,
			String descripcion, String url_imagen) {
		String sql = "insert into producto values ((select max(id_producto)+1 from producto),'" + categoria + "',"
				+ talla + "," + stock + ",'" + precio + "','" + descripcion + "','" + nombre + "','" + url_imagen
				+ "')";
		Conexion con = new Conexion();
		try {
			con.Ejecutar(sql);
			System.out.println("Lo has logrado :')");
		} catch (Exception e) {
			System.out.println("Algo malo ha ocurrido!");
			// TODO: handle exception
		}
		return true;
	}

	public boolean eliminarProducto(char id) {
		System.out.println("Nos llega " + id);
		String sql = "delete from producto where id_producto='" + id + "'";
		Conexion con = new Conexion();
		try {
			System.out.println(sql);
			con.Ejecutar(sql);
			System.out.println("Lo has logrado :')");
		} catch (Exception e) {
			System.out.println("Algo malo ha ocurrido!");
			// TODO: handle exception
		}
		return true;
	}

	public String consultarTodo() {
		String sql = "SELECT * FROM producto";
		Conexion con = new Conexion();
		String tabla = "<table>";
		ResultSet rs = null;
		try {
			rs = con.Consulta(sql);
			while (rs.next()) {
				tabla += "<tr><td>" + rs.getInt(1) + "</td><td>" + rs.getString(2) + "</td><td>" + rs.getDouble(3)
						+ "<td><img class=\"imagenHome\" src=\"img/" + rs.getString(5) + "\" width=60px height=60px"
						+ rs.getString(5) + "</td>"
						+ "</td><td><A href=\"javascript:;\" onclick=\"aviso('eliminar.jsp?id=" + rs.getInt(1)
						+ ">'); return false;\">Eliminar </A></td><td><A href=NewFormProducto.jsp?id=" + rs.getInt(1)
						+ ">Modificar</A></td>";
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		tabla += "</table>";
		return tabla;
	}

	public String consultarProductos() {
		String sql = "SELECT id_producto,imagen,nombre_producto,precio FROM producto";
		Conexion con = new Conexion();
		String productos = "";
		ResultSet rs = null;
		try {
			rs = con.Consulta(sql);
			while (rs.next()) {
				productos += "<div class=\"card\">\r\n" + "				<img class=\"card-img-top\" src=\"img/"
						+ rs.getString(2) + "\"\r\n" + "					alt=\"Card image cap\">\r\n"
						+ "				<div class=\"card-body\">\r\n" + "					<p class=\"card-text\">\r\n"
						+ "						<a href=\"detalle_producto.jsp?id=" + rs.getInt(1)
						+ "\" style=\"text-decoration: none; color: black;\">" + rs.getString(3)
						+ "				</a>	</p>\r\n" + "	</div>\r\n" + "			</div>";

			}
		} catch (Exception e) {
			System.out.println("khe vrga " + e);
			// TODO: handle exception
		}
		return productos;
	}

	public String[] detalleProducto(int id) {
		String sql = "SELECT * FROM producto where id_producto = " + id;
		Conexion con = new Conexion();
		String[] data = new String[9];
		ResultSet rs = null;
		try {
			rs = con.Consulta(sql);
			int i = 1;
			rs.next();
			while (i < 9) {
				data[i] = rs.getString(i);
				i++;
			}
		} catch (Exception e) {
			System.out.println(e);
			// TODO: handle exception
		}
		return data;
	}

}
