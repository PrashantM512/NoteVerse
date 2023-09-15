<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="com.helper.*" %>
    <%@page import="org.hibernate.*" %>
      <%@page import="java.util.*" %>
      <%@page import="com.entities.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="all_js_css.jsp" %>
<title>Update Note</title>
</head>
<body>
<%@include file="navbar.jsp" %>
<h2>Edit your note here :</h2>

<%
Session s=FactoryProvider.getFactory().openSession();
Transaction tx=s.beginTransaction();
int id=Integer.parseInt(request.getParameter("note_id"));

Note note=s.get(Note.class, id);

tx.commit();
s.close();
%>

<div class="container">
<form action="UpdateNoteServlet" method="Post">
  <div class="form-group">
    <label for="title" >Title</label>
    <input type="text" value="<%=note.getTitle() %>"  name="title" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter title" required>
  
  </div>
  <div class="form-group">
    <label for="content">Note Content</label>
    <textarea class="form-control" name="content" placeholder="Enter your note here" style="height:300px" required><%=note.getContent() %></textarea>
  </div>
  
  <input type="text" name="note_id" value="<%=id %>" hidden>
  <button type="submit" class="btn btn-primary">Save Note</button>
</form>
</div>
</body>
</html>