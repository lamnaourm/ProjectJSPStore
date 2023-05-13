<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Nouveau Categorie</title>

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

		<div class="alert alert-primary">
			<span class="col-6">Ajouter Categorie</span>
		</div>
		<c:if test="${not empty status  }">
			<c:choose>
				<c:when test="${status == 1 }">
				<div class="alert alert-success alert-dismissible fade show" role="alert">
  Catagorie enregistre avec succes
						<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>

					</div>
				</c:when>
				<c:when test="${status == 0 }">
				<div class="alert alert-danger alert-dismissible fade show" role="alert">
  Echec d'enregistrement
<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
					</div>
				</c:when>
			</c:choose>
		</c:if>
		<form class="needs-validation" action="/ProjectStore/do/savecat" novalidate>
			<div class="form-row">
				<div class="col-md-8 mb-3">
					<label for="validationCustom01">Nom : </label> <input type="text" name="nom"
						class="form-control" id="validationCustom01" placeholder="Le nom de la categorie" required>
					<div class="valid-feedback">Looks good!</div>
				</div>
			</div>
			<div class="form-row">
				<div class="col-md-8 mb-3">
					<label for="validationCustom01">Image : </label> <input type="url" name="image"
						class="form-control" id="validationCustom01" placeholder="L'image de la categorie" required>
					<div class="valid-feedback">Looks good!</div>
				</div>
			</div>
			<button type="submit" class="btn btn-primary shadow-0">Enregistrer</button>
			<button class="btn btn-secondary" type="submit">Annuler</button>
		</form>
	</div>

	<script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script>
</body>
</html>