/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;
import model.Customer;
import util.DBConnection;

/**
 *
 * @author Quan Truong
 */
public class CustomerDAO {
       private static final String INSERT_CUSTOMER_SQL = "INSERT INTO customer" + "  (FullName,Passwrd,Email,Username,Address) VALUES " +
        " (?, ?, ?,?,?);";
       private static final String SELECT_CUSTOMER_BY_ID = "select * from customer where CustomerID= ?"; 
       private static final String SELECT_ALL_CUSTOMER = "select * from customer";
       private static final String DELETE_CUSTOMER_SQL ="delete from customer where CustomerID= ?"; 
       private static final String UPDATE_CUSTOMER_SQL = "update customer set fullname = ?, passwrd = ? , email= ?, username = ?, address =? where id = ?"; 
       
   public void insertCustomer(Customer customer) throws SQLException{
       try (Connection connection = DBConnection.getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_CUSTOMER_SQL)) {
            preparedStatement.setInt(1, customer.getId());
            preparedStatement.setString(2, customer.getFullName());
            preparedStatement.setString(3, customer.getPassword());
            preparedStatement.setString(4, customer.getEmail());
            preparedStatement.setString(5, customer.getUsername());
            preparedStatement.setString(6, customer.getAddress());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
   }
   public Customer selectCustomer(int id){
       Customer customer = null; 
        try (Connection connection = DBConnection.getConnection();
            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_CUSTOMER_BY_ID);) {
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();
                        // Step 4: Process the ResultSet object.
            while (rs.next()) {
                id = rs.getInt("CustomerID");
                String fullname = rs.getString("fullname");
                String password = rs.getString("passwrd");
                String email = rs.getString("email");
                String username = rs.getString("username");
                String address = rs.getString("address");
                customer = new Customer(id,fullname,password,email,username,address); 
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return customer;


   }
   public List<Customer> selectAllCustomer(){
       List<Customer> customers = new ArrayList<>(); 
       try(Connection connection = DBConnection.getConnection();
            // Step 2:Create a statement using connection object
            PreparedStatement pst = connection.prepareStatement(SELECT_ALL_CUSTOMER);){
           //Run the query in database 
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                Customer customer = new Customer(rs.getInt(1),rs.getString(2),rs.getString(3),
                rs.getString(4),rs.getString(5),rs.getString(6));
                customers.add(customer); 
            }
       }catch(SQLException e){
            printSQLException(e);
       }
       return customers;
   }
   public boolean deleteCustomer(int id) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = DBConnection.getConnection();
            // Step 2:Create a statement using connection object
            PreparedStatement statement = connection.prepareStatement(DELETE_CUSTOMER_SQL);) {
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }
   public boolean updateCustomer(Customer customer) throws SQLException {
       boolean rowUpdated; 
        try (Connection connection = DBConnection.getConnection();
            // Step 2:Create a statement using connection object
            PreparedStatement statement = connection.prepareStatement(UPDATE_CUSTOMER_SQL);) {
            statement.setString(2, customer.getFullName());
            statement.setString(3, customer.getPassword());
            statement.setString(4, customer.getEmail());
            statement.setString(5, customer.getUsername());
            statement.setString(6, customer.getAddress());
            rowUpdated = statement.executeUpdate() > 0;
        }
       return rowUpdated; 
   }
    public Customer checkLogin(String email, String password){
      
        try{
            Connection con = DBConnection.getConnection(); 
            PreparedStatement pst = con.prepareStatement("select * from customer where email = ? and passwrd = ?");  
            pst.setString(1,email);
            pst.setString(2,password); 
            //Run the query in database 
            ResultSet rs = pst.executeQuery();
            //If success
            while(rs.next()){
                Customer a = new Customer(rs.getString(1),rs.getString(2)); 
                return a; 
            }
        }catch(Exception e){
            e.printStackTrace();
        }
      return null; 
    }
     private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
