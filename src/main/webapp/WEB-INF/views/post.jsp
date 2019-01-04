<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*"%>
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
<meta name="_csrf" content="${_csrf.token}" />
<!-- default header name is X-CSRF-TOKEN -->
<meta name="_csrf_header" content="${_csrf.headerName}" />

<title>Kyungmin Bamboo - Post</title>

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

#footer {
	margin-top: -1em;
	height: 1em
}
</style>
<script>
	function getTimeStamp(reg_date) {
	  var d = new Date(reg_date);
	  var s =
	    leadingZeros(d.getFullYear(), 4) + '-' +
	    leadingZeros(d.getMonth() + 1, 2) + '-' +
	    leadingZeros(d.getDate(), 2) + ' ' +

	    leadingZeros(d.getHours(), 2) + ':' +
	    leadingZeros(d.getMinutes(), 2) + ':' +
	    leadingZeros(d.getSeconds(), 2);

	  return s + ".0";
	}

	function leadingZeros(n, digits) {
	  var zero = '';
	  n = n.toString();

	  if (n.length < digits) {
	    for (i = 0; i < digits - n.length; i++)
	      zero += '0';
	  }
	  return zero + n;
	}
	
	$(document).ready(function() {
		$("#freetalk").attr('class', 'nav-item active');

		$("#commentForm").submit(function(event) {
			event.preventDefault();
			var token = $("meta[name='_csrf']").attr("content");
			var header = $("meta[name='_csrf_header']").attr("content");
			var req = {};

			req["content"] = $("textarea[name=content]").val();
			req["f_bid"] = $("input[name=f_bid]").val();

			$.ajax({
				type : "POST",
				url : "/main/freetalk/write_comment",
				contentType : "application/json; charset=utf-8",
				data : JSON.stringify(req),
				dataType : 'json',
				beforeSend : function(xhr) {
					xhr.setRequestHeader(header, token);
				},
				success : function(data) {
					data['reg_date'] = getTimeStamp(data['reg_date']);
					
					$("#commentList").append(
						'<div class="media mb-4">' +
						'<div class="media-body">' +
							'<h5 class="mt-0">' + data['writer'] + '</h5>' +
							'<p class="mt-0">' + data['reg_date'] + '</p>' +
							'<p class="mt-0">' + data['content'] + '</p>' +
						'</div>' +
					'</div>'
					);
					
					$("#commentForm").find("textarea").val("");
				},
				error : function(data) {
					console.log(data);
				}
			});
		});
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
				<h1 class="mt-4">${post_vo.title}</h1>

				<!-- Author -->
				<p class="lead">
					by <a href="#">${post_vo.writer }</a>
				</p>

				<hr>

				<!-- Date/Time -->
				<p>${vo.reg_date}</p>
				<hr>
				<hr>
				<!-- Post Content -->
				<p class="lead">${post_vo.content }</p>
				<hr>
				<!-- Comments Form -->
				<div class="card my-4">
					<h5 class="card-header">Leave a Comment:</h5>
					<div class="card-body">
						<form id="commentForm">
							<div class="form-group">
								<textarea class="form-control" name="content" rows="3"></textarea>
							</div>
							<input type="hidden" name="f_bid" value="${post_vo.p_bid }" />
							<button style="float: right;" type="submit"
								class="btn btn-primary">Submit</button>
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
							<div id="commentList" class="card-body">
								<!-- Single Comment -->
								<c:forEach var="comment" items="${comment_list}">
								<div class="media mb-4">
									<div class="media-body">
										<h5 class="mt-0">${comment.writer}</h5>
										<p class="mt-0">${comment.reg_date}</p>
										<p class="mt-0">${comment.content}</p>
									</div>
								</div>
								</c:forEach>
							</div>
						</div>

					</div>
				</div>
				<br> <br>
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
