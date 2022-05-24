<%-- 
    Document   : adminlogin
    Created on : May 8, 2022, 6:37:26 PM
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
	<title>Phoenix Airline</title>
	<meta charset="UTF-8">
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
<!--End of the background video css-->   
</head>
<body>
  <video autoplay muted loop id="myVideo">
    <source src="images/Singapore Changi Airport Jewel Cinematic Film Sony A6500_1080p.mp4" type="video/mp4"><!--background video source-->
    Your browser does not support HTML5 video.
  </video>
  <div class="cont">
    <div class="form sign-in">
              <p><span class="userflag"><%               
                          
      %></span></p>
      <h2>Phoenix Airline | ADMIN SIGN IN</h2>
           <form method="post" action="./adminlogins">
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
           </form>
      <div class="social-media">
        <ul>
          <li><img src="images/facebook.png"></li>
          <li><img src="images/twitter.png"></li>
          <li><img src="images/linkedin.png"></li>
          <li><img src="images/instagram.png"></li>
        </ul>
          
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
        
    
          <span class="m-in">Sign In</span>
        
      </div>
     
<script type="text/javascript" src="script.js">
  var video = document.getElementById("myVideo");
</script>
</body>
</html>