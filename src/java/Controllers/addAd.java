/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Model.Cars;
import Model.Galery;
import Model.Usergalery;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Iterator;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author Nenad
 */@MultipartConfig
public class addAd extends HttpServlet {

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
       
        HttpSession ses=request.getSession();
        int UserId=(int)ses.getAttribute("Id");
        int price=Integer.parseInt(request.getParameter("price"));
        String location=request.getParameter("location");
        String description=request.getParameter("description");
        String features=request.getParameter("features");
        String brand=request.getParameter("brand");
        String Year=request.getParameter("Year");
    
        Cars car=new Cars();     
        car.setPrice(price);
        car.setDescription(description);
        car.setFeatures(features);
        car.setLocation(location);
        car.setBrand(brand);
        car.setYear(Year);
        car.setUserId(UserId);
        Configuration cfg=new Configuration();
        cfg.configure("hibernate.cfg.xml");
        SessionFactory factory=cfg.buildSessionFactory();
        Session session= factory.openSession();
        Transaction t= session.beginTransaction();
        int IDcar=session.save(car).hashCode();
        
        
       
        
         Query qry=session.createQuery("from Cars");
            
            List l=qry.list();
	    Iterator it = l.iterator();
            
            Cars Cars = null;
	    while(it.hasNext())
	    {
	    	Object o = it.next();
	    	Cars = (Cars)o;
	    }
         
       String path = request.getServletContext().getRealPath("/");
      File f;
      String pathimag = "img\\Cars\\";
      int id = Cars.getId();
      StringBuilder sb = new StringBuilder();
        sb.append("");
        sb.append(Cars.getId());
        String strI = sb.toString();
        f = new File (path+pathimag,sb.toString());
        f.mkdir();
       
         
    Part filePart = request.getPart("file"); // Retrieves <input type="file" name="file">
    String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString(); // MSIE fix.
    InputStream fileContent = filePart.getInputStream();
         String name = getSubmittedFileName(filePart);
        File file = new File(path+pathimag+"\\"+sb.toString()+"\\"+name);

        try (InputStream input = fileContent) {
            Files.copy(input, file.toPath());
        }
        Galery galery= new Galery();
        galery.setPath(pathimag+"\\"+sb.toString()+"\\"+name);
        session.save(galery);
        
        t.commit();
        
        
            
        Usergalery usergalery= new Usergalery();
        usergalery.setCarId(UserId);
        usergalery.setImageId(UserId);
        usergalery.setUserId(UserId);
        
        
        
        
        
        
        RequestDispatcher rd=request.getRequestDispatcher("AddAdSucc.jsp");
        rd.forward(request, response);
        
        
    }
    
    private static String getSubmittedFileName(Part part) {
    for (String cd : part.getHeader("content-disposition").split(";")) {
        if (cd.trim().startsWith("filename")) {
            String fileName = cd.substring(cd.indexOf('=') + 1).trim().replace("\"", "");
            return fileName.substring(fileName.lastIndexOf('/') + 1).substring(fileName.lastIndexOf('\\') + 1); // MSIE fix.
        }
    }
    return null;
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
