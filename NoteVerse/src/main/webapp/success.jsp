<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="all_js_css.jsp"%>
<title>successful</title>
</head>
<body>
	<%
	String action = (String) request.getAttribute("action");
	%>
	<%@include file="navbar.jsp"%>
	<div class="container text-center mt-4 py-4">
		<div class="card">
			<h2 class="text-uppercase text-primary mt-4">
				Note has been
				<%=action%>
				successfully
			</h2>

			<div class="container text-center">
				<a class="btn btn-outline-primary text-center mt-4 mb-4"
					href="all_notes.jsp">View Notes</a>
			</div>
		</div>


	</div>

</body>
</html>