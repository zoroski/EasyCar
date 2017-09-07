/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Model.Auser;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
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
 * @author Nenad
 */
public class Profile extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
      
            
            String name,surname,username,password,repassword,phone,email;
       
            HttpSession ses = request.getSession(true);
            String  sname= (String) ses.getAttribute("UserName");
            Configuration cfg= new Configuration();
            cfg.configure("hibernate.cfg.xml");
            SessionFactory factory=cfg.buildSessionFactory();
            Session session = factory.openSession();
            Query qry=session.createQuery("from Auser where UserName='"+sname+"'");
            
            List l=qry.list();
	    Iterator it = l.iterator();
            
            Auser user = null;
	    while(it.hasNext())
	    {
	    	Object o = it.next();
	    	user = (Auser)o;
	    }
                  String a =(String) user.getSurname();
            ses.setAttribute("surname",user.getSurname() );
            ses.setAttribute("username", user.getUserName());
            ses.setAttribute("password", user.getPassword());
            ses.setAttribute("email", user.getEmail());
            ses.setAttribute("phone", user.getPhone());
            ses.setAttribute("path", user.getImgPath());
            ses.setAttribute("name",user.getName());
             
            
           RequestDispatcher rd=request.getRequestDispatcher("Profile.jsp");
            rd.forward(request, response); 
           
           
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
