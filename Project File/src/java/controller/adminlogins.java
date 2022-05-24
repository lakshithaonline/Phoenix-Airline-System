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
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.loginbean;
import model.dbconnect;

/**
 *
 * @author IS Rachinthana
 */
public class adminlogins extends HttpServlet {

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
            out.println("<title>Servlet adminlogins</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet adminlogins at " + request.getContextPath() + "</h1>");
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
       // processRequest(request, response);
        //processRequest(request, response);
        
         response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        
        String username=request.getParameter("uname");
        String password=request.getParameter("password");
        password=model.hashing.getMd5(password);
        
        //LoginBean bean=new LoginBean();
        //bean.setname(username);
        //request.setAttribute("bean",bean);
        
        try
        {
        dbconnect con = new dbconnect();
        boolean rslt=con.checkadmin(username,password);
        if(rslt==true)
        {
        Cookie ck=new Cookie("uname",username);
        response.addCookie(ck);
        Cookie ck1=new Cookie("pwd",password);
        response.addCookie(ck1);
        //out.println("You have successfully logged!!!");
        RequestDispatcher rs = request.getRequestDispatcher("adminsdashboard.jsp");
        rs.include(request,response);
        }
        else
        {
        out.println("Username or Password incorrect");
         RequestDispatcher rs = request.getRequestDispatcher("adminlogin.jsp");
         rs.include(request, response);
        }
        
        }
        catch(Exception e)
        {
        
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
