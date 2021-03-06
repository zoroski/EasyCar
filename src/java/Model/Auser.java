package Model;
// Generated Jul 10, 2017 9:55:40 PM by Hibernate Tools 4.3.1



/**
 * Auser generated by hbm2java
 */
public class Auser  implements java.io.Serializable {


     private Integer id;
     private String name;
     private String surname;
     private String userName;
     private String password;
     private String email;
     private String phone;
     private String imgPath;

    public Auser() {
    }

    public Auser(String name, String surname, String userName, String password, String email, String phone, String imgPath) {
       this.name = name;
       this.surname = surname;
       this.userName = userName;
       this.password = password;
       this.email = email;
       this.phone = phone;
       this.imgPath = imgPath;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
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
    public String getUserName() {
        return this.userName;
    }
    
    public void setUserName(String userName) {
        this.userName = userName;
    }
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    public String getPhone() {
        return this.phone;
    }
    
    public void setPhone(String phone) {
        this.phone = phone;
    }
    public String getImgPath() {
        return this.imgPath;
    }
    
    public void setImgPath(String imgPath) {
        this.imgPath = imgPath;
    }




}


