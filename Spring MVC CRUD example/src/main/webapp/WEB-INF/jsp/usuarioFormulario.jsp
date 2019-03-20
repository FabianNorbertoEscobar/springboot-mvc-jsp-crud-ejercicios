<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<title>Agregar usuario</title>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="../css/style.css">

</head>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="col-md-offset-2 col-md-7">
				<c:choose>
					<c:when test="${param.id != null }">
						<h1 class="text-center">Editar usuario</h1>
					</c:when>
					<c:otherwise>
						<h1 class="text-center">Agregar usuario</h1>
					</c:otherwise>
				</c:choose>
				<br /> <br />

				<div class="panel panel-info">
					<div class="panel-heading">
						<div class="panel-title">Formulario</div>
					</div>

					<div class="panel-body">
						<form:form method="post" action="/usuarios/guardar"
							modelAttribute="usuario">
							<form:hidden path="id" />
							<div class="form-group">
								<form:label path="nombre" class="col-md-3">Nombre:</form:label>
								<div class="col-md-9">
									<form:input path="nombre" placeholder="Ingrese nombre"
										class="form-control" required="required" />
								</div>
							</div>
							<br />
							<br />
							<br />
							<div class="form-group">
								<form:label path="apellido" class="col-md-3">Apellido:</form:label>
								<div class="col-md-9">
									<form:input path="apellido" placeholder="Ingrese apellido"
										class="form-control" required="required" />
								</div>
							</div>
							<br />
							<br />
							<div class="form-group">
								<form:label path="email" class="col-md-3">E-mail:</form:label>
								<div class="col-md-9">
									<form:input type="email" path="email"
										placeholder="Ingrese e-mail" class="form-control"
										required="required" />
								</div>
							</div>
							<br />
							<br />
							<div class="form-group">
								<form:label path="password" class="col-md-3">Password:</form:label>
								<div class="col-md-9">
									<form:password path="password" placeholder="Ingrese password"
										class="form-control" required="required" />
								</div>
							</div>
							<br />
							<br />
							<div class="form-group">
								<form:label path="roles" class="col-md-3">Rol:</form:label>
								<form:select multiple="true" path="roles" class="form-control">
									<c:forEach items="${listaRoles}" var="rol">
										<option value="${rol.id }" class="form-control">${rol.nombre}</option>
									</c:forEach>
								</form:select>
							</div>
							<br />
							<br />
							<c:choose>
								<c:when test="${param.id != null}">
									<form:button class="btn btn-success center-block">Editar</form:button>
								</c:when>
								<c:otherwise>
									<form:button class="btn btn-success center-block">Agregar</form:button>
								</c:otherwise>
							</c:choose>
						</form:form>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
