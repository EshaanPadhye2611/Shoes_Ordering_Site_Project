<!DOCTYPE html>
<html>
<head>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
        }
        .payment{
            position: relative;
            left:300px;
           padding: 10px 10px;
           down:80px;
           background-color: palegreen;
           color:black;
           font-weight: bold;
        }
        .homepage{
             position: relative;
            left:1100px;
           padding: 10px 10px;
           top: 40px;
           background-color: palegreen;
           color:black;
           font-weight: bold;
        }
       
    </style>
</head>
<body>
    <h2>Your orders:</h2>
    <table>
        <tr>
            <th>Name</th>
            <th>Type</th>
            <th>Quantity</th>
        </tr>
        <%@ page import="java.sql.*" %>
        <% 
            Class.forName("com.mysql.jdbc.Driver");
            Connection c = DriverManager.getConnection("jdbc:mysql://localhost/shoes", "root", "astro");
            Statement s = c.createStatement();
            ResultSet rs = s.executeQuery("SELECT * FROM data");
            while (rs.next()) {
        %>
        <tr>
            <td><%= rs.getString(1) %></td>
            <td><%= rs.getString(2) %></td>
            <td><%= rs.getString(3) %></td>
        </tr>
        <% 
            }
            rs.close();
            s.close();
            c.close();
        %>
    </table>
    <form method="post" action="home.html">
        <input class="homepage"type="submit" value="Go to HomePage">
    </form>
    <form method="post" action="payment.html">
        <input class="payment"type="submit" value="Proceed to payment">
    </form>
</body>
</html>
