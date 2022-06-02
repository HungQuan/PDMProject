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
    protected String price; 
    protected int orderId; 
    protected String image; 
    protected String foodType; 
    
    public Food(){}
    public Food(int orderId ,int id){
        this.orderId = orderId; 
        this.id =id; 
    }
   
    
    public Food(int id, String name, String image, String price, String foodType){
       
        this.id = id; 
        this.name = name; 
        this.price = price; 
        this.image = image; 
        this.foodType = foodType; 
    }
    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getPrice() {
        return price;
    }

    public int getOrderId() {
        return orderId;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getFoodType() {
        return foodType;
    }

    public void setFoodType(String foodType) {
        this.foodType = foodType;
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

    public void setPrice(String price) {
        this.price = price;
    }
    
}
