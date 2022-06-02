/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Quan Truong
 */
public class Food {
    
    protected int id; 
    protected String name; 
    protected double price; 
    protected int orderId; 
    protected String image; 
    protected String foodType; 
    
    public Food(){}
   
    
    public Food(int id, String name, double price, String image, String foodType){
        super(); 
        this.id = id; 
        this.name = name; 
        this.price = price; 
        this.image = image; 
        this.foodType = foodType; 
    }
     public Food( int id, int orderId){
        super(); 
        this.id =id;
        this.orderId = orderId; 
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public double getPrice() {
        return price;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }
    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPrice(double price) {
        this.price = price;
    }
    
}
