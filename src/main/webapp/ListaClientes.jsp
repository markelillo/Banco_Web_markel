<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<title>Lista de Clintes</title>
</head>
<body>
	<h1>Lista de clientes</h1>
	<table class="table table-striped">
		<thead>
			<tr>
				<th scope="col">#</th>
				<th scope="col">First</th>
				<th scope="col">Last</th>
				<th scope="col"></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="cliente" items="${requestScope.listaclientes}"
				varStatus="loop">
				<tr>
					<td>${loop.index}</td>
					<td>${cliente.firstName}</td>
					<td>${cliente.lastName}</td>
					<td><a href="CuentaCliente?idcliente=${loop.index+1}"
						class="btn btn-success">Cuenta</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>