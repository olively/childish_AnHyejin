<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Kyungmin Bamboo - Introduce</title>

<!-- Bootstrap core CSS -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap-grid.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap-reboot.css">


<!-- Custom fonts for this template -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css">
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic'
	rel='stylesheet' type='text/css'>

<!-- Custom styles for this template -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/business-frontpage.css">

<style>
.bg-dark {
	background-color: #57afbd !important;
}

.navbar-brand {
	font-weight: 700;
	text-transform: uppercase;
	font-family: 'Open Sans', 'Helvetica Neue', Arial, sans-serif;
}

.nav-item {
	font-weight: 700;
	font-size: .9rem;
	text-transform: uppercase;
	font-family: 'Open Sans', 'Helvetica Neue', Arial, sans-serif;
}

.business-header img {
	max-width: 100%;
	max-height: 100%;
}

#footer {
	margin-top: -1em;
	height: 1em
}
</style>
<script>
	$(document).ready(function() {

		$("#introduce").attr('class', 'nav-item active');

	});
</script>

</head>

<body>

	<!-- Header -->
	<jsp:include page="/WEB-INF/views/header.jsp" flush="true" />

	<!-- Header with Background Image -->
	<header class="business-header">
		<img class="mx-auto" height=100% width=100%
			src="/resources/img/kyungmin.jpg" />
	</header>

	<!-- Page Content -->

	<div class="container">

		<div class="row">

			<div class="col-lg-3">
				<h1 class="my-4"></h1>
				<div class="list-group">
					<a href="#1" class="list-group-item active">인사말</a> <a href="#2"
						class="list-group-item">대학 현황</a> <a href="#3"
						class="list-group-item">경민 소개</a> <a href="#4"
						class="list-group-item">캠퍼스 안내</a>
				</div>



				<h2 class="mt-4">Contact Us</h2>
				<address>
					<strong>Kyungmin University</strong> <br>3481 Melrose Place <br>Beverly
					Hills, CA 90210 <br>
				</address>
				<address>
					<abbr title="Phone">P:</abbr> (123) 456-7890 <br> <abbr
						title="Email">E:</abbr> <a href="mailto:#">kyungminbamboo@example.com</a>
				</address>

			</div>


			<!-- /.col-lg-3 -->

			<div class="col-lg-9">

				<div class="col-sm-9" id="1">
				<h2 class="mt-4">
							<strong>총장 인사말</strong>
						</h2>
					<div class="card mt-4">
						<img class="mx-auto" height="1000px" width="700px" src="/resources/img/aa.jpg" alt="">

					</div>

					<!-- <div class="col-sm-9" id="2">

					<h2 class="mt-4">
							<strong>총장 인사말</strong>
						</h2>
					<div class="card mt-4">
					
						<img class="card-img-top img-fluid"
							src="http://placehold.it/900x400" alt="">
						<div class="card-body">
							<h3 class="card-title">Product Name</h3>
							<h4>$24.99</h4>
							<p class="card-text">Lorem ipsum dolor sit amet, consectetur
								adipisicing elit. Sapiente dicta fugit fugiat hic aliquam itaque
								facere, soluta. Totam id dolores, sint aperiam sequi pariatur
								praesentium animi perspiciatis molestias iure, ducimus!</p>
							<span class="text-warning">&#9733; &#9733; &#9733; &#9733;
								&#9734;</span> 4.0 stars
						</div>

					</div>
				
				<div class="col-sm-9" id="3">

					<h2 class="mt-4">What We Do</h2>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. A
						deserunt neque tempore recusandae animi soluta quasi? Asperiores
						rem dolore eaque vel, porro, soluta unde debitis aliquam
						laboriosam. Repellat explicabo, maiores!</p>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Omnis optio neque consectetur consequatur magni in nisi, natus
						beatae quidem quam odit commodi ducimus totam eum, alias, adipisci
						nesciunt voluptate. Voluptatum.</p>

				</div>
 -->

				</div>
				<!-- /.col-lg-9 -->

			</div>

		</div>
	</div>
<div style="height:100px;">
</div>
		<!-- /.container -->

		<!-- Footer -->
		<jsp:include page="/WEB-INF/views/footer.jsp" flush="true" />

		<!-- Bootstrap core JavaScript -->
		<script
			src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>

</html>
