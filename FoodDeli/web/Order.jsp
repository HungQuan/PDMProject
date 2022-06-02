<%-- 
    Document   : Order
    Created on : May 12, 2022, 2:21:56 PM
    Author     : Quan Truong
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@page import="util.DBConnection"%>
        <html>
        <head>
            <title>Restaurant 1</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        </head>
        <body>
            <header>
                <nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
                    <div>
                        <a href="home.jsp" class="navbar-brand"> Home</a>
                    </div>
                    <ul class="navbar-nav">
                        <li><a> Domino Pizza </a></li>
                    </ul>
                     
                </nav>
            </header>
            <br>
            <div class="row">
                <!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

                <div class="container">
                    <h3 class="text-center">Order #1</h3>
                    <hr> 
                    <br>
                    <table class="table table-bordered">
                            <tr>
                                <th  >ID</th>
                                <th  >Name</th>
                                <th  >Price</th>

                            </tr>  
                         <% try
                         {
                            
                            String query="SELECT * from food as f where orderID = 1; "; 
                            Connection conn= DBConnection.getConnection(); 
                            Statement stmt=conn.createStatement();
                            ResultSet rs=stmt.executeQuery(query);
                            while(rs.next()){
                            %>
                            <tr>
                            <th scope="col"><%=rs.getInt("FoodID") %></th>
                            <th scope="col"><%=rs.getString("foodName") %></th>
                            <th scope="col"><%=rs.getString("Price") %></th>
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
