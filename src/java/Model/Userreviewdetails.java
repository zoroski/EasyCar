package Model;
// Generated Jul 10, 2017 9:55:40 PM by Hibernate Tools 4.3.1



public class Userreviewdetails  implements java.io.Serializable {


     private Integer id;
     private String text;
     private int carId;
     private int userIdFrom;
     private byte type;

    public Userreviewdetails() {
    }

    public Userreviewdetails(String text, int carId, int userIdFrom, byte type) {
       this.text = text;
       this.carId = carId;
       this.userIdFrom = userIdFrom;
       this.type = type;
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




}


