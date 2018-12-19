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
		
		$("#greeting").css('display','');
		$("#campus").css('display','none');
		
		
		$("#greeting_menu").on('click', function(){
			$("#greeting_menu").attr('class','list-group-item active');
		//----------------------------------------------------	
			$("#campus_menu").attr('class','list-group-item');
		//----------------------------------------------------
			$("#greeting").css('display','');
			$("#campus").css('display','none');
		})
		
		$("#campus_menu").on('click', function(){
			$("#campus_menu").attr('class','list-group-item active');
		//----------------------------------------------------	
			$("#greeting_menu").attr('class','list-group-item');
		//----------------------------------------------------
			$("#campus").css('display','');
			$("#greeting").css('display','none');
		})

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
					<a href="#" class="list-group-item active" id="greeting_menu">인사말</a> 
					<a href="#" class="list-group-item" id="campus_menu">캠퍼스 소개</a>
				</div>
				<!-- ./list-group -->


				<h2 class="mt-4">Contact Us</h2>
				<address>
					<strong>Kyungmin University</strong> <br>3481 Melrose Place <br>Beverly
					Hills, CA 90210 <br>
				</address>
				<address>
					<abbr title="Phone">P:</abbr> (123) 456-7890 <br> <abbr
						title="Email">E:</abbr> <a href="mailto:#">kyungminbamboo@example.com</a>
				</address>
				<!-- ./cantact us -->
			</div>


			<!-- /.col-lg-3 -->

			 <div class="col-lg" id="greeting">
				<div class="col-sm" >
					<h2 class="mt-4">
						<strong>총장 인사말</strong>
					</h2>
					<div class="card mt-4">
						<img class="mx-auto" height="900px" width="700px"
							src="/resources/img/hi.PNG" alt="">

					</div>

				</div>
			</div> 
				<!-- /. greeting  -->
			<div class="col-lg-9" id="campus">
			 	<div class="col-sm" >
					<h2 class="mt-4">
						<strong>캠퍼스 소개</strong>
					</h2>
					<div class="card mt-4">
						<img class="mx-auto" height="2000px" width="750px"
							src="/resources/img/campus.png" alt="">
					</div>
				</div>
		</div>
				<!-- ./campus -->
			</div>

		</div>
	<div style="height: 100px;"></div>
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
