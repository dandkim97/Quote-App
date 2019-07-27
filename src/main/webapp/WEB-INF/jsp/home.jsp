<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html lang="en">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  	<meta name="description" content="">
  	<meta name="author" content="">
	<title>Welcome!</title>
	<link href="<c:url value="/resources/css/bootstrap.min.css"/>"
    rel="stylesheet">
	<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css""
    rel="stylesheet">
    <link href="<c:url value="/resources/css/style.css"/>"
    rel="stylesheet">
</head>

<body>


  <nav class="navbar navbar-expand-md navbar-dark bg-muted">
   	<a class="navbar-brand" href="/myApp/home">QG-App</a>
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
  <div class="quote-box">
		<div class="quote-box-color jumbotron text-center ">
  		<h5 class="innertext" id="message"><i class="fa fa-quote-left"></i> ${list.get(num).message}</h5>
	    <p class="lead innertext" id="author"><i>- ${list.get(num).author}</i></p>
	    <hr class="my-4">
	    <p class="lead">
	    <button class="btn btn-outline-info btn-sm" id="colorBtn" onclick="changeColor()">New Color! </button>
	    <a class="btn btn-outline-info btn-sm" href="/myApp/home" role="button">Load New Quote</a>
	    </p>
    </div>
  </div>

<script>
var message = document.getElementById("message");
var author = document.getElementById("author");


var colors = ['#16a085', '#27ae60', '#2c3e50', 
	'#f39c12', '#e74c3c', '#9b59b6', '#FB6964', 
	'#342224', '#472E32', '#BDBB99', '#77B1A9', '#73A857'];

function changeColor(){
	var rand = Math.floor(Math.random()*12);
	message.style.transitionDuration = "1s";
	message.style.color = colors[rand];
	author.style.transitionDuration = "1s";
	author.style.color = colors[rand];
	document.body.style.transitionDuration = "1s";
	document.body.style.background = colors[rand];
}
</script>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
