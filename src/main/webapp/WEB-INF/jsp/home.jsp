<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html lang="en">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  	<meta name="description" content="">
  	<meta name="author" content="">
	<title>Home</title>
	<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
    rel="stylesheet">
	<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css""
    rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/style.css"
    rel="stylesheet">
</head>

<body>
	
  <nav class="navbar navbar-expand-md navbar-light bg-info">
   	<a class="navbar-brand" href="#">Welcome</a>
    <button class="navbar-toggler navbar-toggler-right" 
    		type="button" 
    		data-toggle="collapse" 
    		data-target="#navbarSupportedContent" 
    		aria-controls="navbarSupportedContent" 
    		aria-expanded="false" 
    		aria-label="Toggle navigation">
    		
      <span class="navbar-toggler-icon"></span>
    </button>
    
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <a class="nav-link" href="/myApp/home/quoteform">Add quote</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/myApp/home/viewquote">View quotes</a>
        </li>
     </ul>
    </div>
  </nav>
  <div class="container centered">
		<div class="mainColor jumbotron text-center ">
  		<h5 class="innertext"><i class="fa fa-quote-left"></i> ${list.get(num).message}</h5>
	    <p class="lead innertext"><i>- ${list.get(num).author}</i></p>
	    <hr class="my-4">
	    <p class="lead">
	    <a class="btn btn-primary btn-lg innertext" href="/myApp/home" role="button">Learn more</a>
	    </p>
    </div>
  </div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
