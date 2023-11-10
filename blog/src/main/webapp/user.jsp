<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
                <%@ page import="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body style="background-color:#999999">
  <nav class="navbar navbar-inverse" style="background-color:darkgrey">
        <div class="navbar-header">
         <button type="button" data-toggle="collapse" data-target="#mynav" class="navbar-toggle">
           <span class="icon-bar"></span>
           <span class="icon-bar"></span>
       <!--      <span class="icon-bar"></span>
           <span class="icon-bar"></span>		--> 
         </button>
         </div>

    <div id="mynav" class="collapse navbar-collapse" style="background-color:black">
        <ul class="nav navbar-nav">
        <li><a href="#">home</a></li>      
		<li><a href="nav1.jsp">about us</a></li>
       <!--   <li><a href="#">blog</a></li>				
        <li><a href="#">address</a></li>	-->
        </ul>
       </div>
     </nav>

     <div class="container-fluid p-0 m-0 text-light">
            <div class="jumbotron bg-primary banner-background">
                <div class="container">
                
                   <h2 class="display-3" style="color:darkblue"><b>Welcome to Tech Blog</b></h2><br>
                   <h2>Indian mobile market(2021)</h2>
                    <p>
                       India is the second-largest mobile market, ahead of the US with over 400 million smartphone users 
                       whereas China leads in terms of the number of users.About 55% of the smartphone sales are online in India, whereas retail accounts for a 45% share.
					   More than 10 million 5G smartphones were shipped in Q3-2021, and most manufacturers are offering 5G mobiles in above Rs. 20000 price segment.
					   About 33% of phones sold are in Rs. 11,000 to Rs. 18,000 price range, and is the fastest-growing segment.
					   In below some information about top mobile brands in india..
                    </p>
                   <!--   <a class="text-dark m-1" href="login.jsp"><button class="btn btn-outline-light btn-lg"><span class="fa fa-spin fa-user-circle-o"></span> Login</button></a>-->
                </div>
            </div>
        </div>

        <!--cards-->
        <div class="container">
        <div class="row">
           
       <%
       Class.forName("com.mysql.jdbc.Driver");
   	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","root","");
   	
   	Statement st=con.createStatement();
   	
   	ResultSet rs=st.executeQuery("select * from blog_details");
	
	while(rs.next())
	{
%>	
         	<div class="col-sm-4">
            
    			<h3 class="display-3"  style="color:black; text-align:left"><b><%=rs.getString(2) %></b></h3>
    			
    					    			<br> 
    						
    			
    		  <img src="image/<%=rs.getString(6) %>" height="200" width="370"> 
    			
    			<br><br>
    			
    		 	<p class="display-3" style="color:black"><%=rs.getString(4) %></p>
    		
            <button type="submit" style="background-color:lightgrey; border-color:blue" class="button button4:12px"> <a href="<%=rs.getString(5) %>" target="_blank">click here see official website</a></button>
          
               <br><br>
             
            </div>
          <%} %>    
        </div>
        </div>
</body>
</html>