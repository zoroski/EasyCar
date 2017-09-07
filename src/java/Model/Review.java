/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.Date;

/**
 *
 * @author zoros
 */
public class Review {
    
     private Integer id;
     private String text;
     private int carId;
     private int userIdFrom;
     private byte type;
     private String name;
     private String surname;
     private String avatarPath;
     
     public Review() {
    }

    public Review(String text, int carId, int userIdFrom, byte type,String name,String surname,String avatarPath) {
       this.text = text;
       this.carId = carId;
       this.userIdFrom = userIdFrom;
       this.type = type;
       this.name = name;
       this.surname = surname;
        this.avatarPath = avatarPath;
       
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public String getText() {
        return this.text;
    }
    
    public void setText(String text) {
        this.text = text;
    }
    public int getCarId() {
        return this.carId;
    }
    
    public void setCarId(int carId) {
        this.carId = carId;
    }
    public int getUserIdFrom() {
        return this.userIdFrom;
    }
    
    public void setUserIdFrom(int userIdFrom) {
        this.userIdFrom = userIdFrom;
    }
    public byte getType() {
        return this.type;
    }
    
    public void setType(byte type) {
        this.type = type;
    }
    
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    public String getSurname() {
        return this.surname;
    }
    
    public void setSurname(String surname) {
        this.surname = surname;
    }
    
     public String getAvatarPath() {
        return this.avatarPath;
    }
    
    public void setAvatarPath(String avatarPath) {
        this.avatarPath = avatarPath;
    }
}
