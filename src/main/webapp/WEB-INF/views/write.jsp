<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>bootstrap4</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
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
   <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#">Start Bootstrap</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
          <li class="nav-item 1" id="introduce" name="introduce">
              <a class="nav-link" href="#">Introduce</a>
            </li>
            <li class="nav-item 2" id="freetalk" name="freetalk">
              <a class="nav-link" href="#">FreeTalk
                <span class="sr-only">(current)</span>
              </a>
            </li>
           <li class="nav-item 3" id="depttalk" name="depttalk">
              <a class="nav-link" href="#">Dept Talk</a>
            </li>
            <li class="nav-item 4" id="gallery" name="gallery">
              <a class="nav-link" href="#">Gallery</a>
            </li>
            <li class="nav-item 5" id="QnA" name="QnA">
              <a class="nav-link" href="#">QnA</a>
            </li>
            <li class="nav-item 6" id="notice" name="notice">
              <a class="nav-link" href="#">Notice</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
   <div>
      <br> <br> <br>
   </div>

   <!-- Page Content -->
   <form class="form-horizontal">
      <div class="container" id="write">

         <!-- title -->
         <div class="form-group">
            <strong><label for="inputTitle" >Title</label>   </strong>      
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
    <footer class="py-5 bg-dark" id="footer">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Kyungmin Bamboo 2018</p>
      </div>
      <!-- /.container -->
    </footer>
  

</body>
</html>