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

	String email=request.getParameter("email");
	String password=request.getParameter("password");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","root","");

	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from admin_login where email='"+email+"' and password='"+password+"'");
	if(rs.next())
	{
		HttpSession sess=request.getSession();
		sess.setAttribute("username",email);
		out.println("login succesful");
		response.sendRedirect("index.jsp");
	}
	else
	{
		
		response.sendRedirect("admin.html");
	}
	
%>

</body>
</html>