<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/estilos.css">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<title>Document</title>
</head>
<body>
	<header class="sticky-top">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<a class="navbar-brand" href="#">Sportify</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNavAltMarkup"
				container>
				<div class="navbar-nav">
					<a class="nav-item nav-link active" href="index.jsp">Inicio <span
						class="sr-only">(current)</span></a> <a
						class="nav-item nav-link" href="listaProductos.jsp">Productos</a> <a
						class="nav-item nav-link" href="#">Contactos</a> <a
						class="nav-item nav-link " href="#">¿Quienes Somos?</a> <a
						class="nav-item nav-link " href="login.jsp">Iniciar Sesión</a>
				</div>
			</div>
		</nav>
	</header>
	<section class="container">
		<div id="carouselExampleControls" class="carousel slide"
			data-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img class="d-block w-100" src="img/img3.jpg" alt="First slide">
				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="img/img4.jpg" alt="Second slide">
				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="img/img5.jpg" alt="Third slide">
				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="img/banner2.jpeg"
						alt="Fourth slide">
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleControls"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleControls"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</section>
	<div class="container">
		<div class="card-group">
			<div class="card">
				<img class="card-img-top" src="img/img2.jpg" alt="Card image cap">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">This is a wider card with supporting text
						below as a natural lead-in to additional content. This content is
						a little bit longer.</p>
					<p class="card-text">
						<small class="text-muted">Last updated 3 mins ago</small>
					</p>
				</div>
			</div>
			<div class="card">
				<img class="card-img-top" src="img/img1.png" alt="Card image cap">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">This card has supporting text below as a
						natural lead-in to additional content.</p>
					<p class="card-text">
						<small class="text-muted">Last updated 3 mins ago</small>
					</p>
				</div>
			</div>
			<div class="card">
				<img class="card-img-top" src="img/gym.jpg" alt="Card image cap">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">This is a wider card with supporting text
						below as a natural lead-in to additional content. This card has
						even longer content than the first to show that equal height
						action.</p>
					<p class="card-text">
						<small class="text-muted">Last updated 3 mins ago</small>
					</p>
				</div>
			</div>
		</div>
	</div>

	<footer class="footer">
		<div class="contactos">
			<p>Contactos</p>
			<li class="contactos_content"><a
				href="https://www.facebook.com/tonykbezas" class="contacto__link">Anthony
					Cabezas</a></li>
			<li class="contactos_content"><a
				href="https://www.facebook.com/kevin.alias.12"
				class="contacto__link">Kevin Chacha</a></li>
			<li class="contactos_content"><a
				href="https://www.facebook.com/paul.pazos.1" class="contacto__link">Paul
					Pazos</a></li>
		</div>
		<div class="social">
			<a href="http://www.facebook.com" class="icon-facebook"> <img
				src="icon/facebook.png" alt="" class="footer__img"></a> <a href=""
				class="icon-twitter"><img src="icon/twitter.png" alt=""
				class="footer__img"></a> <a href="" class="icon-instagram"><img
				src="icon/instagram.png" alt="" class="footer__img"></a>
		</div>
		<p class="copy">&copy Sport TV todos los derechos reservados</p>
		<img src="icon/logo-ups.png" alt="" class="ups__img">
	</footer>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>