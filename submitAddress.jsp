<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.*,javax.servlet.http.*" %>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <title>Address Submission Result</title>
</head>
<body>
    <h1>Address Submission Result</h1>
    
    <img src="save.png" alt="address submitted">
    <form method="post" action="confirm.html">
        <input type="submit" value="Confirm your order">
    </form>
    <%
        String s1 = request.getParameter("a");
        String s2 = request.getParameter("b");
        String s3 = request.getParameter("c");
        String s4 = request.getParameter("d");
        
      Class.forName("com.mysql.jdbc.Driver");
Connection c=DriverManager.getConnection("jdbc:mysql://localhost/shoes","root","astro");
PreparedStatement ps=c.prepareStatement("insert into address values(?,?,?,?)");
ps.setString(1,s1);
ps.setString(2,s2);
ps.setString(3,s3);
ps.setString(4,s4);
ps.execute();
ps.close();
c.close();
    %> 
</body>
</html>
