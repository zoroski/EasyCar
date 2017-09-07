package Model;
// Generated Jul 10, 2017 9:55:40 PM by Hibernate Tools 4.3.1




public class Cars  implements java.io.Serializable {


     private int id;
     private int price;
     private String location;
     private String description;
     private String features;
     private int userId;
     private String brand;
     private String year;

    public Cars() {
    }

	
    public Cars(int id, int price, String location, int userId,String brand, String year) {
        this.id = id;
        this.price = price;
        this.location = location;
        this.userId = userId;
        this.brand = brand;
        this.year = year;
    }
    public Cars(int id, int price, String location, String description, String features, int userId,String brand, String year) {
       this.id = id;
       this.price = price;
       this.location = location;
       this.description = description;
       this.features = features;
       this.userId = userId;
       this.brand = brand;
       this.year = year;
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
    public String getDescription() {
        return this.description;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }
    public String getFeatures() {
        return this.features;
    }
    
    public void setFeatures(String features) {
        this.features = features;
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


