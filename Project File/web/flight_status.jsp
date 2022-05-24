  <%-- 
    Document   : flight_status
    Created on : May 13, 2022, 1:49:57 PM
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
    <link rel="stylesheet" href="./css/style_flight_status.css" media="screen">
    <link rel="stylesheet" href="./css/head_flight_status.css" media="screen">
    <meta name="generator" content="Nicepage 4.10.5, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    
  </head>
  <body class="u-body u-overlap u-overlap-contrast u-overlap-transparent u-xl-mode">
    <section class="u-align-center u-clearfix u-image u-shading u-section-1" id="carousel_3f04" data-image-width="1280" data-image-height="853">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h2 class="u-text u-text-1">Find</h2>
        <p class="u-text u-text-2"> Depending on your destination and date and other applications, the flight for that particular day is as follows</p>
        <div class="u-expanded-width u-table u-table-responsive u-table-1">
          <table class="u-table-entity">
            <colgroup>
              <col width="25%">
              <col width="25%">
              <col width="25%">
              <col width="25%">
            </colgroup>
            <thead class="u-palette-5-dark-3 u-table-header u-table-header-1">
              <tr style="height: 70px;">
                <th class="u-align-center u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-palette-5-dark-1 u-table-cell u-table-cell-1"></th>
                <th class="u-align-center u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-palette-5-dark-1 u-table-cell u-table-cell-2"></th>
                <th class="u-align-center u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-palette-5-dark-1 u-table-cell u-table-cell-3"></th>
                <th class="u-align-center u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-palette-5-dark-1 u-table-cell u-table-cell-4"></th>
              </tr>
            <!--</thead>
            <tbody class="u-black u-table-body u-table-body-1">
             <tr style="height: 43px;">
                <td class="u-border-1 u-border-palette-5-dark-1 u-custom-color-1 u-table-cell u-table-cell-5"></td>
                <td class="u-border-1 u-border-palette-5-dark-1 u-custom-color-1 u-table-cell u-table-cell-6"></td>
                <td class="u-border-1 u-border-palette-5-dark-1 u-custom-color-1 u-table-cell u-table-cell-7"></td>
                <td class="u-border-1 u-border-palette-5-dark-1 u-custom-color-1 u-table-cell u-table-cell-8"></td>
              </tr>
              <tr style="height: 46px;">
                <td class="u-border-1 u-border-palette-5-dark-1 u-custom-color-1 u-table-cell u-table-cell-9"></td>
                <td class="u-border-1 u-border-palette-5-dark-1 u-custom-color-1 u-table-cell u-table-cell-10"></td>
                <td class="u-border-1 u-border-palette-5-dark-1 u-custom-color-1 u-table-cell u-table-cell-11"></td>
                <td class="u-border-1 u-border-palette-5-dark-1 u-custom-color-1 u-table-cell u-table-cell-12"></td>
              </tr>
              <tr style="height: 46px;">
                <td class="u-border-1 u-border-palette-5-dark-1 u-custom-color-1 u-table-cell u-table-cell-13"></td>
                <td class="u-border-1 u-border-palette-5-dark-1 u-custom-color-1 u-table-cell u-table-cell-14"></td>
                <td class="u-border-1 u-border-palette-5-dark-1 u-custom-color-1 u-table-cell u-table-cell-15"></td>
                <td class="u-border-1 u-border-palette-5-dark-1 u-custom-color-1 u-table-cell u-table-cell-16"></td>
              </tr>
              <tr style="height: 46px;">
                <td class="u-border-1 u-border-palette-5-dark-1 u-custom-color-1 u-table-cell u-table-cell-17"></td>
                <td class="u-border-1 u-border-palette-5-dark-1 u-custom-color-1 u-table-cell u-table-cell-18"></td>
                <td class="u-border-1 u-border-palette-5-dark-1 u-custom-color-1 u-table-cell u-table-cell-19"></td>
                <td class="u-border-1 u-border-palette-5-dark-1 u-custom-color-1 u-table-cell u-table-cell-20"></td>
              </tr>
              <tr style="height: 46px;">
                <td class="u-border-1 u-border-palette-5-dark-1 u-custom-color-1 u-table-cell u-table-cell-21"></td>
                <td class="u-border-1 u-border-palette-5-dark-1 u-custom-color-1 u-table-cell u-table-cell-22"></td>
                <td class="u-border-1 u-border-palette-5-dark-1 u-custom-color-1 u-table-cell u-table-cell-23"></td>
                <td class="u-border-1 u-border-palette-5-dark-1 u-custom-color-1 u-table-cell u-table-cell-24"></td>
              </tr>
              <tr style="height: 46px;">
                <td class="u-border-1 u-border-palette-5-dark-1 u-custom-color-1 u-table-cell u-table-cell-25"></td>
                <td class="u-border-1 u-border-palette-5-dark-1 u-custom-color-1 u-table-cell u-table-cell-26"></td>
                <td class="u-border-1 u-border-palette-5-dark-1 u-custom-color-1 u-table-cell u-table-cell-27"></td>
                <td class="u-border-1 u-border-palette-5-dark-1 u-custom-color-1 u-table-cell u-table-cell-28"></td>
              </tr>
              <tr style="height: 46px;">
                <td class="u-border-1 u-border-palette-5-dark-1 u-custom-color-1 u-table-cell u-table-cell-29"></td>
                <td class="u-border-1 u-border-palette-5-dark-1 u-custom-color-1 u-table-cell u-table-cell-30"></td>
                <td class="u-border-1 u-border-palette-5-dark-1 u-custom-color-1 u-table-cell u-table-cell-31"></td>
                <td class="u-border-1 u-border-palette-5-dark-1 u-custom-color-1 u-table-cell u-table-cell-32"></td>
              </tr>
              <tr style="height: 46px;">
                <td class="u-border-1 u-border-palette-5-dark-1 u-custom-color-1 u-table-cell u-table-cell-33"></td>
                <td class="u-border-1 u-border-palette-5-dark-1 u-custom-color-1 u-table-cell u-table-cell-34"></td>
                <td class="u-border-1 u-border-palette-5-dark-1 u-custom-color-1 u-table-cell u-table-cell-35"></td>
                <td class="u-border-1 u-border-palette-5-dark-1 u-custom-color-1 u-table-cell u-table-cell-36"></td>
              </tr>
              <tr style="height: 46px;">
                <td class="u-border-1 u-border-palette-5-dark-1 u-custom-color-1 u-table-cell u-table-cell-37"></td>
                <td class="u-border-1 u-border-palette-5-dark-1 u-custom-color-1 u-table-cell u-table-cell-38"></td>
                <td class="u-border-1 u-border-palette-5-dark-1 u-custom-color-1 u-table-cell u-table-cell-39"></td>
                <td class="u-border-1 u-border-palette-5-dark-1 u-custom-color-1 u-table-cell u-table-cell-40"></td>
              </tr>
              <tr style="height: 46px;">
                <td class="u-border-1 u-border-palette-5-dark-1 u-custom-color-1 u-table-cell u-table-cell-41"></td>
                <td class="u-border-1 u-border-palette-5-dark-1 u-custom-color-1 u-table-cell u-table-cell-42"></td>
                <td class="u-border-1 u-border-palette-5-dark-1 u-custom-color-1 u-table-cell u-table-cell-43"></td>
                <td class="u-border-1 u-border-palette-5-dark-1 u-custom-color-1 u-table-cell u-table-cell-44"></td>
              </tr>
            </tbody>
              -->
          </table>
                     
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>    

         <%  
        //PrintWriter out=response.getWriter();  
        //out.println("<a href='index.html'>Add Employee</a>");  
         String ffID1=request.getParameter("ffID1");
         
          
          String flightid=request.getParameter("flightid");
         
       //out.println("123");
         
        if(ffID1.equals("1"))
        {
         
         List<model.flightstatusbean> list=model.dbconnect.getAllflightfilterstatus2(flightid);  
    
        out.print("<table border='1' width='100%'>");  
           out.print("<tr><th>FLIGHT ID</th><th> FROM</th><th>TO </th><th>TIME</th><th>FLIGHT STATUS</th></tr>");  
        for(model.flightstatusbean e:list){  
         out.print("<tr><td>"+"&nbsp "+e.getflightid()+"</td><td>"+"&nbsp"+e.getflightfrom()+"</td><td>"+"&nbsp"+e.getflightto()+"</td><td>"+"&nbsp"+e.gettime()+"</td> <td>"+"&nbsp"+e.getflghtstatus()+"</td></tr>");  
        }  
        /*<form action='./movestafftog2' method='post'><input type='hidden' name='username' value="+e.getuname()+"> <input type='submit' value='Grade 02'>  </form>*/
        
        out.print("</table>");  
 
        }
        else
        {
            String flightfrom =request.getParameter("flightfrom");
         String flightto=request.getParameter("flightto");
      List<model.flightstatusbean> listi=model.dbconnect.getAllflightfilterstatus(flightfrom,flightto);  
    
        out.print("<table border='1' width='100%'>");  
        out.print("<tr><th>FLIGHT ID</th><th> FROM</th><th>TO </th><th>TIME</th><th>FLIGHT STATUS</th></tr>");  
        for(model.flightstatusbean e:listi){  
         out.print("<tr><td>"+"&nbsp "+e.getflightid()+"</td><td>"+"&nbsp"+e.getflightfrom()+"</td><td>"+"&nbsp"+e.getflightto()+"</td><td>"+"&nbsp"+e.gettime()+"</td> <td>"+"&nbsp"+e.getflghtstatus()+"</td></tr>");  
        }  
        /*<form action='./movestafftog2' method='post'><input type='hidden' name='username' value="+e.getuname()+"> <input type='submit' value='Grade 02'>  </form>*/
       
        out.print("</table>");  
            
        }

       out.close(); 
          %> 
        </div>
      </div>
    </section>
  </body>
</html>


 
            