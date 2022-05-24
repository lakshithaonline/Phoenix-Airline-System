<%-- 
    Document   : admindashstaffdetails01
    Created on : May 15, 2022, 12:56:40 PM
    Author     : IS Rachinthana
--%>
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
                                }       }
                                
                      }
                      if(uname=="none"){response.sendRedirect("index.jsp");}
                            
      %></h2>	
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
 
    <link rel="stylesheet" href="./css/styledash.css">
    <link rel="stylesheet" href="./css/table.css">
   
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
<body>
  <div class="sidebar">
    <div class="logo-details">
      <i class='bx bxl-c-plus-plus'></i>
      <span class="logo_name">Phoenix <br> Airline</span>
    </div>
      <ul class="nav-links">
        <li>
          <a href="adminsdashboard.jsp" >
            <i class='bx bx-grid-alt' ></i>
            <span class="links_name">Register Staff Details</span>
          </a>
        </li>

          <li>
          <a href="admindashuserdetails.jsp">
            <i class='bx bx-list-ul' ></i>
            <span class="links_name">User Details</span>
          </a>
        </li>
        <li>
    
            
          <a href="admindashboard_1.jsp">
            <i class='bx bx-box' ></i>
            <span class="links_name">Booking Details</span>
          </a>
        </li>
      
        
        <li>
           <a href="admindashstaffdetails01.jsp" >
            <i class='bx bx-pie-chart-alt-2'  ></i>
            <span class="links_name">Grade 01 Staff Details</span>
          </a>
        </li>
         <li>
               <a href="admindashstaffdetails02.jsp"class="active">
            <i class='bx bx-box' ></i>
            <span class="links_name"> Grade 02 Staff Details</span>
          </a>
        </li>
      
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
        <span class="dashboard">Dashboard</span>
      </div>
      <div class="search-box">
        <input type="text" placeholder="Search...">
        <i class='bx bx-search' ></i>
      </div>
      <div class="profile-details">
        <img src="./images/profile.jpg" alt="">
        <span class="admin_name"><%out.print(uname); %></span>
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
          <div class="title">Grade 02 Staff Details</div>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>          
         <%
              
        //PrintWriter out=response.getWriter();  
        //out.println("<a href='index.html'>Add Employee</a>");  
        out.println("<br>");  
          
       List<model.staffgrade02bean> list=model.dbconnect.getAllEmployeesG2();            
        out.print("<table border='1' width='100%'");  
        out.print("<tr><th>UserName</th><th>Full Name</th><th>Employee ID</th><th>Password</th><th></th><th></th></tr>");  
        for(model.staffgrade02bean e:list){  
         out.print("<tr><td>"+"&nbsp "+e.getuname()+"</td><td>"+"&nbsp"+e.getfullname()+"</td><td>"+"&nbsp"+e.getempid()+"</td><td>"+"&nbsp"+e.getpassword()+"</td><td> <form action='./staffdeleteg_two' method='post'><input type='hidden' name='username' value="+e.getuname()+"> <input type='submit' value='Delete'>  </form></td><td> </td></tr>");  
        }  
        /*<form action='./movestafftog2' method='post'><input type='hidden' name='username' value="+e.getuname()+"> <input type='submit' value='Grade 02'>  </form>*/
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

