

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">      
		<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/css/materialize.min.css">
		<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>           
		<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/js/materialize.min.js"></script>
	</head>
<style>
.centered {
  position: fixed;
  top: 108px;
  left: 30%;
  margin-top: -50px;
  margin-left: -100px;
}

/* Full-width input fields */
	input[type=text], input[type=password] {
		width: 100%;
		padding: 12px 20px;
		margin: 8px 0;
		display: inline-block;
		border: 1px solid #ccc;
		box-sizing: border-box;
	}

	/* Set a style for all buttons */
	button {
		border: none;
		cursor: pointer;
		width: auto;
	}

	/* Center the image and position the close button */
	.imgcontainer {
		text-align: center;
		margin: 24px 0 12px 0;
		position: relative;
	}

	img.avatar {
		width: 20%;
		border-radius: 30%;
	}

	.container {
		padding: 16px;
	}

	span.psw {
		float: right;
		padding-top: 16px;
	}

	/* The Modal (background) */
	.modal {
		display: none; /* Hidden by default */
		position: fixed; /* Stay in place */
		z-index: 1; /* Sit on top */
		left: 0;
		top: 0;
		width: 100%; /* Full width */
		height: 100%; /* Full height */
		overflow: auto; /* Enable scroll if needed */
		background-color: rgb(0,0,0); /* Fallback color */
		background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
		padding-top: 80px;
	}

	/* Modal Content/Box */
	.modal-content {
		background-color: #fefefe;
		margin: auto;
		border: 1px solid #888;
		width: 50%;
	}

	.close:hover,
	.close:focus {
		color: red;
		cursor: pointer;
	}

	/* Add Zoom Animation */
	.animate {
		-webkit-animation: animatezoom 0.6s;
		animation: animatezoom 0.6s
	}

	@-webkit-keyframes animatezoom {
		from {-webkit-transform: scale(0)} 
		to {-webkit-transform: scale(1)}
	}
		
	@keyframes animatezoom {
		from {transform: scale(0)} 
		to {transform: scale(1)}
	}
	
	nav ul li a{
		color: white;
	}  
	
	IMG.displayed {
		display: block;
		margin-top: 5px;
		margin-bottom: 15px;
		margin-left: auto;
		margin-right: auto 
	}
	
	.btn-large {
		height: 100px;
	}
</style>

<body>

  <nav>
    <div class="nav-wrapper indigo darken-4">
      <a class="brand-logo center">SPLETNA KNJIGARNA</a>
      	<ul id="nav-mobile" class="right hide-on-med-and-down">
			<li><a href="javascript:void(0)">Kontakt</a></li>
		</ul>
    </div>
  </nav>


<section>
	<div class="centered">
		<IMG class="displayed"; src="http://writersrelief.com/wp-content/uploads/2016/02/peabody1.jpg" width=screen.availWidth  height="400">
	</div>
</section>

<section>
<div class="displayed">
<div class = "centered">
	<a href="/stran_za_kupca?">
		<button class="waves-effect waves-light btn-large indigo darken-4" style="margin-top: 500px">
		<h4>VSTOP ZA KUPCE</h4>
		</button>
	</a>


<!-- Modal Trigger -->
<button class="waves-effect waves-light btn-large indigo darken-4 modal-trigger" href="#modal1" style="margin-left: 125px; margin-top: 500px">
	<h4>VSTOP ZA LASTNIKA</h4>
</button>
</div>

<!-- Modal Structure -->
<div id="modal1" class="modal">
  
  <form class="modal-content animate" action="/" method="post">
	<div class="imgcontainer">
	  <img src="http://www.freeiconspng.com/uploads/book-icon-black-good-galleries--24.jpg" alt="Avatar" class="avatar">
	</div>

	<div class="container">
		<input type="hidden" name="uporabnisko_ime" value="admin" />
		<label><b>Password</b></label>
		<input type="password" placeholder="Vnesi geslo" required name="geslo">
		<button class="waves-effect waves-light btn indigo darken-4" type="submit">Vpiši me!<i class="material-icons right">send</i></button>     
	</div>
  </form>
</div>

	
	
		
</section>

<script>
  $(document).ready(function(){
    // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
    $('.modal-trigger').leanModal();
  });
</script>


</body>
</html>

