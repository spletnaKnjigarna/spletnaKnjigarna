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
img {
    max-width: 100%;
    height: auto;
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
</style>


<body>
<!-- Dropdown Structure -->
<ul id="dropdown1" class="dropdown-content">
  <li><a href="/vstopKnjigarnar/seznam_knjig_knjigarnar?">Seznam knjig</a></li>
  <li><a href="/vstopKnjigarnar/dodaj_knjigo?">Dodaj knjigo</a></li>
</ul>

<ul id="dropdown2" class="dropdown-content">
  <li><a href="/vstopKnjigarnar/seznam_dobavitelji?">Seznam dobaviteljev</a></li>
  <li><a href="/vstopKnjigarnar/dodaj_dobavitelja">Dodaj dobavitelja</a></li>
</ul>

<ul id="dropdown3" class="dropdown-content">
	% for dobavitelj in dobavitelji:
		<li><a href="/vstopKnjigarnar/{{dobavitelj['ime_podjetja']}}">{{dobavitelj['ime_podjetja']}}</a></li>
	% end
</ul>

<ul id="dropdown4" class="dropdown-content">
  <li><a href="/vstopKnjigarnar/odprta_narocila">Odprta naročila</a></li>
  <li><a href="/vstopKnjigarnar/zakljucena_narocila">Zaključena naročila</a></li>
</ul>

<nav>
  <div class="nav-wrapper indigo darken-4">
    <a class="brand-logo" style="margin-left: 15px">Stran za lastnika</a>
    <ul class="right hide-on-med-and-down">
		<li><a href="/">Domača stran</a></li>
		<!-- Dropdown Trigger -->
		<li><a class="dropdown-button" href="#!" data-activates="dropdown1">Knjige<i class="material-icons right">arrow_drop_down</i></a></li>
		<li><a class="dropdown-button" href="#!" data-activates="dropdown2">Dobavitelji<i class="material-icons right">arrow_drop_down</i></a></li>
		<li><a class="dropdown-button" href="#!" data-activates="dropdown3">Naroči pri dobavitelju<i class="material-icons right">arrow_drop_down</i></a></li>
		<li><a class="dropdown-button" href="#!" data-activates="dropdown4">Naročila<i class="material-icons right">arrow_drop_down</i></a></li>
		<li><a href="/vstopKnjigarnar/izpis" style="margin-right: 15px">Izpis</a></li>
	</ul>
  </div>
</nav>

<div><h3 style="font-family:courier; text-align: center;">
	Dobavitelj:  {{ime}}</h3>
</div>

<div id="main">

<section class="container">
  <table class="bordered">
  <thead>
	 <tr><th>Avtor</th><th>Naslov knjige</th><th>Na zalogi</th></tr>
  </thead>
  <tbody>
	 % for knjiga in knjige:
	 <tr>
	 <td>
	 {{knjiga['avtor']}}
	 </td>
	 <td>
	 {{knjiga['naslov']}}
	 </td>
	 <td>
	 {{knjiga['st_naZalogi']}}
	 </td></tr>
	 % end
  </tbody>
  </table>
 </section>
 
</div>

</body>
</html>