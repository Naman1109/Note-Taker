<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Inconsolata">
<style>
body, html {
	height: 100%;
	font-family: "Inconsolata", sans-serif;
}

.bgimg {
	background-position: center;
	background-size: cover;
	background-image: url("images/bgfinal.png");
	min-height: 100%;
	margin-top: 0px;
}

.menu {
	display: none;
}
</style>

<title>Note Taker : Show Notes</title>
<%@include file="all_js_css.jsp"%>
</head>

<!-- Body Start -->

<body>

	<!-- Links (sit on top) -->
	<div class="container">

		<%@include file="navbar.jsp"%>
	</div>
	<!-- Header with image -->
	<header
		class="bgimg w3-display-container w3-grayscale-min container  rounded"
		id="home">
		<div class="w3-display-middle w3-center ">
			<!-- <span class="w3-text-white" style="font-size:60px;">Note<br>Taker</span  -->
			>
		</div>
		<div class="w3-display-bottomright w3-center w3-padding-large">
			<span class="w3-text-white"></span>
		</div>
	</header>

	<!-- Add a background color and large text to the whole page -->
	<div class="w3-sand w3-grayscale w3-large container">

		<!-- About Container -->
		<div class="w3-container container" id="about">
			<div class="w3-content container" style="max-width: 700px">
				<h5 class="w3-center w3-padding-64 container">
					<span class="w3-tag w3-wide">ABOUT Note Taker</span>
				</h5>
				<p>Note-taking is an essential part of the learning process.
					Studies have shown that effective note-taking encourages students
					to stay focused [1], can promote learning internally (also known as
					encoding, which states that students learn when they process
					information that they hear or see and translate it into their own
					words) and externally (also known as artifact, which means the
					student will be able to review their notes at a future time and
					augment their exposure to the material) [2]. Pedagogically,
					note-taking allows students to process new information faster and
					in a more deeper level than if they were to experience the
					information, and reviewing notes leads to a higher recall of the
					information.</p>

				<p>Most students like to keep digital copies of notes and tend
					to scan their notes. This leads to poor image quality and
					inefficiency in studying. Note-taking apps allow students to forego
					the middle step. For this reason, the Office of Disability Services
					prefers that students use note-taking apps instead of scanning
					their notes, as note-taking apps can provide notes that are more
					clear and easier to read.</p>
				<div class="w3-panel w3-leftbar w3-light-grey container">
					<p>
						“Success is no accident. It is hard work, perseverance, learning,
						studying, sacrifice and most of all, love of what you are doing or
						learning to do.”</i>
					</p>
					<p>:- Pelé, Brazillian pro footballer</p>
				</div>
			</div>
		</div>


		<!-- End page content -->
	</div>

	<!-- Footer -->
	<footer
		class="w3-center w3-light-grey w3-padding-48 w3-large container">
		<p>Designed By Naman Soni</p>
	</footer>



	<script>
		// Tabbed Menu
		function openMenu(evt, menuName) {
			var i, x, tablinks;
			x = document.getElementsByClassName("menu");
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			tablinks = document.getElementsByClassName("tablink");
			for (i = 0; i < x.length; i++) {
				tablinks[i].className = tablinks[i].className.replace(
						" w3-dark-grey", "");
			}
			document.getElementById(menuName).style.display = "block";
			evt.currentTarget.firstElementChild.className += " w3-dark-grey";
		}
		document.getElementById("myLink").click();
	</script>

</body>
</html>
