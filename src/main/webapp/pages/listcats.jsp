<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Liste des categories</title>

<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">

</head>
<body>

	<div class="container my-5">
		<header class="mb-4">
			<h3>Liste des categories</h3>
		</header>

		<div class="row">
			<c:forEach var="categorie" items="${requestScope.categories }">
				<div class="col-lg-3 col-md-6 col-sm-12 d-flex">
					<div class="card w-100 my-2 shadow-2-strong">
						<img src="${categorie.image }" class="card-img-top"
							style="aspect-ratio: 1/1" />
						<div class="card-body d-flex flex-column">
							<h5 class="card-title">${categorie.name }</h5>

							<div
								class="card-footer d-flex pt-3 px-0 pb-0 mt-auto">
								<a href="#!" class="btn btn-primary shadow-0">Liste des
									produits</a>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>

	</div>

	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>