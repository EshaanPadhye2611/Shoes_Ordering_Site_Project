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
PreparedStatement ps=c.prepareStatement("insert into data values(?,?,?)");
ps.setString(1,s1);
ps.setString(2,s2);
ps.setString(3,s3);
ps.execute();
ps.close();
c.close();
%>
    
    
    
<h1>Order Added Successfully...</h1>

<form method ="post" action="home.html">
<input class="button2" type="submit" value="Go to HomePage">
</form>
<form method ="post" action="show.jsp">
    <input class="button3" type="submit" value="Show Orders">
    </form>
<form method ="post" action="payment.html">
    <input class="button1" type="submit" value="Go to payment page">
    </form>

<img class ="img" src="inserted.gif">
<style>
    h1{
        position: relative;
        left: 600px;
        top:20px;
    }
    .img{
        
        position: relative;
        left: 560px; 
        top: 20px;
    }
    .button1{
        position: relative;
        left:670px;
        bottom:80px;
        padding: 15px 32px;
        top:90px;
         background-color:palegreen;
        font-weight: bold;
    }
    .button2{
        position: relative;
        left:670px;
        top: 20px;
        font-weight: bold;
        
        padding: 15px 40px;
        background-color:palegreen;
        font-weight: bold;
    }
    .button3{
        position:absolute;
        left:680px;
        top:155px;
        font-weight:bold;
       
        padding:15px 50px;
        background-color:palegreen;
        font-weight: bold;
      
    }
    
</style>
</body>
</html>