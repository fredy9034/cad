<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>VISTA PRODUCTOS</title>
<link rel="stylesheet" href="css/estilos_1.css">
<link rel="stylesheet" href="css/estilos_2.css" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous" type="text/javascript"></script>
</head>
<body>
	
	
	
<!-- CAPA CONTENEDORA PRINCIPAL -->
<div id="main-content">
		<!-- CAPA CONTENEDORA CABEZOTE WEB -->
<header id="header">
	<jsp:include page="../encabezado.jsp" />
</header>

<%@page import="modelo.ProductoDao,entidad.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
		<h3>LISTADO DE PRODUCTOS</h3>  <br>
		<%  
		List<Producto> list=ProductoDao.getAllRecords();  
		request.setAttribute("list",list);  
		%>  
		  
		<table border="1" width="90%" class="table caption-top">  
		<tr><th>Codigo producto</th><th>Nombre producto</th><th>IVA compra</th><th>NIT proveedor</th><th>Precio compra</th><th>Precio venta</th><th>Modificar</th><th>Eliminar</th></tr>  
		<c:forEach items="${list}" var="u">  
		<tr><td>${u.getCodigo_producto()}</td><td>${u.getNombre_producto()}</td><td>${u.getIvacompra()}</td><td>${u.getNitproveedor()}</td><td>${u.getPrecio_compra()}</td><td>${u.getPrecio_venta()}</td> 
		
		<td><a href="editform.jsp?codigo_producto=${u.getCodigo_producto()}" class="btn btn-warning btn-sm">Editar</a></td>
		<td><a href="deleteproductos.jsp?codigo_producto=${u.getCodigo_producto()}" class="btn btn-danger btn-sm">Eliminar</a></td></tr>  

</c:forEach>  
</table>
<a href="addproductosform.jsp" class="btn btn-success btn-sm" role="button" aria-pressed="true">Agregar Nuevo producto</a>
<content id="content">
			
</content>
        
        <footer id="footer">
			<p>Pie de pagina</p>
        </footer>
	</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous" type="text/javascript"></script>
</body>
</html>