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
<h1>edit</h1>


<%
int id=Integer.parseInt(request.getParameter("id"));      //id convert becuse fetchind id 

Class.forName("com.mysql.jdbc.Driver");  //**imp in every

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","root",""); 

Statement st=con.createStatement();

ResultSet rs=st.executeQuery("select * from blog_details where id="+id);     //where id= fetching my next comment

while(rs.next())
{

%>
	<form action="blog_edit2.jsp" method="post">
			<input type="hidden" name="id" value="<%=rs.getInt(1) %>">
	

<fieldset>
<center>
<label>blog_title: </label>
<input type="text" name="blog_title" value="<%=rs.getString(2) %>">

<label>post_by: </label>
<input type="text" name="post_by" value="<%=rs.getString(3) %>">  <br><br>

<label>description: </label>
<input type="text" name="description" value="<%=rs.getString(4) %>"> <br><br>

<label>buttton: </label>
<input type="text" name="button" value="<%=rs.getString(5) %>"> <br><br>

<label>image: </label>
<input type="file" name="image" value="<%=rs.getString(6) %>"> <br><br>

<label>date: </label>
<input type="text" name="date" value="<%=rs.getString(7) %>"> <br><br>


<button type="submit">next</button>




<%
}
%>
</center>
</fieldset>
</form>
</body>
</html>