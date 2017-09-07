/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Model.Auser;
import Model.Userreviewdetails;
import Service.LoginService;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author zoros
 */
@WebServlet(name = "AddReview", urlPatterns = {"/AddReview"})
public class AddReview extends HttpServlet {
   
     @Override
     protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
        {
            String textReview;
            int carId, userId;
            
            
            textReview = request.getParameter("review");
            userId = Integer.parseInt(request.getParameter("userId"));
            carId = Integer.parseInt(request.getParameter("carId"));
            
             Configuration cfg= new Configuration();
             cfg.configure("hibernate.cfg.xml");
             SessionFactory factory=cfg.buildSessionFactory();
             Session session= factory.openSession();
        
            Userreviewdetails review = new Userreviewdetails();
            review.setText(textReview);
            review.setCarId(carId);
            review.setUserIdFrom(userId);
              Transaction t=session.beginTransaction();
            session.save(review);
            
            t.commit();
            
     
         response.sendRedirect(request.getContextPath() + "/Car?Id="+carId+"");
        
       
        }
}
