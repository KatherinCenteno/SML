package com.ropa;

import java.sql.ResultSet;

import com.conexion.Conexion;

public class Usuario {
	private String[] infoUser = new String[3];
	private String[] info = new String[4];

	public boolean buscarUsuario(String user, String clave) {

		Conexion cn = new Conexion();
		String sql = " select nick_name,nombre,id_perfil from usuario where nick_name= '" + user + "' and pass= '"
				+ clave + "'; ";
		boolean login = false;
		ResultSet rs = null;
		rs = cn.Consulta(sql);
		try {
			while (rs.next()) {
				login = true;
				infoUser[0] = rs.getString(1); // cedula
				infoUser[1] = rs.getString(2); // nombre
				infoUser[2] = rs.getString(3); // id_perfil
			}

		} catch (Exception e) {

		}
		return login;

	}

	public boolean insertarUsuario(String nombre, String clave, String nick, int profile) {
		String sql = "insert into usuario values('" + nick + "'," + profile + ",'" + nombre + "','" + clave + "')";
		Conexion con = new Conexion();
		try {
			con.Ejecutar(sql);
			System.out.println("Lo has logrado :')");
		} catch (Exception e) {
			System.out.println("Algo malo ha ocurrido!");
			// TODO: handle exception
		}
		return false;
	}

	public String[] getInfoUser() {
		return infoUser;
	}

	public String[] obtenInfo(String username) {
		String sql = "select nick_name,nombre,pass from usuario where nick_name ='" + username + "'";
		ResultSet rs = null;
		Conexion cn = new Conexion();
		rs = cn.Consulta(sql);
		try {
			while (rs.next()) {
				info[0] = rs.getString(1); // nick_name
				info[1] = rs.getString(2); // nombre
				info[2] = rs.getString(3); // pass
			}

		} catch (Exception e) {

		}
		return info;
	}

	public String buscarPorNombre(String like) {
		like = like + "%";
		String usuarios = "";
		String sql = "select nombre where nombre like '" + like + "'";
		ResultSet rs = null;
		Conexion cn = new Conexion();
		rs = cn.Consulta(sql);
		try {
			while (rs.next()) {
				info[1] = rs.getString(2); // nombre
				usuarios += "<div class=\"row\">\r\n" + "				<div class=\"input-group mb-3\">\r\n"
						+ "					<div class=\"input-group-prepend\">\r\n"
						+ "						<div class=\"input-group-text\">\r\n"
						+ "							<input type=\"checkbox\"\r\n"
						+ "								aria-label=\"Checkbox for following text input\">\r\n"
						+ "						</div>\r\n" + "					</div>\r\n"
						+ "					<input type=\"text\" class=\"form-control\"\r\n"
						+ "						aria-label=\"Text input with checkbox\" readonly=\"readonly\" value="
						+ info[1] + ">\r\n" + "				</div>\r\n" + "			</div>";
			}

		} catch (Exception e) {
			System.out.println("Error en buscarPorNombre() de la clase Usuario");
			System.out.println("khe " + usuarios);
		}

		return usuarios;
	}

	public boolean saveTarjeta(long num, String propietario, int numSeguridad, String fecha) {
		String sql = "insert into tarjeta values(" + num + ",'" + propietario + "'," + numSeguridad + ",'" + fecha
				+ "')";
		Conexion con = new Conexion();
		try {
			con.Ejecutar(sql);
			sql = "UPDATE USUARIO SET NUMERO = (SELECT NUMERO FROM TARJETA WHERE PROPIETARIO ='" + propietario + "') "
					+ "where nick_name= '" + propietario + "'";
			con.Ejecutar(sql);
			System.out.println("tarjeta save");
		} catch (Exception e) {
			System.out.println("tarjeta dont save");
		}
		return false;
	}

	public boolean tieneTarjeta(String propietario) {
		String sql = "select numero from usuario where nick_name='" + propietario + "'";
		ResultSet rs = null;
		Conexion cn = new Conexion();
		rs = cn.Consulta(sql);
		try {
			rs.next();
			// System.out.println("Esto tiene rs "+rs.getLong(1));
			if (!rs.getString(1).equals("")) {
				// System.out.println("Si tiene tarejta");
				return true;
			}

		} catch (Exception e) {
			// System.out.println("algo pasa en tieneTarjeta() Usuario"+e);
		}
		return false;
	}
}
