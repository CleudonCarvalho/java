<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gerenciador de Usuarios</title>
<link rel="stylesheet"
	  href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstraap.min.css"
	  integrity="shao384-ggOyR0iXCbMQv3Xipma34MD+dH/1Fq784/j6cY/iJTQUOhcWr7x9JvoRXT2MZw1T"
	  crossrigin="anonymous">
</head>
<body>	
	
	<header>
		<nav class="navbar navbar-expond-md navbar-dark"
			style="background-color: tomato">
			<div>
				<h1>Formulário de Usuario</h1>
			</div>
			
			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath() %>/list
					class="nav-link">Usuario</a></li>
			</ul>
		</nav>	
	</header>
	<br>
	
	<div class="row">
		<div class="container">
			<h3 class="text-center">Lista de Usuarios</h3>
			<hr>
			<div class="countainer text-left">
			
				<a href="<%=request.getContextPath() %>/new" class="btn btn-success">Adicionar Novo Usuario</a>
			</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>Nome</th>
						<th>Email</th>
						<th>País</th>
						<th>Editar</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="user" items="${listUser}">
					
						<tr>
							<td><c:out value="${user.id}"/></td>
							<td><c:out value="${user.name}"/></td>
							<td><c:out value="${user.email}"/></td>
							<td><c:out value="${user.country}"/></td>
							<td><a href="edit?id=<c:out value='${user.id}' />">Editar</a>
								&nbsp;&nbso;&nbsp;&nbsp; <a
								href="delete?id=<c:out value='${user.id}' />">Deletar</a></td>
						</tr>		 
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>