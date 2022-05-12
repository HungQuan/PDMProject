/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Quan Truong
 */
@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
    private  static final long serialVersionUID = 1L; 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String fullname = request.getParameter("fullname");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String pass = request.getParameter("password");
        String address = request.getParameter("address");
        RequestDispatcher dispatcher = null; 
        Connection con = null; 
        PrintWriter out = response.getWriter(); 
         try{
            
            Class.forName("com.mysql.cj.jdbc.Driver"); 
             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fooddeli?ueSSL=false","root","quan0507");
            PreparedStatement pst = con.prepareStatement("insert into fooddeli.customer(fullname,email,address,password,username) values(?,?,?,?,?)"); 
            pst.setString(1, fullname);
            pst.setString(2,email); 
            pst.setString(3,address); 
            pst.setString(4,pass); 
            pst.setString(5, username);
           
            
            int rowCount = pst.executeUpdate(); 
        
            
            dispatcher = request.getRequestDispatcher("login.jsp"); 
            if(rowCount > 0){
                request.setAttribute("status", "success");
            }else{
                request.setAttribute("status", "failed");
            }
           dispatcher.forward(request, response);
        }catch (Exception e){
           out.print(e); 
        }finally{
            try{
                 
                con.close(); 
            }catch (SQLException e){
                e.printStackTrace(); 
            }
        }
    }
}
