/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.dbconnect;
import javax.servlet.http.Cookie;


/**
 *
 * @author IS Rachinthana
 */
public class book_a_flight extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet book_a_flight</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet book_a_flight at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
        //processRequest(request, response);
        response.setContentType("text/html;charset=UTF-8");
   PrintWriter out=response.getWriter();
       String tripmethod=request.getParameter("tripmethod");
       String fullname=request.getParameter("fullname");
       String passportid=request.getParameter("passportid");
       String email=request.getParameter("email");
       String departure=request.getParameter("departure");
       String arrival=request.getParameter("arrival");
       //String name=request.getParameter("name");
       String departuredate=request.getParameter("departuredate");
        String returndate=request.getParameter("returndate");
         String classtype=request.getParameter("classtype");
          String adult=request.getParameter("adult");
           String child=request.getParameter("child");

       Cookie[] ck = request.getCookies();
                            //String name=ck[0].getValue();
                            //out.print("Welcome "+name);

                            String uname = "none";
                        for (Cookie aCookie : ck) {
                            String names = aCookie.getName();
 
                        if (names.equals("uname")) {
                            uname = aCookie.getValue();
                              break;
                                }       }
                                //out.print("Welcome "+uname);

        try{
         dbconnect con=new dbconnect();
         boolean rslt=con.userbooking(uname,tripmethod,fullname,passportid,email,departure,arrival,departuredate,returndate,classtype,adult,child);
         //boolean rslt=con.regUser(rooms,mplan,child);
         if (rslt==true)
         {
            /* String to="vishwaspinnawala@gmail.com";//request.getParameter("to");  
             String subject="New Booking";//request.getParameter("subject");  
             String msg=uname+" has booked a room Please Check him in! \n Login Link : http://localhost:21190/HotelSoraboragedara/adminlogin.jsp" ;//request.getParameter("msg");  
          
             model.Mailer.send(to, subject, msg); 
         RequestDispatcher rs = request.getRequestDispatcher("index.jsp");
         rs.include(request, response);
             */
          response.sendRedirect("autogenarateticketID.jsp"); 
         out.println("Booking Successfull");
        
         }
         else
         {
             //RequestDispatcher rs = request.getRequestDispatcher("book_a_flight.jsp");
             //rs.include(request, response);
             out.println("Booking Unsuccessfull");   
         }
         }
         catch(Exception e)
         {
             e.printStackTrace();
             out.println(e);
         }
       
       
        
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
