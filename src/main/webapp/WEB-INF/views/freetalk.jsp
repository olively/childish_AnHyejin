<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Kyungmin Bamboo - freetalk</title>

<!-- Bootstrap core CSS -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css">

<!-- Custom fonts for this template -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic'
	rel='stylesheet' type='text/css'>

<!-- Custom styles for this template -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/blog-home.css">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
$(document).ready(function() {

	// 기존 css에서 플로팅 배너 위치(top)값을 가져와 저장한다.
	var floatPosition = parseInt($("#btnwrite").css('top'));
	// 250px 이런식으로 가져오므로 여기서 숫자만 가져온다. parseInt( 값 );

	$(window).scroll(function() {
		// 현재 스크롤 위치를 가져온다.
		var scrollTop = $(window).scrollTop();
		var newPosition = scrollTop + floatPosition + "px";


		$("#btnwrite").stop().animate({
			"top" : newPosition
		}, 200);

	}).scroll();
	
	
$("#freetalk").attr('class','nav-item active');
		
});
</script>

<style>
#footer {
	margin-top: -1em;
	height: 1em
}

#btnwrite{
	left:7%;
	top:40%;
	position:absolute;
}

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

small {
	font-size: 50%;
}

.pagination {
	justify-content: center;
}

</style>


</head>

<body>
	<!-- Header -->
	<jsp:include page="/WEB-INF/views/header.jsp" flush="true" />


	<!-- Page Content -->
	<div class="container">

		<div class="row">

			<!-- Blog Entries Column -->
			<div class="col-md-8">

				<h1 class="my-4">
					Free Talk <small>A free space for anyone to write.</small>
				</h1>

				<!-- Blog Post -->
				<!-- <div class="card mb-4">
					 <img class="card-img-top" src="http://placehold.it/750x300" alt="Card image cap">
					<div class="card-body">
						<h2 class="card-title">Post Title</h2>
						<p class="card-text">Lorem ipsum dolor sit amet, consectetur
							adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex
							quis soluta, a laboriosam. Dicta expedita corporis animi vero
							voluptate voluptatibus possimus, veniam magni quis!</p>
						<a href="post" class="btn btn-primary">Read More &rarr;</a>
					</div>
					<div class="card-footer text-muted">
						Posted on January 1, 2017 by <a href="post">Start Bootstrap</a>
					</div>
				</div> -->

				<!-- Blog Post -->
				<c:forEach var="board" items="${list}">
					<div class="card mb-4">
						<div class="card-body">
							<h2 class="card-title">${board.title}</h2>
							<p class="card-text">${board.content}</p>
							<a href="${pageContext.request.contextPath}/main/post?p_bid=${board.p_bid}" class="btn btn-primary">Read More &rarr;</a>
						</div>
						<div class="card-footer text-muted">
							Posted on ${board.reg_date} by ${board.writer}</a>
						</div>
					</div>
				</c:forEach>

				<!-- Pagination -->
				<div style="text-align: center;">
					<nav aria-label="Page navigation example">
						<ul class="pagination">
							<c:if test="${pageMaker.prev}">
							<li class="page-item"><a class="page-link" href="/main/freetalk?pnum=${pageMaker.startPage - 1}"
								aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
									<span class="sr-only">Previous</span>
							</a></li>
							</c:if>
							
							<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
								<li class="page-item ${pageMaker.currentPage == num ? "active":""}"><a class="page-link" href="/main/freetalk?pnum=${num}">${num}</a></li>
							</c:forEach>
							
							<c:if test="${pageMaker.next}">
							<li class="page-item"><a class="page-link" href="/main/freetalk?pnum=${pageMaker.endPage + 1}"
								aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span
									class="sr-only">Next</span>
							</a></li>
							</c:if>
							
						</ul>
					</nav>
				</div>

			</div>



			<!-- Sidebar Widgets Column -->
			<div class="col-md-4">

				<!-- Search Widget -->
				<div style="height: 4.5rem;"></div>
				<div class="card my-4">
					<h5 class="card-header">Search</h5>
					<div class="card-body">
						<div class="input-group">
							<div class="col-xs-2">
								<select class="form-control">
									<option>title</option>
									<option>content</option>
									<option>writer</option>
								</select>
							</div>
							<input type="text" class="form-control"
								placeholder="Search for..."> <span
								class="input-group-btn">
								<button class="btn btn-secondary" type="button">Go!</button>
							</span>
						</div>
					</div>
				</div>

				<!-- Categories Widget -->
				<!--  <div class="card my-4">
            <h5 class="card-header">Categories</h5>
            <div class="card-body">
              <div class="row">
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      <a href="#">Web Design</a>
                    </li>
                    <li>
                      <a href="#">HTML</a>
                    </li>
                    <li>
                      <a href="#">Freebies</a>
                    </li>
                  </ul>
                </div>
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      <a href="#">JavaScript</a>
                    </li>
                    <li>
                      <a href="#">CSS</a>
                    </li>
                    <li>
                      <a href="#">Tutorials</a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div> -->

				<!-- Side Widget -->
				<!-- <div class="card my-4">
            <h5 class="card-header">Side Widget</h5>
            <div class="card-body">
              You can put anything you want inside of these side widgets. They are easy to use, and feature the new Bootstrap 4 card containers!
            </div>
          </div> -->
				 <a href="/main/write">
				 <button style="float:right;" type="button" id="btnwrite"
					class="btn btn-success">
					<i class="fas fa-pencil-alt"> writing</i></button></a>
			</div>
		</div>
		<!-- /.row -->

	</div>
	<!-- /.container -->
	<br>
	<!-- Footer -->
	<jsp:include page="/WEB-INF/views/footer.jsp" flush="true" />

	<!-- Bootstrap core JavaScript -->
	<script
		src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
