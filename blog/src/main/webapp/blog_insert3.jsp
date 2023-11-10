<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
                    <%@ page import="java.sql.*" %>
                    <%@ page import="java.io.*,com.oreilly.servlet.MultipartRequest,
javax.servlet.ServletException,javax.servlet.http.*" %>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
//string declaration start
	MultipartRequest m=new MultipartRequest(request,"C:/Users/bramh/eclipse-workspace/blog.zip_expanded/blog/src/main/webapp/image");

String blog_title=m.getParameter("blog_title");
String post_by=m.getParameter("post_by");
String description=m.getParameter("description");
String button=m.getParameter("button");
String image=m.getFilesystemName("image");
String date=m.getParameter("date");

//string declaration end


//db process start
		 Class.forName("com.mysql.jdbc.Driver");  //**imp in every
				
		 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","root","");   //path
				
		 String sql="insert into blog_details(blog_title,post_by,description,button,image,date)values(?,?,?,?,?,?)";

		 PreparedStatement p=con.prepareStatement(sql);
		 
		 p.setString(1, blog_title);
		 p.setString(2, post_by);
		 p.setString(3, description);
		 p.setString(4, button);
		 p.setString(5, image);
		 p.setString(6, date);
	
		
		 
		 int i=p.executeUpdate();    //if data insert then //
		 
		 if(i>0){
			 
			 //System.out.println("data inserted"
			  response.sendRedirect("index.jsp");   //next 3rd
		 }else{
			 
			// System.out.println("data failed");

			response.sendRedirect("blog_insert.jsp");    //or staying there

		 }

//db for insert end
 
%>
</body>
</html>