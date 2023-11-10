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
<%
int id=Integer.parseInt(request.getParameter("id"));      //id convert becuse fetchind id 


String blog_title=request.getParameter("blog_title");
String post_by=request.getParameter("post_by");
String description=request.getParameter("description");
String button=request.getParameter("button");
String image=request.getParameter("image");
String date=request.getParameter("date");


 Class.forName("com.mysql.jdbc.Driver");  //**imp in every
	
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","root","");   //path
		
 String sql="update blog_details set blog_title=?, post_by=?, description=?, button=?, image=?, date=? where id="+id;

 PreparedStatement p=con.prepareStatement(sql);
 p.setString(1, blog_title);
 p.setString(2, post_by);
 p.setString(3, description);
 p.setString(4, button);
 p.setString(5, image);
 p.setString(6, date);


 
 int i=p.executeUpdate();
if(i>0) {
	 response.sendRedirect("blog_update.jsp");
	 
 }else{
	 response.sendRedirect("blog_update.jsp");
 }
 
%>
</body>
</html>