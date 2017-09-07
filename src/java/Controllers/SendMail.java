/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;


import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Service.Mailer;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpSession;

/**
 *
 * @author zoroskid
 */
@WebServlet(name = "SendMail", urlPatterns = {"/SendMail"})
public class SendMail extends HttpServlet {

     protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
        {
        
         String Email = request.getParameter("Email");
         String DateStart = request.getParameter("DateStart");
         String DateEnd = request.getParameter("DateEnd");
        String Location = request.getParameter("Location");
      
        
        HttpSession ses = request.getSession(true);
        String Phone = (String) ses.getAttribute("Phone");
         String Name = (String) ses.getAttribute("Name");
          String Surname = (String) ses.getAttribute("Surname");
           String EmailUser = (String) ses.getAttribute("Email");
           

        
         String poruka ="Cao! Korisnik "+Name+" bi hte da iznajmi tvoje vozilo od "+DateStart+" do "+DateEnd+" na lokaciji "+Location+"! "+System.lineSeparator()+""
                 + " Informacije kupca: "+System.lineSeparator()+" Phone: "+Phone+" "+System.lineSeparator()+" Ime: "+Name+" "+Surname+" "+System.lineSeparator()+" Email: "+EmailUser+"";
         
         
         Mailer.send("azazeljunk22@gmail.com","dimecar1",Email,"(EasyCar) Nova poruka na oglasu!",poruka);  
         response.sendRedirect(request.getContextPath() + "/Car.jsp");
    }

}
