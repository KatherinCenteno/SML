/**
 * 
 */
package com.ropa;

import java.sql.ResultSet;

import com.conexion.Conexion;

/**
 * @author tony
 *
 */
public class Menu {
	public String paginaAcceso(String id_perfil) {
		String menu = "<ul>";

		Conexion cn = new Conexion();
		ResultSet rs = null;
		String sql = "select descripcion_pagina,url_pagina from perfilxpagina,pagina where perfilxpagina.id_pagina=pagina.id_pagina and id_perfil = "
				+ id_perfil + " ";

		try {

			rs = cn.Consulta(sql);
			while (rs.next()) {
				menu += "<li> <a href=\" " + rs.getString(2) + " \"> " + rs.getString(1) + " </a></li>";

			}
		} catch (Exception e) {

		}

		menu += "</ul>";
		return menu;
	}

}
