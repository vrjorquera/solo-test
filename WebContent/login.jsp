<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="tect/html; charset=UTF-8">
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<%
	String menj="";
	if(request.getParameter("menj") != null){
		int r= Integer.parseInt(request.getParameter("menj"));
		if(r==0){
			menj="Error! - usuario o contraseña incorrectos";
		}
		if(r==1){
			menj="Conexion Ok";
		}
	}
%>
<body>

		<form method="POST" action="ServletAuth">

				<div align="center">
					<h1 style="text-align: center;">Login</h1>
					<p style="color:red; font-weight:bold;"><%=menj %></p>
						<p>Usuario </p>
					<p><input type="text" id="username" name="txtusuario" placeholder="Usuario" required> </p>
						<p>Contraseña </p>
					<p><input type="password" id="password" name="txtclave" placeholder="Contraseña" required> </p>
					<p><input type="submit" id="loginbtn" name="btn-login" value="Ingresar">	
				</div>

		</form>

</body>
</html>