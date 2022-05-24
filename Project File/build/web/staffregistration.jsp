<%-- 
    Document   : staffregistration
    Created on : May 8, 2022, 6:48:37 PM
    Author     : IS Rachinthana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Designined by CodingLab - youtube.com/codinglabyt -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title> Phoenix_Airline_PVT </title>
    <link rel="stylesheet" href="./css/style_1.css">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
<body>
  <div class="container">
    <div class="title">Staff Registration</div>
    <div class="content">
      <form method="post" action="./staffregistration">
        <div class="user-details">
          <div class="input-box">
            <span class="details">Full Name</span>
            <input type="text" name="fullname" placeholder="Enter your name">
          </div>
          <div class="input-box">
            <span class="details">Username</span>
            <input type="text" name="uname" placeholder="Enter your username" required>
          </div>
          <div class="input-box">
            <span class="details">Email</span>
            <input type="text" name="email" placeholder="Enter your email" required>
          </div>
          <div class="input-box">
            <span class="details">Employee ID </span>
            <input type="text" name="phno" placeholder="Enter your ID number">
          </div>
            
          <div class="input-box">
            <span class="details">Password</span>
            <input type="text" name="password" placeholder="Enter your password" required>
          </div>
            
          <div class="input-box">
            <span class="details">Confirm Password</span>
            <input type="text" placeholder="Confirm your password">
          </div>
        </div>
          
        <div class="gender-details">
            <input type="radio" name="gender" value="Grade one" id="dot-1">
          <input type="radio" name="gender" value="Grade two" id="dot-2">
          <input type="radio" name="gender" value="null" id="dot-3">
          <span class="gender-title">Staff Grade</span>
          <div class="category">
            <label for="dot-1">
            <span class="dot one"></span>
            <span class="gender">Grade One</span>
          </label>
          <label for="dot-2">
            <span class="dot two"></span>
            <span class="gender">Grade two</span>
          </label>
          <label for="dot-3">           
            </label>
          </div>
        </div>
        <div class="button">
          <input type="submit" value="Registration">

        </div>
      </form>
    </div>
  </div>

</body>
</html>
