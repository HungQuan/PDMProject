<%-- 
    Document   : home_admin
    Created on : May 15, 2022, 1:42:22 PM
    Author     : Quan Truong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@page import="util.DBConnection"%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" 
     content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link  href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" rel="stylesheet">    
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>
  
<body>
    <header>
        <h1 id="top">FOOD DELIVERY</h1>
        <h1 id="top_right">Admin</h1>
    </header>
    <hr>

    <div id="container1">
        <div id="row1">
            <form method="post 
                  class="search" id="Login-form">
                <input type="text" class="input" placeholder="What are you looking for?" name="query">
                 <button class="bttn" type="submit">Search</button>
            </form>
        <div id="container3">
            <div id="row2">
                <a class="bttn" href="customer">Customer</a>
            </div>
            <div id="row3">
                <a class="bttn" href="food" >Restaurant</a>
            </div>
        </div>
        </div>        
    </div>
<div class="row">
                <!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

                <div class="container">
                    <h3 class="text-center">Table </h3>
                    <hr> 
                    <br>
                    <table class="table table-bordered">
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                              

                            </tr>  
                         <% try
                         {
                            
                            String query="select customerID, fullName from customer where customer.address IS null;"; 
                            Connection conn= DBConnection.getConnection(); 
                            Statement stmt=conn.createStatement();
                            ResultSet rs=stmt.executeQuery(query);
                            while(rs.next()){
                            %>
                            <tr>
                         
                            <th scope="col"><%=rs.getString("customerID") %></th>
                            <th scope="col"><%=rs.getString("fullName") %></th>
                            </tr>
                            <%
                             }
                            %>
                    </table>
                        <%
                            rs.close();
                            stmt.close();
                            conn.close();
                         } catch(Exception e){
                            e.printStackTrace();
                        }%>
                </div>
            </div> 

</body>
</html>
