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
    <title>Staff G1 Dashboard</title>
    <link rel="stylesheet" href="./css/rooms.css">
    <link rel="stylesheet" href="./css/table.css">
   
    
    
    
  <!-- userlogin
   flight status home
   staff login
   staff dash 02
   admin dash
   profile contact us and staf dash 01 table
   proceeders
   databse tables 
   filter flight
   fliter flight status
   staff functions ss
   Cookies 
   -->
  
   
   
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
            <a href="dashboardstaff_01.jsp" class="active">
            <i class='bx bx-list-ul' ></i>
            <span class="links_name">User Details</span>
          </a>
        </li>
        
        <li>
          <a href="staffdashG1flightinfo.jsp" >
            <i class='bx bx-grid-alt' ></i>
            <span class="links_name">Flight Details</span>
          </a>
        </li>
       
        <li>
           
          <a href="staffdashG1ticketdetails.jsp" >
            <i class='bx bx-box' ></i>
            <span class="links_name">Ticket Details</span>
          </a>
        </li>
        <li>
      
           <a href="staffdashusersmsg.jsp" >
            <i class='bx bx-pie-chart-alt-2'  ></i>
            <span class="links_name">Messages Box</span>
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
        <span class="dashboard">Grade 01 Staff Dashboard</span>
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
<!--
<div class="sales-boxes">
        <div class="recent-sales box">
          <div class="title">User Details Update</div>
          <form action="./updateuser" method="POST">
             <span>Full Name</span>
          <input type="text" name="fullname" required="">
        </label>
        <label>
             <span>User Name</span>
          <input type="text" name="uname"required="">
        </label>
        <label>
          <span>Email</span>
          <input type="email" name="email" required="">
        </label>
        <label>
        
          <span>Password</span>
          <input type="password" name="password" required="">
        </label>
        <label>
             <button type="submit" class="submit" value="Update">Update Info</button>
          </form>
          
             <div class="button">
            <a href="#">See All</a> 
          </div>
        </div>
      </div>
            
            <br>
          -->
      <div class="sales-boxes">
        <div class="recent-sales box">
          <div class="title">User Details</div>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
          
          <%
              
        //PrintWriter out=response.getWriter();  
        //out.println("<a href='index.html'>Add Employee</a>");  
        out.println("<br>");  
          
        List<model.userdetailsbean> list=model.dbconnect.getuserdetails();  
          
        out.print("<table border='1' width='100%'");  
        out.print("<tr><th>Username</th><th>Fullname</th><th>Email</th><th></th><th></th>");  
        for(model.userdetailsbean e:list){  
         out.print("<form action='./updateuser' method='post'><tr><td>"+e.getusername()+"<input type='hidden' name='username' value="+e.getusername()+"> </td><td><input type='text' name='fullname' value="+e.getfullname()+"> </td><td><input type='text' name='email' value="+e.getemail()+"> </td><td><input type='submit' value='Update'>  </form></td> <td> <form action='./deleteusers' method='post'><input type='hidden' name='username' value="+e.getusername()+"> <input type='submit' value='Delete'>  </form></td> </tr>");  
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
