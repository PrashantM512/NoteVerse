<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="all_js_css.jsp" %>
<title>Add Note</title>

</head>
<body>
<%@include file="navbar.jsp" %>

<div class="container">
<h2>Add Note Here :</h2>

<form action="SaveNoteServlet" method="Post">
  <div class="form-group">
    <label for="title">Title</label>
    <input type="text" name="title" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter title" required>
  
  </div>
  <div class="form-group">
    <label for="content">Note Content</label>
    <textarea class="form-control" name="content" placeholder="Enter your note here" style="height:300px" required></textarea>
  </div>
  
  <button type="submit" class="btn btn-primary">Save Note</button>
</form>
</div>

</body>
</html>