package com.ropa;

import com.conexion.Conexion;

public class Factura {

	private int numFactura;

	public boolean vender(String user) {
		Conexion con = new Conexion();
		numFactura = con.max("factura", "num_factura");
		String sql = "insert into factura values (" + numFactura + ",(select now()),'" + user + "')";
		try {
			con.Ejecutar(sql);
			System.out.println("tarjeta save");
			return true;
		} catch (Exception e) {
			System.out.println("tarjeta dont save");
		}
		return false;
	}

	public void restaArticulo(Articulo a) {
		Conexion con = new Conexion();
		System.out.println("prb0");
		int num1 = con.max("detalle", "num_detalle");
		System.out.println("prb1");
		String sql = "insert into detalle values(" + num1 + "," + numFactura + "," + a.getIdProducto() + ","
				+ a.getCantidad() + ")";
		System.out.println("prb2");
		try {
			con.Ejecutar(sql);
			System.out.println("prb3");
		} catch (Exception e) {
			System.out.println("eh?" + e);
		}

	}

	public int getNumFactura() {
		return numFactura;
	}

	public void setNumFactura(int numFactura) {
		this.numFactura = numFactura;
	}

}
