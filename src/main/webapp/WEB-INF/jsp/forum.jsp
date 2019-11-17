<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Users List</title>
	<link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet">
	<link href="<c:url value='/static/css/app.css' />" rel="stylesheet">
</head>

<body>
	<div class="generic-container">
		<div class="panel panel-default">
			  <!-- Default panel contents -->
		  	<div class="panel-heading"><span class="lead">Lista de comentarios</span></div>
			<table class="table table-hover">
	    		<thead>
		      		<tr>
				        <th>Tema</th>
				        <th>Comentario</th>
				        	<th width="100"></th>
				        	<th width="100"></th>				        
					</tr>
		    	</thead>
	    		<tbody>
				<c:forEach items="${forums}" var="forum">
					<tr>
						<td>${forum.tema}</td>
						<td>${forum.comentary}</td>
                                                <td><a href="<c:url value='/delete-forum-${forum.id}' />" class="btn btn-danger custom-width">delete</a></td>
					</tr>
				</c:forEach>
	    		</tbody>
	    	</table>
		</div>
                <a href="/SpringMVCHibernateManyToManyCRUDExample/index">volver</a><br><br>
                <a href="/SpringMVCHibernateManyToManyCRUDExample/newforum">Agregar nuevo comentario</a>
   	</div>
</body>
</html>