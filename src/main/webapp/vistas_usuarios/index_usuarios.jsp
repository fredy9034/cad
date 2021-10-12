<%@page import="conexion.Conexion"%>
<!DOCTYPE html>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="../css/estilos_usuarios.css">
<link rel="stylesheet" href="../css/estilos_index.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous" type="text/javascript"></script> 
<title>CRUD USUARIOS</title>  
</head>  
<body>  
<!-- CAPA CONTENEDORA PRINCIPAL -->
<div id="main-content">
		<!-- CAPA CONTENEDORA CABEZOTE WEB -->
<header id="header">
	<jsp:include page="../encabezado.jsp" />
</header>
		
		<!-- CAPA CONTENEDORA MENU DE NAVEGACION WEB -->
		
<div id="registro">
<sidebar id="sidebar"> 
       	<div class="login">						

			<div class= "usuario">
				<form action="adduser.jsp" method="post">
					<h1 style="margin-top: 30px; margin-left:-15px">Ingresar Usuario</h1><br><br>	
									
					<label for = "usuario">Usuario</label><br>
					<input type="text" name="usuario"  placeholder = "Ingrese el usuario"><br><br>				
					
					<label for = "nombre_usuario">Nombres y apellidos</label><br>
					<input type="text" name="nombre_usuario"   placeholder = "Ingrese el nombre completo"><br>
					
					<label for = "cedula_usuario">Cedula</label><br>
					<input type="text" name="cedula_usuario"  placeholder = "Ingrese el numero de cedula"><br>
					
					<label for = "password">Contrasena</label><br>
					<input type="password" name="password"  placeholder = "Ingrese la contrasena"><br>
						
					<label for = "email_usuario">Correo electronico</label><br>
					<input type="text" name="email_usuario" placeholder = "Ingrese el correo electronico"><br>
				
						
					<input type="submit" name="btnins" value="Registrar">
				</form>
			</div>
		</div>
              
   	</sidebar>
</div>

<content id="content">

		<%@page import="modelo.UserDao,entidad.*,java.util.*"%>  
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
		
		<br><br>
		<h3 style="margin-left: 30px;">LISTADO DE USUARIOS</h3>  <br>
		<%  
		List<User> list=UserDao.getAllRecords();  
		request.setAttribute("list",list);  
		%>  
		  
		<table id="tabla_usuarios" border="1" width="40%" class="table caption-top">  
		<tr><th>C�dula</th><th>Nombre y apellidos</th><th>Contrase�a</th><th>Correo electronico</th><th>Usuario</th><th>Modificar</th><th>Eliminar</th></tr>  
		<c:forEach items="${list}" var="u">  
		<tr><td>${u.getCedula_usuario()}</td><td>${u.getNombre_usuario()}</td><td>${u.getPassword()}</td><td>${u.getEmail_usuario()}</td><td>${u.getUsuario()}</td> 
		<td><a href="editform.jsp?cedula_usuario=${u.getCedula_usuario()}" class="btn btn-warning btn-sm">Editar</a></td>
		
		
		
		<td><a href="deleteuser.jsp?cedula_usuario=${u.getCedula_usuario()}" class="btn btn-danger btn-sm">Eliminar</a></td></tr>  
		</c:forEach>  
		</table>
</content>
        
	</div>
</body>  
</html> 