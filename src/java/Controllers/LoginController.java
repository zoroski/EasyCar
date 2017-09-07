/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;
import Model.Auser;
import Service.LoginService;
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
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
/**
 *
 * @author zoroskid
 */
public class LoginController extends HttpServlet {
    
     @Override
     protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
        {
            String userId, password;
            
            userId = request.getParameter("username");
            password = request.getParameter("password");
            
            LoginService loginService = new LoginService();
            boolean result = loginService.authenticate(userId, password);
            
            Configuration cfg = new Configuration();
            cfg.configure("hibernate.cfg.xml"); 
 
            SessionFactory factory = cfg.buildSessionFactory();
            Session session = factory.openSession();		
 
	    Query qry=session.createQuery("from Auser as u where u.password ='"+password+"' and u.userName = '"+userId+"'");
            
            List l=qry.list();
	    Iterator it = l.iterator();
            
            Auser user = null;
	    while(it.hasNext())
	    {
	    	Object o = it.next();
	    	user = (Auser)o;
	    }
            if(user == null) {
             request.setAttribute("Message", "Pogresno korisnicko ime ili lozinka");
              RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");  
              rd.forward(request, response);

            }
            else {
             HttpSession ses = request.getSession(true);
              ses.setAttribute("Id",user.getId());
             ses.setAttribute("UserName",user.getUserName());
             ses.setAttribute("Name",user.getName());
             ses.setAttribute("Surname",user.getSurname());
             ses.setAttribute("Email",user.getEmail());
              ses.setAttribute("ImgPath",user.getImgPath());
             RequestDispatcher rd=request.getRequestDispatcher("index.jsp"); 
             rd.forward(request, response);
            }
            
            
        }
}
