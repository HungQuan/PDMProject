/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Quan Truong
 */
public class Order {
    protected int id; 
    protected int foodId; 
    protected String status; 
    protected int amount; 
    
    public Order(){}
    
    public Order(int id, String status, int amount){
        if(id < 1){
            this.id = 1; 
        }
        this.id = id; 
        this.status = status; 
        this.amount = amount; 
    }
     public Order(int id, String status, int amount, int foodId){
         if(id < 1){
            this.id = 1; 
        }
        this.id = id; 
        this.status = status; 
        this.amount = amount; 
        this.foodId = foodId; 
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getFoodId() {
        return foodId;
    }

    public void setFoodId(int foodId) {
        this.foodId = foodId;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }
    
}
