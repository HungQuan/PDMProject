<%-- 
    Document   : customer-form
    Created on : May 15, 2022, 3:05:11 PM
    Author     : Quan Truong
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
      <html>
        <head>
            <title>User Page</title>
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
            <div class="container col-md-5">
                <div class="card">
                    <div class="card-body">
                        <c:if test="${user != null}">
                            <form action="updatecustomer" method="post">
                        </c:if>
                        <c:if test="${user == null}">
                            <form action="insertcustomer" method="post">
                        </c:if>

                        <caption>
                            <h2>
                                <c:if test="${user != null}">
                                    Edit User
                                </c:if>
                                <c:if test="${user == null}">
                                    Add New User
                                </c:if>
                            </h2>
                        </caption>

                        <c:if test="${user != null}">
                            <input type="hidden" name="id" value="<c:out value='${user.id}' />" />
                        </c:if>

                        <fieldset class="form-group">
                            <label>Full Name</label> <input type="text" value="<c:out value='${user.fullName}' />" class="form-control" name="fullName" required="required">
                        </fieldset>

                        <fieldset class="form-group">
                            <label>Email</label> <input type="text" value="<c:out value='${user.email}' />" class="form-control" name="email">
                        </fieldset>
                        <fieldset class="form-group">
                            <label>Password</label> <input type="text" value="<c:out value='${user.password}' />" class="form-control" name="password">
                        </fieldset>
                        
                        <fieldset class="form-group">
                            <label>Username</label> <input type="text" value="<c:out value='${user.username}' />" class="form-control" name="username">
                        </fieldset>
                        <fieldset class="form-group">
                            <label>Address</label> <input type="text" value="<c:out value='${user.address}' />" class="form-control" name="address">
                        </fieldset>
                        <button type="submit" class="btn btn-success">Save</button>
                        </form>
                    </div>
                </div>
            </div>
        </body>

        </html>
