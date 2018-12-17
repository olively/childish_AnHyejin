<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Kyungmin Bamboo - post</title>

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
	href="${pageContext.request.contextPath}/resources/css/blog-post.css">

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
</style>

<!-- $(document).ready(function(){

	$('#dept_talk').prop()
}) -->

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
$(document).ready(function(){
	//console.log("A");
	$("#introduce").on('click', function(){
		$("#introduce").attr('class','nav-item active');
	//----------------------------------------------------	
		$("#freetalk").attr('class','nav-item');
		$("#depttalk").attr('class','nav-item');
		$("#gallery").attr('class','nav-item');
		$("#QnA").attr('class','nav-item');
		$("#notice").attr('class','nav-item');

		//console.log("a");
	})
	
	$("#freetalk").on('click', function(){
		$("#freetalk").attr('class','nav-item active');
	//----------------------------------------------------	
		$("#introduce").attr('class','nav-item');
		$("#depttalk").attr('class','nav-item');
		$("#gallery").attr('class','nav-item');
		$("#QnA").attr('class','nav-item');
		$("#notice").attr('class','nav-item');
	})
	
	$("#depttalk").on('click', function(){
		$("#depttalk").attr('class','nav-item active');
	//----------------------------------------------------	
		$("#introduce").attr('class','nav-item');
		$("#freetalk").attr('class','nav-item');
		$("#gallery").attr('class','nav-item');
		$("#QnA").attr('class','nav-item');
		$("#notice").attr('class','nav-item');

	})
	
	$("#gallery").on('click', function(){
		$("#gallery").attr('class','nav-item active');
	//----------------------------------------------------	
		$("#introduce").attr('class','nav-item');
		$("#depttalk").attr('class','nav-item');
		$("#freetalk").attr('class','nav-item');
		$("#QnA").attr('class','nav-item');
		$("#notice").attr('class','nav-item');
	})
	
	$("#QnA").on('click', function(){
		$("#QnA").attr('class','nav-item active');
	//----------------------------------------------------	
		$("#introduce").attr('class','nav-item');
		$("#depttalk").attr('class','nav-item');
		$("#gallery").attr('class','nav-item');
		$("#freetalk").attr('class','nav-item');
		$("#notice").attr('class','nav-item');
	})
	
	$("#notice").on('click', function(){
		$("#notice").attr('class','nav-item active');
	//----------------------------------------------------	
		$("#introduce").attr('class','nav-item');
		$("#depttalk").attr('class','nav-item');
		$("#gallery").attr('class','nav-item');
		$("#QnA").attr('class','nav-item');
		$("#freetalk").attr('class','nav-item');
	})
});
</script>

</head>

<body>

	<!-- Header -->
	<jsp:include page="/WEB-INF/views/header.jsp" flush="true" />



	<!-- Page Content -->
	<div class="container" id="post">

		<div class="row">

			<!-- Post Content Column -->
			<div class="col-lg-10">

				<!-- Title -->
				<h1 class="mt-4">Post Title</h1>

				<!-- Author -->
				<p class="lead">
					by <a href="#">Start Bootstrap</a>
				</p>

				<hr>

				<!-- Date/Time -->
				<p>Posted on January 1, 2018 at 12:00 PM</p>

				<hr>

				<!-- Preview Image -->
				<!--  <img class="img-fluid rounded" src="http://placehold.it/900x300"
					alt="">
				-->
				<hr>

				<!-- Post Content -->
				<p class="lead">Lorem ipsum dolor sit amet, consectetur
					adipisicing elit. Ducimus, vero, obcaecati, aut, error quam
					sapiente nemo saepe quibusdam sit excepturi nam quia corporis
					eligendi eos magni recusandae laborum minus inventore?</p>

				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut,
					tenetur natus doloremque laborum quos iste ipsum rerum obcaecati
					impedit odit illo dolorum ab tempora nihil dicta earum fugiat.
					Temporibus, voluptatibus.</p>

				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Eos, doloribus, dolorem iusto blanditiis unde eius illum
					consequuntur neque dicta incidunt ullam ea hic porro optio ratione
					repellat perspiciatis. Enim, iure!</p>

				<blockquote class="blockquote">
					<p class="mb-0">Lorem ipsum dolor sit amet, consectetur
						adipiscing elit. Integer posuere erat a ante.</p>
					<footer class="blockquote-footer">
						Someone famous in <cite title="Source Title">Source Title</cite>
					</footer>
				</blockquote>

				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Error, nostrum, aliquid, animi, ut quas placeat totam sunt tempora
					commodi nihil ullam alias modi dicta saepe minima ab quo voluptatem
					obcaecati?</p>

				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Harum, dolor quis. Sunt, ut, explicabo, aliquam tenetur ratione
					tempore quidem voluptates cupiditate voluptas illo saepe quaerat
					numquam recusandae? Qui, necessitatibus, est!</p>

				<hr>

				<!-- Comments Form -->
				<div class="card my-4">
					<h5 class="card-header">Leave a Comment:</h5>
					<div class="card-body">
						<form>
							<div class="form-group">
								<textarea class="form-control" rows="3"></textarea>
							</div>
							<button type="submit" class="btn btn-primary">Submit</button>
						</form>
					</div>
				</div>

				<div id="accordion" role="tablist">
					<div class="card">
						<div class="card-header" role="tab" id="headingTwo">
							<h5 class="mb-0">
								<a class="collapsed" data-toggle="collapse" href="#collapseTwo"
									aria-expanded="false" aria-controls="collapseTwo"> Comments
								</a>
							</h5>
						</div>
						<div id="collapseTwo" class="collapse" role="tabpanel"
							aria-labelledby="headingTwo" data-parent="#accordion">
							<div class="card-body">
								<!-- Single Comment -->
								<div class="media mb-4">
									<img class="d-flex mr-3 rounded-circle"
										src="http://placehold.it/50x50" alt="">
									<div class="media-body">
										<h5 class="mt-0">Commenter Name</h5>
										Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
										scelerisque ante sollicitudin. Cras purus odio, vestibulum in
										vulputate at, tempus viverra turpis. Fusce condimentum nunc ac
										nisi vulputate fringilla. Donec lacinia congue felis in
										faucibus.
									</div>
								</div>

								<!-- Comment with nested comments -->
								<div class="media mb-4">
									<img class="d-flex mr-3 rounded-circle"
										src="http://placehold.it/50x50" alt="">
									<div class="media-body">
										<h5 class="mt-0">Commenter Name</h5>
										Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
										scelerisque ante sollicitudin. Cras purus odio, vestibulum in
										vulputate at, tempus viverra turpis. Fusce condimentum nunc ac
										nisi vulputate fringilla. Donec lacinia congue felis in
										faucibus.

										<div class="media mt-4">
											<img class="d-flex mr-3 rounded-circle"
												src="http://placehold.it/50x50" alt="">
											<div class="media-body">
												<h5 class="mt-0">Commenter Name</h5>
												Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
												scelerisque ante sollicitudin. Cras purus odio, vestibulum
												in vulputate at, tempus viverra turpis. Fusce condimentum
												nunc ac nisi vulputate fringilla. Donec lacinia congue felis
												in faucibus.
											</div>
										</div>

										<div class="media mt-4">
											<img class="d-flex mr-3 rounded-circle"
												src="http://placehold.it/50x50" alt="">
											<div class="media-body">
												<h5 class="mt-0">Commenter Name</h5>
												Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
												scelerisque ante sollicitudin. Cras purus odio, vestibulum
												in vulputate at, tempus viverra turpis. Fusce condimentum
												nunc ac nisi vulputate fringilla. Donec lacinia congue felis
												in faucibus.
											</div>
										</div>

									</div>
								</div>
							</div>

						</div>
					</div>
					<br>
					<br>
				</div>
			</div>





			<!-- Sidebar Widgets Column -->
			<div class="col-md-4"></div>

		</div>
		<!-- /.row -->

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
