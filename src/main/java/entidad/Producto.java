package entidad;
 
public class Producto {   
private int codigo_producto, nitproveedor;
private double ivacompra, precio_compra,precio_venta;
private String nombre_producto;
public int getCodigo_producto() {
	return codigo_producto;
}
public void setCodigo_producto(int codigo_producto) {
	this.codigo_producto = codigo_producto;
}
public int getNitproveedor() {
	return nitproveedor;
}
public void setNitproveedor(int nitproveedor) {
	this.nitproveedor = nitproveedor;
}
public double getIvacompra() {
	return ivacompra;
}
public void setIvacompra(double ivacompra) {
	this.ivacompra = ivacompra;
}
public double getPrecio_compra() {
	return precio_compra;
}
public void setPrecio_compra(double precio_compra) {
	this.precio_compra = precio_compra;
}
public double getPrecio_venta() {
	return precio_venta;
}
public void setPrecio_venta(double precio_venta) {
	this.precio_venta = precio_venta;
}
public String getNombre_producto() {
	return nombre_producto;
}
public void setNombre_producto(String nombre_producto) {
	this.nombre_producto = nombre_producto;
}



}
