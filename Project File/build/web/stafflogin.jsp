<%-- 
    Document   : login
    Created on : May 8, 2022, 6:24:36 PM
    Author     : IS Rachinthana
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import  = "javax.servlet.http.Cookie"%>
 <%@page import  = "java.io.PrintWriter"%>
 <%@page import="model.dbconnect"%>
 <%@page import="model.cookieverify"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Phoenix_Airline_PVT</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="./css/style_index_login.css"> <!--External CSS BODY-->

<!--Background Video Internal CSS-->
  <style>
    * {
      box-sizing: border-box;
    }
    
    body {
      margin: 0;
      font-family: Arial;
      font-size: 17px;
    }
    
    #myVideo {
      position: fixed;
      right: 0;
      bottom: 0;
      min-width: 100%; 
      min-height: 100%;
    }
    
    .content {
      position: fixed;
      bottom: 0;
      background: rgba(0, 0, 0, 0.5);
      color: #f1f1f1;
      width: 100%;
      padding: 20px;
    }
</style> 
  </head>
  <body>

      
  <video autoplay muted loop id="myVideo">
        
    <source src="images/Singapore Changi Airport Jewel Cinematic Film Sony A6500_1080p.mp4" type="video/mp4"><!--background video source-->
    Your browser does not support HTML5 video.
    
  </video>
      
  <div class="cont">
    <div class="form sign-in">
           <p align="center"><span class="userflag"></span><p>
      <h2>Phoenix Airline | STAFF SIGN IN</h2>
       <form method="post" action="./stafflogin">
      <label>
        <span>User Name</span>
        <input type="text" name="uname">
      </label>
      <label>
        <span>Password</span>
        <input type="password" name="password">
      </label>
           <button class="submit" type="submit" value="Login">Sign In</button>
      
      <p class="forgot-pass">Forgot Password ?</p>
  
    
      <div class="social-media">
        <ul>
          <li><img src="images/facebook.png"></li>
          <li><img src="images/twitter.png"></li>
          <li><img src="images/linkedin.png"></li>
          <li><img src="images/instagram.png"></li>
        </ul>
            </form>
      </div>
    </div>
 
    <div class="sub-cont">
      <div class="img">
        <div class="img-text m-up">
          <h2>New here?</h2>
          <p>Sign up and discover great amount of new opportunities!</p>
        </div>
        <div class="img-text m-in">
          <h2>One of us?</h2>
          <p>If you already has an account, just sign in. We've missed you!</p>
        </div>
        <div class="img-btn">
          <span class="m-up">Sign Up</span>
          <span class="m-in">Sign In</span>
        </div>
      </div>
      <div class="form sign-up">
        <h2>Phoenix Airline | STAFF SIGN UP</h2>
         <form method="post" action="./staffregistration">
        <label>
          <span>Full Name</span>
          <input type="text" name="fullname" required="">
        </label>
        <label>
             <span>User Name</span>
          <input type="text" name="uname"required="">
        </label>
        <label>
          <span>Employee ID</span>
          <input type="text" name="empid" required="">
        </label>
        <label>
        
          <span>Password</span>
          <input type="password" name="password" required="">
        </label>
        <label>
          <span>Confirm Password</span>
          <input type="password" required="">
        </label>
        
        <button type="submit" class="submit" value="Registration">Sign Up Now</button>
         </form>
      </div>
        
    </div>
  </div>
<script type="text/javascript" src="./js/script_index.js">
  var video = document.getElementById("myVideo");
</script>
</body>
</html>