package com.ropa;

import java.sql.ResultSet;

import com.conexion.Conexion;

public class Categoria {

	public boolean insertarCategoria(String categoria) {
		String sql = "insert into categoria values ((select max(id_categoria)+1 from categoria),'" + categoria + "')";
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

	public String consultarCategorias() {
		String sql = "select * from categoria";
		Conexion con = new Conexion();
		String tabla = "<table>";
		ResultSet rs = null;
		try {
			rs = con.Consulta(sql);
			while (rs.next()) {
				tabla += "<tr><td>" + rs.getString(2)
						+ "</td><td><A href=\"javascript:;\" onclick=\"aviso('eliminarCat.jsp?id=" + rs.getInt(1)
						+ "'); return false;\">Eliminar </A></td><td><A href=NewFormProducto.jsp?id=" + rs.getInt(1)
						+ ">Modificar</A></td>";
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		tabla += "</table>";
		return tabla;
	}

	public boolean eliminarCategoria(int id) {
		System.out.println("Nos llega " + id);
		String sql = "delete from categoria where id_categoria='" + id + "'";
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

	public String nombreCategorias() {
		String sql = "select id_categoria,nombre_categoria from categoria";
		Conexion con = new Conexion();
		String tabla = "";
		ResultSet rs = null;
		try {
			rs = con.Consulta(sql);
			while (rs.next()) {
				tabla += "<option value=" + rs.getInt(1) + ">" + rs.getString(2) + "</option>";
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return tabla;
	}

}
