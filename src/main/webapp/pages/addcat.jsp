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
	<div class="container my-5">
	
		<div class="alert alert-primary">
			<span class="col-6">Ajouter Categorie</span>
		</div>
		<form class="needs-validation" novalidate>
			<div class="form-row">
				<div class="col-md-8 mb-3">
					<label for="validationCustom01">Nom : </label> <input
						type="text" class="form-control" id="validationCustom01"
						value="Mark" required>
					<div class="valid-feedback">Looks good!</div>
				</div>
			</div>
			<div class="form-row">
				<div class="col-md-8 mb-3">
					<label for="validationCustom01">Image : </label> <input
						type="url" class="form-control" id="validationCustom01"
						value="Mark" required>
					<div class="valid-feedback">Looks good!</div>
				</div>
			</div>
			<button class="btn btn-primary" type="submit">Enregistrer</button>
			<button class="btn btn-secondary" type="submit">Annuler</button>
		</form>
	</div>

	<script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script>
</body>
</html>