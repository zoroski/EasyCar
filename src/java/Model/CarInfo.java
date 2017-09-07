/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.List;

/**
 *
 * @author zoroskid
 */
public class CarInfo {
    private int id;
     private int price;
     private String location;
     private int userId;
     private String brand;
     private String year;
     private String img;

    public CarInfo() {
    }

	
    public CarInfo(int id, int price, String location, int userId,String brand, String year) {
        this.id = id;
        this.price = price;
        this.location = location;
        this.userId = userId;
        this.brand = brand;
        this.year = year;
    }
    public CarInfo(int id, int price, String location, String description, String features, int userId,String brand, String year,  String img) {
       this.id = id;
       this.price = price;
       this.location = location;
       this.userId = userId;
       this.brand = brand;
       this.year = year;
       this.img = img;
    }
   
    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    public int getPrice() {
        return this.price;
    }
    
    public void setPrice(int price) {
        this.price = price;
    }
    public String getLocation() {
        return this.location;
    }
    
    public void setLocation(String location) {
        this.location = location;
    }
    public String getImg() {
        return this.img;
    }
    
    public void setImg(String img) {
        this.img = img;
    }

    public int getUserId() {
        return this.userId;
    }
    
    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getYear() {
        return this.year;
    }
    
    public void setYear(String year) {
        this.year = year;
    }
    
    public String getBrand() {
        return this.brand;
    }
    
    public void setBrand(String brand) {
        this.brand = brand;
    }
}
