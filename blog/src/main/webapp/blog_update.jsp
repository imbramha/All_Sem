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

	<h2>blog_update</h2>
	
	<hr>
	<table border="2px">
		<tr>
			<th>id</th>
			<th>blog_title</th>
			<th>post_by</th>
			<th>description</th>
		    <th>button</th>
		    <th>image</th>
			<th>date</th>
			<th>Action</th>
		</tr>
		
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","root","");


Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from blog_details");

while(rs.next())
{
%>
<tr>
			<td><%=rs.getInt(1) %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getString(4) %></td>
			<td><%=rs.getString(5) %></td>
			
						
			<td>
				<img src="image/<%=rs.getString(6) %>" height="100px" width="100px">
			</td>
				<td><%=rs.getString(7) %></td>
			    
		<td>
				<a href="blog_edit.jsp?id=<%=rs.getInt(1) %>">   Edit |  <a href="blog_delete.jsp?id=<%=rs.getInt(1) %>">  delete </a> | 
		       </a> | 
				
			</td>  
		</tr>
<% } %>		
			
		
		
</body>
</html>