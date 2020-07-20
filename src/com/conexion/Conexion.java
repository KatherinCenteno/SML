package com.conexion;

import java.sql.*;

public class Conexion {
	private Statement St;
	private String driver;
	private String user;
	private String pwd;
	private String cadena;
	private Connection con;

	String getDriver() {
		return this.driver;
	}

	String getUser() {
		return this.user;
	}

	String getPwd() {
		return this.pwd;
	}

	String getCadena() {
		return this.cadena;
	}

	public Connection getConexion() {
		return this.con;
	}

	public Conexion() {

		this.driver = "org.postgresql.Driver";
		this.user = "nifykdixbfanga";
		this.pwd = "3fb6d56f9dad1536fcc22b82c007349e57ae14f1a68712bdda29cf16186dbad2";
		this.cadena = "jdbc:postgresql://ec2-52-202-66-191.compute-1.amazonaws.com:5432/d16kq3as9mnad9?sslmode=require";
		this.con = this.crearConexion();

	}

	Connection crearConexion() {
		try {
			Class.forName("org.postgresql.Driver");
		} catch (ClassNotFoundException e) {

		}

		try {
			Class.forName(getDriver()).newInstance();
			Connection con = DriverManager.getConnection(getCadena(), getUser(), getPwd());
			return con;
		} catch (Exception ee) {
			System.out.println("Error: " + ee.getMessage());
			return null;
		}
	}

	public String Ejecutar(String sql) {
		String error = "";
		try {
			St = getConexion().createStatement();
			St.execute(sql);
			error = "Datos insertados";
		} catch (Exception ex) {
			error = ex.getMessage();
		}
		return (error);
	}

	public ResultSet Consulta(String sql) {
		String error = "";
		ResultSet reg = null;

		try {
			St = getConexion().createStatement();
			reg = St.executeQuery(sql);
			System.out.println("Todo bien (Y)!");
		} catch (Exception ee) {
			error = ee.getMessage();
		}
		return (reg);
	}

	public int max(String table, String column) {
		String sql = "select max(" + column + ") from " + table + "";
		ResultSet rs = null;
		int i;
		try {
			rs = Consulta(sql);
			rs.next();
			i = rs.getInt(1) + 1;
		} catch (Exception e) {
			i = 0;
		}
		return i;
	}
}