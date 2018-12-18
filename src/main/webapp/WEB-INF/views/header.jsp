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
 
 
 <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#">Kyungmin Bamboo</a>
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