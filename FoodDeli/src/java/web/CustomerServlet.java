/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package web;

import dao.CustomerDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Customer;

/**
 *
 * @author Quan Truong
 */
@WebServlet(name = "Customer", urlPatterns = {"/customer","/newcustomer","/insertcustomer","/deletecustomer","/editcustomer","/updatecustomer"})
public class CustomerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private CustomerDAO dao;

@Override
    public void init() {
        dao = new CustomerDAO();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            String action = request.getServletPath();

        try {
            switch (action) {
                case "/newcustomer":
                    showNewForm(request,response); 
                     break;
                case "/insertcustomer":
                    insertCustomer(request,response); 
                     break;
                case "/editcustomer":
                    showEditForm(request,response); 
                     break;
                case "/updatecustomer":
                    updateCustomer(request,response); 
                     break;
                case "/deletecustomer":
                    deleteCustomer(request,response); 
                     break;
                case "/customer":
                    listCustomer(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }  
    }
    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("admin/customer-form.jsp");
        dispatcher.forward(request, response);
    }
     private void showEditForm(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, ServletException, IOException {
         int id = Integer.parseInt(request.getParameter("id"));
         
         Customer cus = dao.selectCustomer(id); 
        RequestDispatcher dispatcher = request.getRequestDispatcher("admin/customer-form.jsp");
        request.setAttribute("user", cus);
        dispatcher.forward(request, response);
     }
    private void insertCustomer(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
          String fullName = request.getParameter("fullName"); 
          String password = request.getParameter("password"); 
          String email = request.getParameter("email"); 
          String username = request.getParameter("username"); 
          String address = request.getParameter("address"); 
          Customer cus = new Customer(fullName,password,email,username,address); 
          
          dao.insertCustomer(cus);
          response.sendRedirect("customer");
      }
    private void updateCustomer(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        
        String fullName = request.getParameter("fullName"); 
        String password = request.getParameter("password"); 
        String email = request.getParameter("email"); 
        String username = request.getParameter("username"); 
        String address = request.getParameter("address");
        dao.updateCustomer(new Customer(fullName,password,email,username,address)); 
        response.sendRedirect("customer");
    }
    private void listCustomer(HttpServletRequest request, HttpServletResponse response)
    throws  IOException, ServletException {
        PrintWriter out = response.getWriter(); 
      
        List<Customer> list = dao.selectAllCustomer(); 
        request.setAttribute("listUser", list);
        request.getRequestDispatcher("admin/customer-list.jsp").forward(request, response);
        out.print(list);
    }
    
     private void deleteCustomer(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        CustomerDAO dao = new CustomerDAO(); 
        dao.deleteCustomer(id); 
        response.sendRedirect("customer");
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
