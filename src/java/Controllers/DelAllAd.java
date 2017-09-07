
package Controllers;

import Model.Auser;
import Model.Usergalery;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.cfg.Configuration;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author Nenad
 */
public class DelAllAd extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
       
          HttpSession ses = request.getSession();
          int userId=(int)ses.getAttribute("UserId");
           
          Configuration cfg=new Configuration();
          cfg.configure("hibernate.cfg.xml");
          SessionFactory factory= cfg.buildSessionFactory();
          Session session=factory.openSession();
          Transaction t= session.beginTransaction();
          
          Query query=session.createQuery("from Usergalery where Userid=:userId");
          query.setParameter("userId", userId);
         
          
           List l=query.list();
	   Iterator it = l.iterator();
  
	  while(it.hasNext())
	    {
	    	Object o = it.next();
	    	
               int brojac=0;
	    
                Usergalery niz[]= new Usergalery[4];
              
                niz[brojac]=(Usergalery)o;
                
                      
                        int imageId =  niz[brojac].getImageId();
                        int UserId = niz[brojac].getUserId();
             
             Query queryDI=session.createQuery("delete from Galery where Id=:imageId");  
             Query queryDU=session.createQuery("delete from Usergalery where UserId=:UserId");
             Query queryDC=session.createQuery("delete from Cars where UserId=:UserId");   
             
             queryDI.setParameter("imageId",imageId);
             queryDU.setParameter("UserId", UserId);
             queryDC.setParameter("UserId", UserId);
             
              queryDI.executeUpdate();
              queryDU.executeUpdate();
              queryDC.executeUpdate();
             
             
             }
             
              t.commit();
         
          
            
         
            RequestDispatcher rd=request.getRequestDispatcher("DelAllAd.jsp");
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
