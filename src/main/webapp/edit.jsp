<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Note Taker : Show Notes</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());

		Session s = FactoryProvider.getFactory().openSession();
		Note note = (Note) s.get(Note.class, noteId);
		%>

		<form action="UpdateServelet" method="post">
			<div class="form-group">
				<input name="noteId" value=<%=note.getId()%> type="hidden">
				<label for="title">Note Title</label> <input name="title"
					type="text" class="form-control" id="title"
					value="<%=note.getTitle()%>" aria-describedby="emailHelp"
					placeholder="Title" required>
			</div>
			<div class="form-group">
				<label for="content">Note content</label>
				<textarea name="content" class="form-control" id='content'
					placeholder="Enter Content Here" style="height: 250px;" required><%=note.getContent()%></textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-success">Save</button>
			</div>


		</form>
	</div>
</body>
</html>