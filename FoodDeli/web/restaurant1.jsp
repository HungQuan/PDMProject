<%-- 
    Document   : restaurant1
    Created on : May 12, 2022, 1:53:00 PM
    Author     : Quan Truong
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <h3 class="text-center">List Food Available </h3>
                    <hr> 
                    <br>
                    <table class="table table-bordered">
                        <tr>
                            <th>Id</th>
                            <th>Name</th>
                            <th>Image</th>
                            <th>Price</th>
                            <th>Type</th>
                            <th>Action</th>
                        </tr>
                        
                            <c:forEach items="${listFood}" var= "x">
                                   <tr>
                                       <td><c:out value="${x.id}" /></td>
                                       <td><c:out value="${x.name}"/></td>
                                       <td><img height = "100" width="100" src="<c:out value="${x.image}"/>"></td>
                                       <td><c:out value="${x.price}"/></td>
                                        <td><c:out value="${x.foodType}"/></td>
                                        <td><a href="add?id=<c:out value='${x.id}' />">Add to order</a></td> 
                                    </tr>
                         </c:forEach>
                    </table>
                 </div>
            </div>
        </body>
    </html>