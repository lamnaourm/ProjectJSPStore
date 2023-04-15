<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Liste des categories</title>
<style type="text/css">
	.list {
		width: 100%;
		display: grid;
		grid-template-columns: repeat(4, 1fr);
		gap:30px;
	}
	
	img {
		width: 100%;
	}
</style>
</head>
<body>

	<div class="list">
		<c:forEach var="categorie" items="${requestScope.categories }">
			<div class="card">
				<img alt="" src="${categorie.image }">
				<h3>${categorie.name }</h3>
			</div>
		</c:forEach>
	</div>
</body>
</html>