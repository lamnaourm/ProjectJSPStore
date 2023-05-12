<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Liste des categories</title>

<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">

</head>
<body>
	<header>
		<nav id="navbar_top"
			class="navbar navbar-expand-lg navbar-dark bg-primary">
			<div class="container">
				<a class="navbar-brand h1" href="#">Gestion des produits</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#main_nav">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="main_nav">
					<ul class="navbar-nav ms-auto">
						<li class="nav-item"><a class="nav-link" href="#"> Home </a></li>
						<li class="nav-item"><a class="nav-link" href="#">
								Categories </a></li>
						<li class="nav-item"><a class="nav-link" href="#">
								Produits </a></li>
					</ul>
				</div>
				<!-- navbar-collapse.// -->
			</div>
			<!-- container-fluid.// -->
		</nav>
	</header>
	<div class="container my-5">

		<div class="alert alert-primary row my-3">
			<h3 class="col-6">Liste des categories</h3>

			<div class="col-6 text-end">
				<a href="/ProjectStore/do/addcat" class="btn btn-success shadow-0">Nouveau Categorie</a>
			</div>
		</div>

		<div class="row">
			<c:forEach var="categorie" items="${requestScope.categories }">
				<div class="col-lg-3 col-md-6 col-sm-12 d-flex">
					<div class="card w-100 my-2 shadow-2-strong">
						<img src="${categorie.image }" class="card-img-top"
							style="aspect-ratio: 1/1" />
						<div class="card-body d-flex flex-column">
							<h5 class="card-title">${categorie.name }</h5>

							<div class="d-flex pt-3 px-0 pb-0 mt-auto justify-content-center">
								<a href="#!" class="btn btn-primary shadow-0">Liste des
									produits</a>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>

	</div>

	<script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script>
</body>
</html>