<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.*"%>
<%@page import="java.util.*"%>
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

		<div class="row">
			<div class="col-12">


				<%
				Session s = FactoryProvider.getFactory().openSession();
				Query q = s.createQuery("from Note");
				List<Note> list = q.list();
				for (Note note : list) {
					/*  out.println(note.getId()+" : "+note.getContent()+"<br>"); */
				%>


				<div class="card mt-3 rounded border border-dark">
					<p class="contaner mt-2 mr-5"
						style="color: black; text-align: right;">
						Date :-
						<%=note.getDate()%></p>
					<img class="card-img-top pl-4 pt-0" style="max-width: 100px"
						src="images/sticky-notes.png" alt="Card image cap">
					<div class="card-body px-3">
						<h5 class="card-title">
							<%=note.getTitle()%>
						</h5>
						<p class="card-text ">
							<%=note.getContent()%>
						</p>
						<div class="container text-center">
							<a href="DeleteServelet?note_id=<%=note.getId()%>"
								class="btn btn-danger">Delete</a> <a
								href="edit.jsp?note_id=<%=note.getId()%>"
								class="btn btn-primary">Update</a>
						</div>
					</div>
				</div>


				<%
				}
				s.close();
				%>

			</div>
		</div>

	</div>
</body>
</html>