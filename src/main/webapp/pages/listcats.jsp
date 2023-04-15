<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Liste des categories</title>

<link rel="stylesheet" href="css/style.css">

</head>
<body>

	<h1>Liste des categories</h1>
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