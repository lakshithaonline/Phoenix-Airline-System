<%-- 
    Document   : autogenarateticketID
    Created on : May 22, 2022, 12:19:24 AM
    Author     : IS Rachinthana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@page import="java.lang.Math"%>
 <%@page import  = "javax.servlet.http.Cookie"%>
 <%@page import  = "java.io.PrintWriter"%>
 <%@page import="model.dbconnect"%>
 <%@page import="model.cookieverify"%>
<h2>
<%             
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
                      
                            
      %>
</h2>	

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TIcket ID Generator</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
     <link rel="stylesheet" href="./css/ticketidstyle.css" media="screen">
    <link rel="stylesheet" href="./css/head_booking.css" media="screen">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    </head>
    <body> 
        <section>
  <div class="box-container">
        <h3>Booking reserve Your Seat Successfully!!</h3>
        <div class="row">
    <div class="col-sm-4">
        <form method="post" action="./randomticketidgen">
            <div align="left">
                <p>Your Ticket ID Number is Generating.. </p>
            </div>

            <div align="left">
                <label>Your Ticket Number:</label>
                <input type="text" class="form-control" name="ticketid"  style=" font-size: 16px; color: blue; font-weight: bold; "  value="<% out.print("TI" + Math.random());%>">
            </div>


            <div align="left">
                <label>Flight ID</label>
                <input type="text" class="form-control" name="flightid">
            </div>


            <div align="left">
                <label>User Name</label>
                <input type="text" class="form-control" name="uname" style=" font-size: 16px; color: blue; font-weight: bold;" value= "<% out.print(uname);%>" >
            </div>

            </br>

            <div align="left">
                <input type="submit" value="Save Your Ticket Details" class="btn btn-success">
            </div>
        </form>
    </div>
</div>
            
  </div>          
            <section>
    </body>
</html>
