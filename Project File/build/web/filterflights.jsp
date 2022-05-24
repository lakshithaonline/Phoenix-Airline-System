<%-- 
    Document   : filterflights
    Created on : May 14, 2022, 5:41:44 PM
    Author     : IS Rachinthana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.dbconnect"%>
<%@page import="javax.servlet.http.Cookie"%>
<%@page import="model.cookieverify"%>
<% 
    Cookie[] ck = request.getCookies();
String uname = "none";
cookieverify obj=new cookieverify();
    
                            //response.setContentType("text/html");
                            //PrintWriter out =response.getWriter();
        
                            
                            //String name=ck[0].getValue();
                            //out.print("Welcome "+name);

                         if(!(request.getCookies()==null))
                    {
                    out.print(obj.verifyindex(request, response));
                   
                    
                    uname = "none";
                        for (Cookie aCookie : ck) {
                            String names = aCookie.getName();
 
                        if (names.equals("uname")) {
                            uname = aCookie.getValue();
                              break;
                                }       }
                                //out.print("Welcome "+uname); 
                      }



      %>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <title>Home</title>
    <link rel="stylesheet" href="./css/style_booking.css" media="screen">
    <link rel="stylesheet" href="./css/head_booking.css" media="screen">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    
  </head>
  <body class="u-body u-xl-mode">
    <section class="u-align-center u-clearfix u-image u-shading u-section-1" id="carousel_3f04" data-image-width="1280" data-image-height="853">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h2 class="u-text u-text-1">Available Flights</h2>
        <p class="u-text u-text-2"> Depending on your destination and date and other applications, the flight for that particular day is as follows</p>
        <div class="u-expanded-width u-table u-table-responsive u-table-1">
          <table class="u-table-entity">
            <colgroup>
              <col width="20%">
              <col width="20%">
              <col width="20%">
              <col width="20%">
              <col width="20%">
            </colgroup>
            <thead class="u-palette-5-dark-3 u-table-header u-table-header-1">
             <tr style="height: 70px;">
                <th class="u-align-center u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-palette-5-dark-1 u-table-cell u-table-cell-1"></th>
                <th class="u-align-center u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-palette-5-dark-1 u-table-cell u-table-cell-2"></th>
                <th class="u-align-center u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-palette-5-dark-1 u-table-cell u-table-cell-3"></th>
                <th class="u-align-center u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-palette-5-dark-1 u-table-cell u-table-cell-4"></th>
                <th class="u-align-center u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-palette-5-dark-1 u-table-cell u-table-cell-5"></th>
                <th class="u-align-center u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-palette-5-dark-1 u-table-cell u-table-cell-6"></th>
              </tr>
          
            </thead>
         
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>    

         <%  
        //PrintWriter out=response.getWriter();  
        //out.println("<a href='index.html'>Add Employee</a>");  
        String flighttype1 =request.getParameter("flight-type1");
      
        
        
        
        
         String flightfrom =request.getParameter("flightfrom");
         String flightto =request.getParameter("flightto");
         String departdate =request.getParameter("departdate");
         String returndate =request.getParameter("returndate");
            
             out.println(flighttype1);
             if(flighttype1.equals("on")){
        List<model.flightinfobean> list=model.dbconnect.getAllflightfilter(flightfrom,flightto, departdate,returndate);  
             
        out.print("<table border='1' width='100%'>");  
        out.print("<tr><th>Flight ID</th><th> From</th><th>To </th><th>Depart Date</th><th>Return Date</th><th>Time</th><th>Section</th></tr>");  
        for(model.flightinfobean e:list){  
         out.print("<tr><td>"+"&nbsp "+e.getflightid()+"</td><td>"+"&nbsp"+e.getflightfrom()+"</td><td>"+"&nbsp"+e.getflightto()+"</td><td>"+"&nbsp"+e.getdepartdate()+"</td><td>"+"&nbsp"+e.getreturndate()+"</td><td>"+"&nbsp"+e.gettime()+"</td><td> <form action='book_a_flight.jsp' method='post'><input type='hidden' name='' value="+e.getflightid()+"> <input type='submit' value='Book'></form></td></tr>");  
        }  
        /*<form action='./movestafftog2' method='post'><input type='hidden' name='username' value="+e.getuname()+"> <input type='submit' value='Grade 02'>  </form>*/
        
        out.print("</table>");  
             }
             else{
        List<model.flightinfobean> list=model.dbconnect.getAllflightfilter2(flightfrom,flightto, departdate);  
             
        out.print("<table border='1' width='100%'>");  
        out.print("<tr><th>Flight ID</th><th> From</th><th>To </th><th>Depart Date</th><th>Time</th><th>Section</th></tr>");  
        for(model.flightinfobean e:list){  
         out.print("<tr><td>"+"&nbsp "+e.getflightid()+"</td><td>"+"&nbsp"+e.getflightfrom()+"</td><td>"+"&nbsp"+e.getflightto()+"</td><td>"+"&nbsp"+e.getdepartdate()+"</td><td>"+"&nbsp"+e.gettime()+"</td><td> <form action='book_a_flight.jsp' method='post'><input type='hidden' name='' value="+e.getflightid()+"> <input type='submit' value='Book' id='f4' ></form></td></tr>");  
        }  
        /*<form action='./movestafftog2' method='post'><input type='hidden' name='username' value="+e.getuname()+"> <input type='submit' value='Grade 02'>  </form>*/
        
        out.print("</table>"); 
             out.print("in else");
             }
        out.close(); 
          %> 
          
 
          
         </tbody>
          </table>
        </div>
      </div>
    </section>
  </body>
</html>