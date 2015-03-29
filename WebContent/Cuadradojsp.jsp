<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

	    <style type="text/css">
    	body{
    		margin: 0 auto;
    		text-align: center;
    		background-color: #FFF;
    	}
		table{
			border: 0;
			margin: 0 auto;
    		text-align: center;
		}
		.entrada{
			height: 50px;
			width: 50px;
			font-size: 3em;
			text-align: center;
		}
		h1{
			font-family: Helvetica;
			color: #207584;
		}

    </style>
<body>
			<h1>Cuadrado Mágico</h1>	
		<form action="CuadradoMagicoServlet" method="get">
		<table>

			<tr>
				<td><input class="entrada" type="text" name="cor00" requiered></input></td>
				<td><input class="entrada" type="text" name="cor01" requiered></input></td>
				<td><input class="entrada" type="text" name="cor02" requiered></input></td>
			</tr>

			<tr>
				<td><input class="entrada" type="text" name="cor10" requiered></input></td>
				<td><input class="entrada" type="text" name="cor11" requiered></input></td>
				<td><input class="entrada" type="text" name="cor12" requiered></input></td>
			</tr>

			<tr>
				<td><input class="entrada" type="text" name="cor20" requiered></input></td>
				<td><input class="entrada" type="text" name="cor21" requiered></input></td>
				<td><input class="entrada" type="text" name="cor22" requiered></input></td>
			</tr>



		</table>
		</form>	
		<input type="submit" value="Verificar">
</body>
</html>