
<%@page import="java.sql.*" %>
<%
String s1 = request.getParameter("u");
String s2 = request.getParameter("p");

Class.forName("com.mysql.jdbc.Driver");
Connection c=DriverManager.getConnection("jdbc:mysql://localhost/inft","root","astro");
PreparedStatement ps=c.prepareStatement("insert into user values(?,?)");
ps.setString(1,s1);
ps.setString(2,s2);
ps.execute();
ps.close();
c.close();
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Registration Successful</title>
<style>
    .header{
        position: relative;
        left: 550px;
        text-align: centre;
    }
</style>
<script>
    setTimeout(function() {
        window.location.href = "account.html";
    }, 4000); // Redirect after 3 seconds (3000 milliseconds)
</script>
</head>
<body>
    <div class="header">
        <h2>Registration Successful <br>
            <br>
     Your account has been successfully registered <br>
     <br>
    Redirecting to your account page...
    </h2>
    </div>
</body>
</html>

<