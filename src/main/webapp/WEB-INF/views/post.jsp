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
$(document).ready(function() {
   $("#freetalk").attr('class','nav-item active');
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
            <h1 class="mt-4">${vo.title}</h1>

            <!-- Author -->
            <p class="lead">
               by <a href="#">${vo.writer }</a>
            </p>

            <hr>

            <!-- Date/Time -->
            <p>${vo.reg_date}</p>

            <hr>

            <!-- Preview Image -->
            <!--  <img class="img-fluid rounded" src="http://placehold.it/900x300"
               alt="">
            -->
            <hr>

            <!-- Post Content -->
            <p class="lead">${vo.content }</p>


            <hr>

            <!-- Comments Form -->
            <div class="card my-4">
               <h5 class="card-header">Leave a Comment:</h5>
               <div class="card-body">
                  <form>
                     <div class="form-group">
                        <textarea class="form-control" rows="3"></textarea>
                     </div>
                     <button style="float:right;" type="submit" class="btn btn-primary">Submit</button>
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