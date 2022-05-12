/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.Customer;

/**
 *
 * @author Quan Truong
 */
public class CustomerDAO {
    public Customer checkLogin(String email, String password){
      
        try{
            //load driver 
           Class.forName("com.mysql.cj.jdbc.Driver");  
            //Open connection to databases
              Class.forName("com.mysql.jdbc.Driver"); 
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fooddeli?ueSSL=false","root","quan0507"); 
            PreparedStatement pst = con.prepareStatement("select * from customer where email = ? and password = ?");  
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
}
