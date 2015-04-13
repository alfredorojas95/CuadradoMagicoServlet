<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- Recursos: css y js -->
<link rel="stylesheet" type="text/css" href="css/stylesheet.css">
<script type="text/javascript" src="js/metodos.js"></script>

<title>Insert title here</title>
</head>

<body>
 
	<h1>Cuadrado Mágico</h1>
	<form action="CuadradoMagicsServlet" method="get">
		<table>

			<tr>
				<td><input class="entrada" type="text" name="cor00"
					onkeydown="return validarEntrada(event,0,0,this)"
					onkeyup="capturarEntrada(0,0,this)" ></input></td>
				<td><input class="entrada" type="text" name="cor01"
					onkeydown="return validarEntrada(event,0,1,this)"
					onkeyup="capturarEntrada(0,1,this)" ></input></td>
				<td><input class="entrada" type="text" name="cor02"
					onkeydown="return validarEntrada(event,0,2,this)"
					onkeyup="capturarEntrada(0,2,this)" ></input></td>
			</tr>

			<tr>
				<td><input class="entrada" type="text" name="cor10"
					onkeydown="return validarEntrada(event,1,0,this)" 
					onkeyup="capturarEntrada(1,0,this)" ></input></td>
				<td><input class="entrada" type="text" name="cor11"
					onkeydown="return validarEntrada(event,1,1,this)"
					onkeyup="capturarEntrada(1,1,this)"></input></td>
				<td><input class="entrada" type="text" name="cor12"
					onkeydown="return validarEntrada(event,1,2,this)"
					onkeyup="capturarEntrada(1,2,this)"></input></td>
			</tr>

			<tr>
				<td><input class="entrada" type="text" name="cor20"
					onkeydown="return validarEntrada(event,2,0,this)"
					onkeyup="capturarEntrada(2,0,this)"></input></td>
				<td><input id="cor21" class="entrada" type="text" name="cor21"
					onkeydown="return validarEntrada(event,2,1,this)"
					onkeyup="capturarEntrada(2,1,this)"></input></td>
				<td><input id="cor22" class="entrada" type="text" name="cor22"
					onkeydown="return validarEntrada(event,2,2,this)"
					onkeyup="capturarEntrada(2,2,this)"></input></td>
			</tr>

		</table>
		<input class="boton" type="submit" value="Jugar!">
		<input class="boton" type="button" value="Reiniciar" onclick="location='http://localhost:8080/CuadradoMagico/Cuadradojsp.jsp'" />
		<br> ${mensaje}

	</form>

</body>
</html>
