/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import Model.Auser;
import Model.CarInfo;
import Model.Cars;
import Model.Galery;
import Model.Usergalery;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author zoroskid
 */
public class GetQueryData {
    
   public List<CarInfo> GetCars (List<Integer> carListId, Session session, boolean LocationRequired, String Location, String price, String Year, String Brand){
   
       List<CarInfo> Listcars = new ArrayList<CarInfo>();
            
            for (int i = 0; i < carListId.size(); i++) {
                CarInfo carInfo = new CarInfo();
                List qryCars = null;
                if (LocationRequired) {
                    String priceCon = "" ;
                    String YearCon = "" ;
                    String BrandCon = "" ;

                    if (price != null ) {
                        if (!price.isEmpty()) {
                          priceCon = " AND cast(c.price as int) >  "+Integer.parseInt(price)+" ";   
                        }
                    }
                    if (Year != null ) {
                         if (!Year.isEmpty()) {
                        YearCon = " AND c.Year = '"+Year+"' ";
                         }
                    }
                    if (Brand != null ) {
                         if (!Brand.isEmpty()) {
                        BrandCon = " AND c.Brand = '"+Brand+"' ";
                         }
                    }
                     qryCars = session.createQuery("FROM Cars AS c WHERE c.id = "+carListId.get(i)+" AND c.location = '"+Location+"'"+priceCon+""+BrandCon+""+YearCon+" ").list();
                }
                else{
                     qryCars = session.createQuery("FROM Cars AS c WHERE c.id = "+carListId.get(i)+"").list();
                }
                Iterator itCars = qryCars.iterator(); 
                Cars car = new Cars();
                while(itCars.hasNext())
                {
                  Object o = itCars.next();
                  car = (Cars)o;
                }
                if (car.getBrand() == null) {
                    break;
                }
                carInfo.setId(car.getId());
                carInfo.setBrand(car.getBrand());
                carInfo.setLocation(car.getLocation());
                carInfo.setPrice(car.getPrice());
                carInfo.setUserId(car.getUserId());
                carInfo.setYear(car.getYear());
                
                List qryCarsGalery = session.createQuery("FROM Usergalery AS u WHERE u.carId = "+carListId.get(i)+" ").list();
                Iterator itCarsGalery = qryCarsGalery.iterator(); 
                List<Usergalery> usergalery = new ArrayList<Usergalery>();
                while(itCarsGalery.hasNext())
                {
                  Object o = itCarsGalery.next();
                  usergalery.add((Usergalery)o);
                }
                
               
                for (int j = 0; j < usergalery.size(); j++) {
                    List Galery = session.createQuery("FROM Galery AS g WHERE g.id = "+usergalery.get(i).getImageId()+" ").list();
                    Iterator itGalery = Galery.iterator(); 
                   
                    while(itGalery.hasNext())
                    {
                      Object o = itGalery.next();
                      Galery galery = (Galery)o;
                      carInfo.setImg(galery.getPath());
                    }
                }
               
                Listcars.add(carInfo);
            }
            return Listcars;
   }
}
