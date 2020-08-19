<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>

<!DOCTYPE html>
<html>
<body>
<form action="storeborrow.jsp" method="post">
<pre>
student number :<input type="text" name="sno" />
Student name   :<input type="text" name="sname" />
book id :<select name="bookid">

<%  try
    {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/students","root","tiger");
			
	Statement stmt=con.createStatement();
	String query="select * from bookdetail";
	ResultSet rs=stmt.executeQuery(query);
	while(rs.next()){
	%>
	<option value="<%=rs.getString(1)%>">
	<%=rs.getString(2)%>
	</option>
	<%}%>
	</select>
    	<%
		rs.close();
		stmt.close();
		con.close();

     }catch(Exception e)
     { 
	   out.println(e.toString()); 
     }
   %>
<input type="submit"  value="borrow book"/></pre>
</form>
</body>
</html>
