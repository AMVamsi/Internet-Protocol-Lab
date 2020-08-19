<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<!DOCTYPE html>
<html>
<body>
<%  try
    {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection(  
      "jdbc:mysql://localhost:3306/students","root","tiger");
		
	Statement stmt=con.createStatement();
	String sno=request.getParameter("sno");
	String sname=request.getParameter("sname");
	String bookid=request.getParameter("bookid");
	String query="insert into borrowbook 
                     values("+sno+",'"+sname+"',"+bookid+")";
                     int result =stmt.executeUpdate(query);
	if(result==1){
	%>
	<hr/>
	<h1> the following query executed successfully</h1>
	<hr/>
	<%=query%>
	<hr/>
	<a href="borrowbook.jsp">go back to borrow book screen</a>
	<%
	}
	else
	{
	%>
	<hr/>
	<h1> Insertion failed</h1>
	<hr/>
	<%
	}
 	stmt.close();
	con.close();

     }catch(Exception e)
     { 
	   out.println(e.toString()); 
     }
     %>
</body>
</html>
