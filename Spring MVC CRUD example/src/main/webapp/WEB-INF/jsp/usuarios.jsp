<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
<title>Usuarios</title>
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
			<div class="col-md-offset-1 col-md-10">
				<h1 class="text-center">Usuarios</h1>
				<br /> <br />

				<div class="panel panel-info">
					<div class="panel-heading">
						<div class="panel-title">Listado de Usuarios</div>
					</div>
					<div class="panel-body">
						<c:if test="${!empty usuarios }">
							<div class="table-responsive">
								<table class="table table-bordered table-striped table-hover">
									<thead>
										<tr class="active success">
											<th>Nombre</th>
											<th>Apellido</th>
											<th>Email</th>
											<th>Password</th>
											<th>Rol</th>
											<th>Editar</th>
											<th>Eliminar</th>
										</tr>
									</thead>
									<tbody>

										<c:forEach items="${usuarios}" var="usuario">

											<c:url var="editar" value="/usuarios/editar">
												<c:param name="id" value="${usuario.id }"></c:param>
											</c:url>
											<c:url var="eliminar" value="/usuarios/eliminar">
												<c:param name="id" value="${usuario.id }"></c:param>
											</c:url>

											<tr>
												<td>${usuario.nombre}</td>
												<td>${usuario.apellido}</td>
												<td>${usuario.email}</td>
												<td>${usuario.password}</td>
												<td>${usuario.roles }</td>
												<td><a href="${editar }"
													class="btn btn-info center-block"><i
														class="glyphicon glyphicon-edit"></i>Editar</a></td>
												<td><a href="${eliminar }"
													class="btn btn-danger center-block"><i
														class="glyphicon glyphicon-trash"></i>Eliminar</a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</c:if>
						<br /> <br /> <a href="agregar" class="btn btn-success"><i
							class="glyphicon glyphicon-check"></i> Agregar nuevo usuario</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
