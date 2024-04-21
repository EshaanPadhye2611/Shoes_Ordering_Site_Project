<html>
<body>
<%@page import="java.sql.*" %>
<%
String s1 = request.getParameter("u");
String s2 = request.getParameter("p");
Class.forName("com.mysql.jdbc.Driver");
Connection
c=DriverManager.getConnection("jdbc:mysql://localhost/inft","root","astro");
Statement s=c.createStatement();
ResultSet rs = s.executeQuery("select name, password from user where name='"+s1+"' and password='"+s2+"' ");
if(rs.next())
{
response.sendRedirect("home.html");
}
else
{
out.println("invalid credentials...!");
}
rs.close();
s.close();
c.close();
%>
</body>
</html>