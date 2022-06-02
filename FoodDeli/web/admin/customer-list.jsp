<%-- 
    Document   : customer-list
    Created on : May 14, 2022, 12:46:01 PM
    Author     : Quan Truong
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
      <html>
        <head>
            <title>Restaurant 1</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        </head>
        <body>
            <header>
                <nav class="navbar navbar-expand-md navbar-dark" style="background-color: green">
                    <div>
                        <a href="./admin/home_admin.jsp" class="navbar-brand"> Home </a>
                    </div>
                    <ul class="navbar-nav">
                        <li><a> User </a></li>
                    </ul>
                     
                </nav>
            </header>
            <br>
            <div class="row">
                <!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

                <div class="container">
                     <div class="container text-left">

                        <a href="newcustomer" class="btn btn-success">Add New Customer </a>
                    </div>
                    <br>
                    <h3 class="text-center">List of User</h3>
                    <hr> 
                    <br>
                    <table class="table table-bordered">
                        <tr>
                            <th>ID</th>
                            <th>Full Name</th>
                            <th>Password</th>
                            <th>Username</th>
                            <th>Email </th>
                            <th>Address</th>
                
                        </tr>
                            <c:forEach items="${listUser}" var= "x">
                                   <tr>
                                        <td>${x.id}</td>
                                        <td>${x.fullName}</td>
                                        <td>${x.password}</td>
                                        <td>${x.username}</td>
                                        <td>${x.email}</td>
                                        <td>${x.address}</td>
                                        <td><a href="editcustomer?id=<c:out value='${x.id}' />">Edit</a> 
                                        &nbsp;&nbsp;&nbsp;&nbsp; <a href="deletecustomer?id=<c:out value='${x.id}' />">Delete</a></td>
                                    </tr>
                         </c:forEach>
                    </table>
                 </div>
            </div>
        </body>
    </html>
