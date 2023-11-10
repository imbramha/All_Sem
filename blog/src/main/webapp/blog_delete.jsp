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
<h1>delete</h1>

<%
int id=Integer.parseInt(request.getParameter("id"));      //id convert becuse fetchind id 

Class.forName("com.mysql.jdbc.Driver");  //**imp in every

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","root",""); 

String sql="delete from blog_details where id=?";     
//where id= fetching my next comment
PreparedStatement p=con.prepareStatement(sql);
p.setInt(1, id);

int i=p.executeUpdate();

if(i>0){
	response.sendRedirect("blog_update.jsp");       //if yes staying in show_delete_ink
	
}
else{
	response.sendRedirect("blog_update.jsp");

}

%>


</body>
</html>