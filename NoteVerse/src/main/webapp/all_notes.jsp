<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.helper.*"%>
<%@page import="org.hibernate.*"%>
<%@page import="java.util.*"%>
<%@page import="com.entities.*"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="all_js_css.jsp"%>
<title>View Notes</title>
</head>
<style>
body {
	
}
</style>
<body>
	<%@include file="navbar.jsp"%>
	<div class="mt-2 ml-4">
		<h2 class="text-primary">Your Notes :</h2>
	</div>

	<div class="row">
		<div class="col-12">
			<%
			try {
				Session s = FactoryProvider.getFactory().openSession();
				Query q = s.createQuery("from Note");

				List<Note> notes = q.list();

				for (Note note : notes) {
			%>

			<div class="card ml-4 mr-4 mb-2" style="background-color: #ffb44a30;">
				<img src="img/notes.png" style="max-width: 60px"
					class="card-img-top m-4" alt="...">
				<div class="card-body">
					<h5 class="card-title"><%=note.getTitle()%></h5>
					<p class="card-text"><%=note.getContent()%></p>
					<b><p class="text-primary"><%=note.getAddedDate()%></p></b> <a
						href="DeleteServlet?note_id=<%=note.getId()%>"
						class="btn btn-danger">Delete</a> <a
						href="edit.jsp?note_id=<%=note.getId()%>" class="btn btn-primary">Update</a>
				</div>
			</div>
			<%
			}
			s.close();

			} catch (Exception e) {
			e.printStackTrace();
			}
			%>

		</div>
	</div>
</body>
</html>