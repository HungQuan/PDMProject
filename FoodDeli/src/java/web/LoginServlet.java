/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package web;

import dao.CustomerDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Customer;

/**
 *
 * @author Quan Truong
 */
@WebServlet("/Login")
public class LoginServlet extends HttpServlet {

  
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email"); 
        String upwd = request.getParameter("password"); 
        HttpSession session = request.getSession(); 
        RequestDispatcher dispatcher = null; 
        PrintWriter out = response.getWriter(); 
        try{
            CustomerDAO customerDAO= new CustomerDAO(); 
            Customer a = customerDAO.checkLogin(email, upwd);
            if(a != null){
                session.setAttribute("username", email);
                request.setAttribute("status", "success");
                dispatcher = request.getRequestDispatcher("home.jsp"); 
            }
            else{
                request.setAttribute("status", "failed");
                dispatcher = request.getRequestDispatcher("login.jsp"); 
            }
            dispatcher.forward(request,response); 
        }catch( Exception e){
            out.print(e); 
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
