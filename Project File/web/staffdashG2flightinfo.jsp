<%-- 
    Document   : staffdashG2flightinfo
    Created on : May 20, 2022, 7:58:00 PM
    Author     : IS Rachinthana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import  = "javax.servlet.http.Cookie"%>
 <%@page import  = "java.io.PrintWriter"%>
 <%@page import="model.dbconnect"%>
 <%@page import="model.cookieverify"%>
<h2><%             
Cookie[] ck = request.getCookies();
String uname = "none";
cookieverify obj=new cookieverify();
                    
                            
                            
                    
                            //response.setContentType("text/html");
                            //PrintWriter out =response.getWriter();
        
                            //Cookie[] ck = request.getCookies();
                            //String name=ck[0].getValue();
                            //out.print("Welcome "+name);

                            //String uname = "none";
                      
                    if(!(request.getCookies()==null))
                    {
                    out.print(obj.verifyindex(request, response));
                   
                    
                    uname = "none";
                        for (Cookie aCookie : ck) {
                            String names = aCookie.getName();
 
                        if (names.equals("uname")) {
                            uname = aCookie.getValue();
                              break;
                                }       }}
                        if(uname=="none"){response.sendRedirect("index.jsp");}        
                      
                            
      %></h2>	
<!DOCTYPE html>



<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title>Staff G2 Dashboard</title>
    <link rel="stylesheet" href="./css/rooms.css">
    <link rel="stylesheet" href="./css/table.css">
   
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
<body>
  <div class="sidebar">
    <div class="logo-details">
      <i class='bx bxl-c-plus-plus'></i>
      <span class="logo_name">Phoenix <br>Airline</span>
    </div>
      <ul class="nav-links">
           <li>
            <a href="staffdashG2flightinfo.jsp" class="active">
            <i class='bx bx-list-ul' ></i>
            <span class="links_name">Flight Details</span>
          </a>
        </li>
   <li>
          <a href="saffdashG2userdetatils.jsp" >
            <i class='bx bx-grid-alt' ></i>
            <span class="links_name">User Details</span>
          </a>
        </li>
         <li>
           
          <a href="staffdashG2bookinginfo.jsp" >
            <i class='bx bx-box' ></i>
            <span class="links_name">Booking Details</span>
          </a>
        </li>
         <!-- <li>
 
          <a href="" >
            <i class='bx bx-box' ></i>
            <span class="links_name">Ticket Details</span>
          </a>
        </li> -->
        <li>
      
           <a href="" >
            <i class='bx bx-pie-chart-alt-2'  ></i>
            <span class="links_name">Users Messages</span>
          </a>
        </li>
               <!--  
         <li>
               <a href="">
            <i class='bx bx-box' ></i>
            <span class="links_name"> </span>
          </a>
        </li>
            -->
      <li class="">
          <a href="index.jsp">
            <i class='bx bx-log-out'></i>
            <span class="links_name">Home</span>
          </a>
        </li>
       
        <li class="log_out"> 
          <a href="./logout">
            <i class='bx bx-log-out'></i>
            <span class="links_name">Log out</span>
          </a>            
        </li>
      </ul>
  </div>
  <section class="home-section">
    <nav>
      <div class="sidebar-button">
        <i class='bx bx-menu sidebarBtn'></i>
        <span class="dashboard">Grade 02 Staff Dashboard</span>
      </div>
      <div class="search-box">
        <input type="text" placeholder="Search...">
        <i class='bx bx-search' ></i>
      </div>
      <div class="profile-details">
        <img src="images/profile.jpg" alt="">
        <span class="admin_name"><%out.print(uname);%></span>
        <i class='bx bx-chevron-down' ></i>
      </div>
    </nav>

  
    <div class="home-content">
      <div class="overview-boxes">
        <div class="box">
          <div class="right-side">
               <div class="box-topic">Total G1 Staff Members</div>
            <div class="number">
                <%
                dbconnect obje =new dbconnect();
                String G1empcount=obje.G1empcount();
                out.print(G1empcount);
                %>
            </div>
            <div class="indicator">
              <i class='bx bx-up-arrow-alt'></i>
              <span class="text">Up from now</span>
            </div>
          </div>
          <i class='bx bx-cart-alt cart'></i>
        </div>
        <div class="box">
          <div class="right-side">
             <div class="box-topic">Total Bookings</div>
            <div class="number">
            <%
                String flightbookcount=obje.flightbookcount();
                out.print(flightbookcount);
                %>
            </div>
            <div class="indicator"> 
              <i class='bx bx-up-arrow-alt'></i>
              <span class="text">Up from now</span>
            </div>
          </div>
          <i class='bx bxs-cart-add cart two' ></i>
        </div>
        <div class="box">
          <div class="right-side">
            <div class="box-topic">Total Users</div>
            <div class="number"><%
                String usercount=obje.usercount();
                out.print(usercount);
                %></div>
            <div class="indicator">
              <i class='bx bx-up-arrow-alt'></i>
              <span class="text">Up from now</span>
            </div>
          </div>
          <i class='bx bx-cart cart three' ></i>
        </div>
        <div class="box">
          <div class="right-side">
            <div class="box-topic">Total G2 Staff Members</div>
            <div class="number"><%
                String G2empcount=obje.G2empcount();
                out.print(G2empcount);
                %></div>
            <div class="indicator">
              <i class='bx bx-down-arrow-alt down'></i>
              <span class="text">Up from now</span>
            </div>
          </div>
          <i class='bx bxs-cart-download cart four' ></i>
        </div>
      </div>

<div class="sales-boxes">
        <div class="recent-sales box">
          <div class="title">Add Flight Details </div>
          <form action="./flightinformation" method="POST">
             <span>Flight ID</span>
          <input type="text" name="flightid" required="">
        </label> &nbsp;
        <label> 
            
             <span>From <span>
          <input type="text" name="flightfrom"required="">
        </label> &nbsp;
        <label>
          <span>To</span>
          <input type="text" name="flightto" required="">
        </label> <br> <br> <br>
            
          <span>Depart Date</span>
          <input type="date" name="departdate" required="">
        </label>    &nbsp;&nbsp;&nbsp;
         <label>&nbsp;&nbsp;
          <span>Return Date</span>
          <input type="date" name="returndate" required="">
        </label>
         <span>Time</span>
         
            <input type="time" name="time" value="time">
        </label>&nbsp;&nbsp;
     
         <label>
          <span>Status</span>
          <input type="text" name="flghtstatus" required="">
        </label> &nbsp;
        <label>
        &nbsp; &nbsp; 
        <label>
             <button type="submit" class="submit" value="Add">Add Info</button>
          </form>
          
             <div class="button">
            <!--<a href="#">See All</a> -->
          </div>
        </div>
      </div>
            
            <br>
            
      <div class="sales-boxes">
        <div class="recent-sales box">
          <div class="title">Flight Information</div>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
          <%
              
        //PrintWriter out=response.getWriter();  
        //out.println("<a href='index.html'>Add Employee</a>");  
        out.println("<br>");  
          
        List<model.flightinfobean> list=model.dbconnect.getAllflightinfo();  
          
        out.print("<table border='1' width='100%'");  
        out.print("<tr><th>Flight ID</th><th>From</th><th>To</th><th>Depart Date</th><th>Return Date</th><th>Time</th><th></th><th></th>");  
        for(model.flightinfobean e:list){  
         out.print("<tr><td>"+"&nbsp "+e.getflightid()+"</td><td>"+"&nbsp"+e.getflightfrom()+"</td><td>"+"&nbsp "+e.getflightto()+"</td><td>"+"&nbsp "+e.getdepartdate()+"</td><td>"+"&nbsp "+e.getreturndate()+"</td><td>"+"&nbsp "+e.gettime()+"</td></tr>");  
        }  
        out.print("</table>");  
        out.close(); 
          %>
          <div class="button">
            <a href="#">See All</a>
          </div>
        </div>
        
      </div>
    </div>
  </section>


</body>
</html>
