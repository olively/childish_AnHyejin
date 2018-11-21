<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Kyungmin Bamboo - gallery</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css">

	<!-- Custom fonts for this template -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css" >
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
    
    <!-- Custom styles for this template -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/thumbnail-gallery.css">

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

.pagination {
   justify-content: center;
}
</style>
</head>

  <body>

    <!-- Header -->
   <jsp:include page="/WEB-INF/views/header.jsp" flush="true" />
   
   <li class="nav-item"><a class="nav-link" href="#">Free
						Talk <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Dept Talk</a>
				</li>
				<li class="nav-item active"><a class="nav-link" href="#">Gallery</a></li>
				<li class="nav-item"><a class="nav-link" href="#">QnA</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Notice</a></li>
			</ul>
		</div>
	</div>
</nav>

    <!-- Page Content -->
    <div class="container">

      <h1 class="my-4 text-center text-lg-left">Gallery</h1>

      <div class="row text-center text-lg-left">

        <div class="col-lg-3 col-md-4 col-xs-6">
          <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="http://placehold.it/400x300" alt="">
          </a>
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6">
          <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="http://placehold.it/400x300" alt="">
          </a>
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6">
          <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="http://placehold.it/400x300" alt="">
          </a>
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6">
          <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="http://placehold.it/400x300" alt="">
          </a>
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6">
          <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="http://placehold.it/400x300" alt="">
          </a>
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6">
          <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="http://placehold.it/400x300" alt="">
          </a>
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6">
          <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="http://placehold.it/400x300" alt="">
          </a>
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6">
          <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="http://placehold.it/400x300" alt="">
          </a>
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6">
          <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="http://placehold.it/400x300" alt="">
          </a>
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6">
          <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="http://placehold.it/400x300" alt="">
          </a>
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6">
          <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="http://placehold.it/400x300" alt="">
          </a>
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6">
          <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="http://placehold.it/400x300" alt="">
          </a>
        </div>
      </div>

    </div>
    <!-- /.container -->
    
    <!-- Pagination -->
          <div style="text-align : center;">
				<nav aria-label="Page navigation example">
					<ul class="pagination">
						<li class="page-item"><a class="page-link" href="#"
							aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
								<span class="sr-only">Previous</span>
						</a></li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">4</a></li>
						<li class="page-item"><a class="page-link" href="#">5</a></li>
						<li class="page-item"><a class="page-link" href="#"
							aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span
								class="sr-only">Next</span>
						</a></li>
					</ul>
				</nav>
				</div>

			</div>

    <!-- Footer -->
   <jsp:include page="/WEB-INF/views/footer.jsp" flush="true" />
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
  <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  </body>

</html>
