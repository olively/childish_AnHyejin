<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Kyungmin Bamboo - Write</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css">
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
<script>
$(document).ready(function(){
	
	$("#freetalk").attr('class','nav-item active');
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
	//-----------------------------------------------------
});
</script>
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
   flex:0 0 25%;
}
</style>
<body>

   <!-- Header -->
   <jsp:include page="/WEB-INF/views/header.jsp" flush="true" />

   <!-- Page Content -->
   <form class="form-horizontal" action="/main/write_processing" method="post">
      <div class="container" id="write">

         <!-- title -->
         <div class="form-group">
            <strong><label for="inputTitle" >Title</label>   </strong>      
               <input type="text" class="form-control" id="inputTitle" placeholder="Title" name="title">
         </div>
         
         <!-- summernote : content -->
         <strong><label for="inputTitle" >Content</label></strong>
         <textarea name="content" id="summernote"></textarea>
         <script>
            $('#summernote').summernote({
               placeholder : 'Write content..',
               tabsize : 2,
               height : 300
            });
         </script>

         <div style="text-align: center;">
            <br>
            <button type="submit" class="btn btn-success" >
            	<i class="fas fa-check"> Commit</i></button>
         </div>
      </div>
      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
   </form>
   
   <!-- Footer -->
   <jsp:include page="/WEB-INF/views/footer.jsp" flush="true" />
  

</body>
</html>