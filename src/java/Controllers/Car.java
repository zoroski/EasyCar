/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Model.Auser;
import Model.Cars;
import Model.Galery;
import Model.Review;
import Model.Usergalery;
import Model.Userreviewdetails;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.jasper.tagplugins.jstl.ForEach;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author zoroskid
 */
public class Car extends HttpServlet  {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
        {
            String id, password;
            
            id = request.getParameter("Id");
           
             HttpSession ses = request.getSession();
            Configuration cfg= new Configuration();
            cfg.configure("hibernate.cfg.xml");
            SessionFactory factory=cfg.buildSessionFactory();
            Session session = factory.openSession();
            Query qry=session.createQuery("from Cars where id="+id+"");
            
            List l=qry.list();
	    Iterator it = l.iterator();
            
            Cars Cars = null;
	    while(it.hasNext())
	    {
	    	Object o = it.next();
	    	Cars = (Cars)o;
	    }
            
            Query qryCarImg =session.createQuery("from Usergalery where CarId="+id+"");
            
            List lCarImg=qryCarImg.list();
	    Iterator itCarImg = lCarImg.iterator();
            
            List<Usergalery> UserGaleryList = new ArrayList<Usergalery>();
	    while(itCarImg.hasNext())
	    {
	    	Object o = itCarImg.next();
	    	UserGaleryList.add((Usergalery)o);
	    }
            
            Object[] GaleryArray = UserGaleryList.toArray();
            List<Galery> GaleryList = new ArrayList<Galery>();;
            
            List<Integer> counter = new ArrayList<Integer>();
            
            for (int i = 0; i < UserGaleryList.size(); i++) {
          counter.add(i);
            Usergalery usr = (Usergalery)GaleryArray[i];
            Query qryImg=session.createQuery("from Galery where Id="+ usr.getImageId()+"");
            
            List lImg=qryImg.list();
	    Iterator itImg = lImg.iterator();
            
         
	    while(itImg.hasNext())
	    {
	    	Object o = itImg.next();
	    	GaleryList.add((Galery)o);
	    }
            
            }
           
            Auser user = GetUser(session,Cars.getUserId());
	  

            
            Query qryReviews = session.createQuery("from Userreviewdetails where Carid="+Cars.getId()+"");
            
            List ReviewsList=qryReviews.list();
	    Iterator itReviews = ReviewsList.iterator();
            
            Userreviewdetails userreviewdetails;
            List<Userreviewdetails> reviewsList = new ArrayList<Userreviewdetails>();
            
            List<Review> ListReviews = new ArrayList<Review>();
            
            while(itReviews.hasNext())
	    {
	    	Object o = itReviews.next();
                reviewsList.add((Userreviewdetails)o);
                Userreviewdetails userreview = (Userreviewdetails)o;
                Auser UserFrom;
                UserFrom = GetUser(session,userreview.getUserIdFrom());
               ListReviews.add(new Review(userreview.getText(), userreview.getCarId(), userreview.getUserIdFrom(), Byte.MAX_VALUE, UserFrom.getName(), UserFrom.getSurname(),UserFrom.getImgPath()));
	    }
            
           
            
            
            request.setAttribute("ReviewsList", ListReviews);
            request.setAttribute("User", user);
            request.setAttribute("Car", Cars);
            request.setAttribute("GaleryList", GaleryList);
            request.setAttribute("Counter", counter);
           
            
            
            
           RequestDispatcher rd=request.getRequestDispatcher("CarSelected.jsp"); 
           rd.forward(request, response);
        }
    
    public Auser GetUser(Session session, int id)
    {
        Query qryUser=session.createQuery("from Auser where id="+id+"");
            
            List userList=qryUser.list();
	    Iterator itUser = userList.iterator();
            
            Auser user = null;
	    while(itUser.hasNext())
	    {
	    	Object o = itUser.next();
	    	user = (Auser)o;
	    }
            
            return user;
    }
}
