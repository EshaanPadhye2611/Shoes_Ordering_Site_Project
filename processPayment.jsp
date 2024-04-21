<html>
<body>
<%@page import="java.sql.*" %>
<%
String s1 = request.getParameter("a");
String s2 = request.getParameter("b");
String s3 = request.getParameter("c");
String s4= request.getParameter("d");
Class.forName("com.mysql.jdbc.Driver");
Connection c=DriverManager.getConnection("jdbc:mysql://localhost/shoes","root","astro");
PreparedStatement ps=c.prepareStatement("insert into card values(?,?,?,?)");
ps.setString(1,s1);
ps.setString(2,s2);
ps.setString(3,s3);
ps.setString(4,s4);
ps.execute();
ps.close();
c.close();
%>
<h2> 