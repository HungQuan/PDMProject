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
import java.util.ArrayList;
import java.util.List;
import model.Food;
import util.DBConnection;

public class FoodDAO {
    private final String jdbcURL = "jdbc:mysql://localhost:3306/fooddeli?useSSL=false";
    private final String jdbcUsername = "root";
    private final String jdbcPassword = "quan0507";
    
    private static final String UPDATE_FOOD_INTO_ORDERS = "update food set OrdersID = ? where foodID = ?;"; 
    private static final  String SELECT_ALL_FOOD ="SELECT * FROM menutype as m ,food as f where m.TypeID=f.TypeID; "; 
     //private static final String INSERT_AMOUNT_AND_TOTALPRICE_INTO_ORDERS = "insert into orders(OrderID, Amount, TotalPrice) values (?, ?,  @count := ?*(select price from food where TypeID = ? LIMIT 1)); "; 
     //private static final String SELECT_ALL_FOOD = "SELECT foodID,name,price where OrderID = ?"; 
     //private static final String DELETE_FOOD = "DELETE FROM food WHERE OrderID= ? "; 
   
    
    
  
     public void addFood(Food food) throws SQLException {
        System.out.println(UPDATE_FOOD_INTO_ORDERS);
        // try-with-resource statement will auto close the connection.
        try (Connection connection = DBConnection.getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_FOOD_INTO_ORDERS)) {
           preparedStatement.setInt(1, food.getOrderId());
           preparedStatement.setInt(2, food.getId());
           System.out.println(preparedStatement);
           preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }
    public List<Food> selectAllFood(){
        List<Food> list = new ArrayList<>(); 
           // Step 1: Establishing a Connection
        try (Connection connection =  DBConnection.getConnection(); 
             
            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_FOOD);) {
           
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                 
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return list;
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

