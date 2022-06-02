/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Quan Truong
 */
public class Customer {
    private int id; 
    private String email; 
    private String password; 
    private String fullName; 
    private String username; 
    private String address; 
    public Customer(){}
    public Customer(String email, String password){
        this.email = email; 
        this.password = password; 
    }
    public Customer(String fullName, String password, String email, String username, String address){
        this.fullName= fullName; 
        this.password = password; 
        this.email =email; 
        this.username = username; 
        this.address = address; 
    }
    public Customer( int id, String fullname, String password, String email, String username, String address){
        this.id = id; 
        this.fullName = fullname; 
        this.password =password; 
        this.email = email; 
        this.username = username; 
        this.address = address; 
    }
    public String getEmail(){
        return email;
    }
    public void setEmail(String email){
        this.email = email;  
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
    
    public String getPassword(){
        return password; 
    }
    public void setPassword(String password){
        this.password=password; 
    }
}
