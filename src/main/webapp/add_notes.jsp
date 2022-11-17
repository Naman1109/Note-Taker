<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Note</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>



		<!-- This Is Add Form -->

		<form action="SaveNoteServelet" method="post">
			<div class="form-group ">
				<label for="title">Note Title</label> <input name="title"
					type="text" class="form-control  rounded border border-dark"
					id="title" aria-describedby="emailHelp" placeholder="Title"
					required>
			</div>
			<div class="form-group">
				<label for="content">Note content</label>
				<textarea name="content"
					class="form-control  rounded border border-dark" id='content'
					placeholder="Enter Content Here" style="height: 250px;" required></textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-primary">Add Note</button>
			</div>

		</form>
	</div>
</body>
</html>