<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
 %>
 <% 
 	String nombre = (String)request.getAttribute("nombre");
 	String apellido = (String)request.getAttribute("apellido");
 	String rut = (String)request.getAttribute("rut");
 	String telefono = (String)request.getAttribute("telefono");
 	String fechaIn = (String)request.getAttribute("fechaIn");
 %>  

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bienvenido</title>
</head>
<body>

		<form method="POST" action="index.jsp?menj=1">
			
				<div align="center">
					<h1>Bienvenido:</h1>
					<p>Nombre: <%=nombre %></p>
					<p>Apellido: <%=apellido %></p>
					<p>Rut: <%=rut %></p>
					<p>Telefono: <%=telefono %></p>
					<p>Ingreso: <%=fechaIn %></p>
					<input type="submit" name="btn-logout" value="Salir">	
				</div>
				
		</form>

</body>
</html>