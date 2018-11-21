<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
<style>
@import
	url("//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css")
	;

.login-block {
	background: #DE6262; /* fallback for old browsers */
	background: -webkit-linear-gradient(to bottom, #FFB88C, #DE6262);
	/* Chrome 10-25, Safari 5.1-6 */
	background: linear-gradient(to bottom, #ff07074f, #57afbd);
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
	/*float: left;*/
	width:100%;
	height:970px;
	padding: 200px 0;
}

.banner-sec {
	background: url(https://static.pexels.com/photos/33972/pexels-photo.jpg)
		no-repeat left bottom;
	background-size: cover;
	min-height: 500px;
	border-radius: 0 10px 10px 0;
	padding: 0;
}

.container {
	background: #fff;
	border-radius: 10px;
	box-shadow: 15px 20px 0px rgba(0, 0, 0, 0.1);
}

.carousel-inner {
	border-radius: 0 10px 10px 0;
}

.carousel-caption {
	text-align: left;
	left: 5%;
}

.login-sec {
	padding: 50px 30px;
	position: relative;
}

.login-sec .copy-text {
	position: absolute;
	width: 80%;
	bottom: 20px;
	font-size: 13px;
	text-align: center;
}

.login-sec .copy-text i {
	color: #FEB58A;
}

.login-sec .copy-text a {
	color: #E36262;
}

.login-sec h2 {
	margin-bottom: 30px;
	font-weight: 800;
	font-size: 30px;
	color: #DE6262;
}

.login-sec h2:after {
	content: " ";
	width: 100px;
	height: 5px;
	background: #FEB58A;
	display: block;
	margin-top: 20px;
	border-radius: 3px;
	margin-left: auto;
	margin-right: auto
}

.btn-login {
	background: #DE6262;
	color: #fff;
	font-weight: 600;
}

.banner-text {
	width: 70%;
	position: absolute;
	bottom: 40px;
	padding-left: 20px;
}

.banner-text h2 {
	color: #fff;
	font-weight: 600;
}

.banner-text h2:after {
	content: " ";
	width: 100px;
	height: 5px;
	background: #FFF;
	display: block;
	margin-top: 20px;
	border-radius: 3px;
}

.banner-text p {
	color: #fff;
}
</style>
</head>
<body>

	<!------ Include the above in your HEAD tag ---------->

	<div class="login-block">
		<div class="container">
			<div class="row">
				<div class="col-md-4 login-sec">
					<h2 class="text-center">Login Now</h2>
					<form class="login-form">
						<div class="form-group">
							<label for="exampleInputEmail1" class="text-uppercase">Username</label>
							<input type="text" class="form-control" placeholder="Username">

						</div>
						<div class="form-group">
							<label for="exampleInputPassword1" class="text-uppercase">Password</label>
							<input type="password" class="form-control" placeholder="Password">
						</div>


						<div class="form-check">
							<label class="form-check-label"> <input type="checkbox"
								class="form-check-input"> <small>Remember Me</small>
							</label>
							<button type="submit" class="btn btn-login float-right">Submit</button>
						</div>

					</form>
					<div class="copy-text">
						Created with <i class="fa fa-heart"></i> by <a
							href="http://grafreez.com">childsh_Anhyejin</a>
					</div>
				</div>
				<div class="col-md-8 banner-sec">
					<div id="carousel-example-generic" class="carousel slide"
						data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#carousel-example-generic" data-slide-to="0"
								class="active"></li>
							<li data-target="#carousel-example-generic" data-slide-to="1"></li>
							<li data-target="#carousel-example-generic" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner" role="listbox">
							<div class="carousel-item active">
								<img class="d-block img-fluid"
									src="https://images.pexels.com/photos/256541/pexels-photo-256541.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350"
									alt="First slide">
								<div class="carousel-caption d-none d-md-block">
									<div class="banner-text">
										<h2>This is Heaven</h2>
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing
											elit, sed do eiusmod tempor incididunt ut labore et dolore
											magna aliqua. Ut enim ad minim veniam, quis nostrud
											exercitation</p>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<img class="d-block img-fluid"
									src="https://images.pexels.com/photos/1543924/pexels-photo-1543924.jpeg?auto=compress&cs=tinysrgb&h=350"
									alt="First slide">
								<div class="carousel-caption d-none d-md-block">
									<div class="banner-text">
										<h2>This is Heaven</h2>
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing
											elit, sed do eiusmod tempor incididunt ut labore et dolore
											magna aliqua. Ut enim ad minim veniam, quis nostrud
											exercitation</p>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<img class="d-block img-fluid"
									src="https://images.pexels.com/photos/406153/pexels-photo-406153.jpeg?cs=srgb&dl=adult-book-book-series-406153.jpg&fm=jpg"
									alt="First slide">
								<div class="carousel-caption d-none d-md-block">
									<div class="banner-text">
										<h2>This is Heaven</h2>
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing
											elit, sed do eiusmod tempor incididunt ut labore et dolore
											magna aliqua. Ut enim ad minim veniam, quis nostrud
											exercitation</p>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- Bootstrap core JavaScript -->
	<script
		src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>