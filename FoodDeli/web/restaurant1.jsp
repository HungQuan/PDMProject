<%-- 
    Document   : restaurant1
    Created on : May 12, 2022, 1:53:00 PM
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
                    <h3 class="text-center">List of Foods Available</h3>
                    <hr> 
                    <br>
                    <table class="table table-bordered">
                            <tr>
                                <th  >ID</th>
                                <th  >Name</th>
                                <th  >Price</th>
                                <th >Image</th>  
                                <th  >Type</th>
                                <th  >Action</th>
                            </tr>  
                         <% try
                         {
                            
                            String query="SELECT * FROM menutype as m ,food as f where m.TypeID=f.TypeID; "; 
                            Connection conn= DBConnection.getConnection(); 
                            Statement stmt=conn.createStatement();
                            ResultSet rs=stmt.executeQuery(query);
                            while(rs.next()){
                            %>
                            <tr>
                            <th scope="col"><%=rs.getInt("FoodID") %></th>
                            <th scope="col"><%=rs.getString("name") %></th>
                            <th scope="col"><%=rs.getString("Price") %></th>
                            <th scope="col"><img src="<%=rs.getString("Image") %>" width="100" height="100"></th> 
                            <th scope="col"><%=rs.getString("FoodType") %></th>
                            <th><a href ="add" value="<%=rs.getInt("FoodID") %>">Add</a></th>
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
