<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Formulário de Usuario</title>
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
				<a href="http://www.javaguids.net" class="navbar-brand">Formulário de Usuario</a>
			</div>
			
			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath() %>/list
					class="nav-link">Usuario</a></li>
			</ul>
		</nav>	
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${user != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${user == null}">	
					<form action="insert" method = "post">
				</c:if>
				
				<caption>
					<h2>
						<c:if test="${user!= null}">
						Editar Usuario
					</c:if>	
						<c:if test="${user == null}">
						Adicionar Novo Usuario
					</c:if>
					</h2>
				</caption>
				
				<c:if test="${user != null}">
					<input type="hidden" name="id" value="<c:out value='${user.id}'/> " />
				</c:if>
				
				<fieldset class="form-group">
					<label>Nome de Usuario</label> <input type="text"
						value="<c:out value='${user.name}' />" class="form-control"
						name="name" required="required">		
				</fieldset>
				
				<fieldset class="form-group">
					<label>Endereço de Email</label> <input type="text"
						value="<c:out value='${user.email}' />" class="form-control"
						name="email">		
				</fieldset>
				
					<fieldset class="form-group">
					<label>País de Origem</label> <input type="text"
						value="<c:out value='${user.country}' />" class="form-control"
						name="country">
					</fieldset>
						
					<button type="submit" class="btn btn-success">Salvar</button>		
				
					</form>
			</div>
		</div>
	</div>
</body>
</html>