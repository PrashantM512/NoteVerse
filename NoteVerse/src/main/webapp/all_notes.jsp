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
<title>View Notes</title>
</head>
<style>
body{
background-color:#ffd29b;
}
</style>
<body>
<%@include file="navbar.jsp" %>
<h2>Your Notes :</h2>

<div class="row">
<div class="col-12">
<%
try{
	Session s=FactoryProvider.getFactory().openSession();
	Query q=s.createQuery("from Note");

	List<Note> notes=q.list();
	int counter=1;
	for(Note note:notes){
		
		%>
		
	<div class="card ml-4 mr-4 mb-2">
 <img src="img/notes.png" style="max-width:60px" class="card-img-top m-4" alt="..."> 
  <div class="card-body">
    <h5 class="card-title"><%=note.getTitle() %></h5>
    <p class="card-text"><%=note.getContent() %></p>
    <a href="DeleteServlet?note_id=<%=note.getId() %>" class="btn btn-danger">Delete</a>
     <a href="edit.jsp?note_id=<%=note.getId() %>" class="btn btn-primary">Update</a>
  </div>
</div>
	<% 	
		/* out.println(counter+". "+note.getId()+" : "+note.getTitle());
		out.println("<br>");
		counter++; */
	}
	s.close();
	
}catch(Exception e){
	e.printStackTrace();
}


%>

</div>
</div>



</body>
</html>