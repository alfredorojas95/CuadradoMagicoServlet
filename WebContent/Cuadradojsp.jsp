<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<style type="text/css">
body {
	margin: 0 auto;
	text-align: center;
	background-color: #FFF;
}

table {
	border: 0;
	margin: 0 auto;
	text-align: center;
}

.entrada {
	height: 50px;
	width: 50px;
	font-size: 3em;
	text-align: center;
}

h1 {
	font-family: Helvetica;
	color: #207584;
}
</style>
<body>

	<script type="text/javascript">
		// Solo permite ingresar numeros.
		// http://www.lawebdelprogramador.com/foros/JavaScript/1127366-javascript-solo-numeros-para-siempre.html
		function soloNumeros(e) {
			var key = window.Event ? e.which : e.keyCode
			return (key >= 48 && key <= 57)
		}
	</script>
	
	<h1>Cuadrado Mágico</h1>
	<form action="CuadradoMagicsServlet" method="get">
		<table>

			<tr>
				<td><input class="entrada" type="text" name="cor00" onKeyPress="return soloNumeros(event)" requiered></input></td>
				<td><input class="entrada" type="text" name="cor01" onKeyPress="return soloNumeros(event)" requiered></input></td>
				<td><input class="entrada" type="text" name="cor02" onKeyPress="return soloNumeros(event)" requiered></input></td>
			</tr>

			<tr>
				<td><input class="entrada" type="text" name="cor10" onKeyPress="return soloNumeros(event)" requiered></input></td>
				<td><input class="entrada" type="text" name="cor11" onKeyPress="return soloNumeros(event)" requiered></input></td>
				<td><input class="entrada" type="text" name="cor12" onKeyPress="return soloNumeros(event)" requiered></input></td>
			</tr>

			<tr>
				<td><input class="entrada" type="text" name="cor20" onKeyPress="return soloNumeros(event)" requiered></input></td>
				<td><input class="entrada" type="text" name="cor21" onKeyPress="return soloNumeros(event)" requiered></input></td>
				<td><input class="entrada" type="text" name="cor22" onKeyPress="return soloNumeros(event)" requiered></input></td>
			</tr>

		</table>
		<input type="submit" value="Verificar"><br> 
		<input type="submit" value="Jugar!"><br> ${mensaje}

	</form>

</body>
</html>