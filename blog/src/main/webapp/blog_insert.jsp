<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
                <%@ page import="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<body>
   <form action="blog_insert3.jsp" method="post" enctype="multipart/form-data">
<legend>Blog Registration</legend>

<fieldset>
<center>
<label>Blog Title: </label>
<input type="text" placeholder="enter blog title" name="blog_title">

<label>Post By: </label>
<input type="textarea" placeholder="mention post by" name="post_by">  <br><br>

<label>Description: </label>
<input type="text" placeholder="add description" name="description"> <br><br>

<label>link: </label>

<input type="text" placeholder="click here" name="button"> <br><br>


<label>Image: </label>
<input type="file" placeholder="upload image" name="image"> <br><br>

<label>Date: </label>
<input type="date" placeholder="mention date" name="date"> <br><br>




<button type="submit" >Submit</button>
</center>



</fieldset>
</form>






</body>
</html>