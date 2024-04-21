<html>
<body>
<%@page import="java.sql.*" %>
<%
String s1 = request.getParameter("a");
String s2 = request.getParameter("b");
String s3 = request.getParameter("c");
Class.forName("com.mysql.jdbc.Driver");
Connection
c=DriverManager.getConnection("jdbc:mysql://localhost/shoes","root","astro");
Statement s=c.createStatement();
s.executeUpdate("update data set Type='"+s2+"',Quantity='"+s3+"' where Name='"+s1+"' ");
s.close();
c.close();
%>
<style>
    
  
       div{
           text-align: center;
       }
       .button1{
           position: relative;
            padding: 15px 32px;
            font-weight: bold;
            top:20px;
            left:20px;
            background-color: palegreen;
            font-size: 20px;
       }
       .button2{
           position: relative;
            padding: 15px 32px;
            font-weight: bold;
            top:60px;
            left:20px;
            background-color: palegreen;
            font-size: 20px;
       }
       .button3{
           position: relative;
            padding: 15px 32px;
            font-weight: bold;
            top:100px;
            left:20px;
            background-color: palegreen;
            font-size: 20px;
       }
       h1{
           position: relative;
           left: 30px;
       }
       
    
   </style>
 <div>
<h1>order updated...</h1>
<form method ="post" action="home.html">
<input class="button1" type="submit" value="Go to HomePage">
</form>
<form method ="post" action="show.jsp">
    <input class="button2" type="submit" value="Show Orders">
    </form>
<form method ="post" action="payment.html">
    <input class="button3" type="submit" value="Proceed to payment">
    </form>
</div>
</body>
</html>