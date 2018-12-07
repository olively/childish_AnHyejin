<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>bootstrap4</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.css"
	rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/blog-post.css">
</head>
<style>
#footer {
	position: absolute;
	bottom: 0;
	width: 100%;
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

@media ( min-width : 576px) .col-sm-3 {
	flex
	:
	 
	0
	0
	25%;
}
</style>
<body>

	<!-- Header -->
	<jsp:include page="/WEB-INF/views/header.jsp" flush="true" />
	<div>
		<br> <br> <br>
	</div>

	<!-- Page Content -->
	<form class="form-horizontal">
		<div class="container" id="write">

			<!-- title -->
			<div class="form-group">
				<strong><label for="inputTitle" >Title</label>	</strong>		
					<input type="text" class="form-control" id="inputTitle" placeholder="Title">
			</div>
			
			<!-- summernote : content -->
			<strong><label for="inputTitle" >Content</label></strong>
			<div id="summernote"></div>
			<script>
				$('#summernote').summernote({
					placeholder : 'Write content..',
					tabsize : 2,
					height : 300
				});
			</script>

			<div style="text-align: center;">
				<br>
				<button type="button" class="btn btn-success" >Commit</button>
			</div>
		</div>


	</form>
	<!-- Footer -->
	<jsp:include page="/WEB-INF/views/footer.jsp" flush="true" />

</body>
</html>
