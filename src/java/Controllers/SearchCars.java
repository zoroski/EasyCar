/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Model.CarInfo;
import Model.Cars;
import Model.Galery;
import Model.Usercarrents;
import Model.Usergalery;
import Service.GetQueryData;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
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
import org.hibernate.cfg.Configuration;

/**
 *
 * @author zoroskid
 */
@WebServlet(name = "SearchCars", urlPatterns = {"/SearchCars"})
public class SearchCars extends HttpServlet {
      
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
        {
            String Location = request.getParameter("Location");
            String DateStart = request.getParameter("DateStart");
            String DateEnd = request.getParameter("DateEnd");
            
            String Price = request.getParameter("Price");
            String Brand = request.getParameter("Brand");
            String Year = request.getParameter("Year");

            if (Location != null && DateStart != null && DateEnd != null) {
                  DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
           Date startDate = null;
           Date dateEnd = null;
        try {
            startDate = sdf.parse(DateStart); 
            dateEnd = sdf.parse(DateEnd); 

        } catch (ParseException ex) {
            Logger.getLogger(SearchCars.class.getName()).log(Level.SEVERE, null, ex);
        }


            HttpSession ses = request.getSession();
            Configuration cfg= new Configuration();
            cfg.configure("hibernate.cfg.xml");
            SessionFactory factory=cfg.buildSessionFactory();
            Session session = factory.openSession();

            Query qry = session.createQuery("SELECT carId FROM Usercarrents AS c WHERE c.dateEnd < :stDate AND c.dateStart < :edDate ").setParameter("stDate", startDate).setParameter("edDate", dateEnd);
            List l=qry.list();
            Iterator it = l.iterator();
            
            List<Integer> carListId = new ArrayList();
            
            while(it.hasNext())
            {
                Object o = it.next();
                 carListId.add((int)o);
            }
            
            
            GetQueryData data = new GetQueryData();
             List<CarInfo> Listcars = data.GetCars(carListId, session, true, Location,Price,Year, Brand);
             request.setAttribute("Cars", Listcars);
            }
            RequestDispatcher rd=request.getRequestDispatcher("Cars.jsp"); 
             rd.forward(request, response);
        }
    
}
