/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.dbconnect;

/**
 *
 * @author IS Rachinthana
 */
public class flightinformation extends HttpServlet {

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
            out.println("<title>Servlet flightinformation</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet flightinformation at " + request.getContextPath() + "</h1>");
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
         
         String flightid =request.getParameter("flightid");
         String flightfrom =request.getParameter("flightfrom");
         String flightto =request.getParameter("flightto");
         String departdate =request.getParameter("departdate");
         String returndate =request.getParameter("returndate");
         String time =request.getParameter("time");
         String flghtstatus =request.getParameter("flghtstatus");

         try{
         dbconnect con=new dbconnect();
         boolean rslt=con.addflightinfo(flightid,flightfrom,flightto,departdate,returndate,time,flghtstatus);
         if (rslt==true){
               //response.sendRedirect("index.jsp"); 
         out.println("Flight adding Successfull");
         }
         else
            out.println("Flight adding unsuccessfull"); 
         //response.sendRedirect("index.jsp"); 
         
         }
         catch(Exception e)
         {
             e.printStackTrace();
         }
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
