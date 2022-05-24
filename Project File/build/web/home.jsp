<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>home</title>

   <!-- swiper css link  -->
   <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

   <!-- Bootstrap -->
   <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

   <!-- custom css file link  -->
   <link rel="stylesheet" href="./css/style_home.css">


      <script type="text/javascript">
         function text(x){
            if (x==0) 
               document.getElementById("mycode").style.display = "block";
            else
               document.getElementById("mycode").style.display = "none";
            return;
         }
      </script>
</head>
<body>
   
<!---------------------------- header section starts  ------------------------------->

<section class="header">

   <a href="#home" class="logo"><img src="./images/445.png" style="height: 50px; width: 150px;"></a>

   <nav class="navbar">
         
         <a href="#home">Home</a>
         <a href="#1">Book a flight</a>
         <a href="#2">Flight Status</a>
         <a href="userprofile.jsp">Profile</a>
         <a href="index.jsp" class="signout-btn" style="color: white;">Sign Out</a>
      
   </nav>

   <div id="menu-btn" class="fas fa-bars"></div>

</section>
<!-- header section ends -->
   
<!-------------------------- home section starts  ------------------------------>
<div id="home">
<section class="home">

   <div class="swiper home-slider">

      <div class="swiper-wrapper">
         <div class="swiper-slide slide" style="background:url(images/img9.jpg) no-repeat">
            <div class="content">
               <span>explore, discover, travel</span>
               <h3>travel around the world</h3>
               <a href="https://world-tour.in/" class="btn">discover more</a>
            </div>
         </div>
         <div class="swiper-slide slide" style="background:url(images/img4.jpg) no-repeat">
            <div class="content">
               <span>explore, discover, travel</span>
               <h3>fly with comfort</h3>
               <a href="https://world-tour.in" class="btn">discover more</a>
            </div>
         </div>

         <div class="swiper-slide slide" style="background:url(images/home-slide-2.jpg) no-repeat">
            <div class="content">
               <span>explore, discover, travel</span>
               <h3>make new experiences</h3>
               <a href="https://world-tour.in" class="btn">discover more</a>
            </div>
         </div>

         <div class="swiper-slide slide" style="background:url(images/img6.jpg) no-repeat">
            <div class="content">
               <span>explore, discover, travel</span>
               <h3>enjoy new flavours</h3>
               <a href="https://world-tour.in" class="btn">discover more</a>
            </div>
         </div>

         <div class="swiper-slide slide" style="background:url(images/home-slide-1.jpg) no-repeat">
            <div class="content">
               <span>explore, discover, travel</span>
               <h3>relax to your hearts content</h3>
               <a href="https://world-tour.in" class="btn">discover more</a>
            </div>
         </div>
         <div class="swiper-slide slide" style="background:url(images/home-slide-3.jpg) no-repeat">
            <div class="content">
               <span>explore, discover, travel</span>
               <h3>make your tour worthwhile</h3>
               <a href="https://world-tour.in" class="btn">discover more</a>
            </div>
         </div>
         
         <div class="swiper-slide slide" style="background:url(images/img7.jpg) no-repeat">
            <div class="content">
               <span>explore, discover, travel</span>
               <h3>discover new places</h3>
               <a href="https://world-tour.in" class="btn">discover more</a>
            </div>
         </div>
        
         
      </div>

      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>

   </div>

</section>
</div>
<!-- home section ends -->


<!------------------------- home packages section starts  ------------------------------>

<section class="home-packages" name="s1">

   <h1 class="heading-title"> offers </h1>

   <div class="box-container">

      <div class="box">
         <div class="image">
            <img src="./images/img12.jpg" alt="">
         </div>
         <div class="content">
            <h3>Enjoy a rewarding stay</h3>
            <p>Book hotels from a variety of choices while collecting many loyalty points</p>
            <a href="https://www.yamu.lk/trending/top-25-beach-hotels-in-sri-lanka/" class="btn2">book now</a>
         </div>
      </div>

      <div class="box">
         <div class="image">
            <img src="./images/img-7.jpg" alt="">
         </div>
         <div class="content">
            <h3>Couple packages</h3>
            <p>Enjoy to the fullest with your loved ones with many discounts</p>
            <a href="https://www.youth-hostel.si/en/travelogues/LK?linksubid=PPC-ANG_Travel&gclid=Cj0KCQjwm6KUBhC3ARIsACIwxBg_zP0EJ_37o9dh6XZq4Fl1O4SxaJXWF_yoFe7KxsJw0uhVbydZERYaAopAEALw_wcB" class="btn2">book now</a>
         </div>
      </div>
      
      <div class="box">
         <div class="image">
            <img src="./images/img11.jpg" alt="">
         </div>
         <div class="content" >
            <h3 >adventure & tour</h3>
            <p>Travel to your favourite palces and make new experiences with our new packages </p>
            <a href="https://www.viator.com/Negombo/d33888-ttd/p-152965P2?m=28353&supag=71427121115&supca=1939178107&supsc=dsa-648510825722&supai=420120885966&supdv=c&supnt=g&suplp=1009919&supli=&supti=dsa-648510825722&tsem=true&supci=dsa-648510825722&supap1=&supap2=&gclid=Cj0KCQjwm6KUBhC3ARIsACIwxBgl_3z-cXARY0ha1IJWZVPfQofqOJOI4kwPgRUKrUpOihjj8j8mcisaAiHmEALw_wcB" class="btn2"  id="1">book now</a>
         </div>
      </div>
   </div>
   
</section>
<!-- home packages section ends -->
   
   

<!------------------------------------- book a flight section starts  ----------------------------------->

<section class="booking" >

   <h1 class="heading-title">Book Your Flight</h1>

  <form action="filterflights.jsp" method="post" class="book-form"  style="width: 100%; opacity: 0.9;">
      <div class="flex">
      
                        <div class="form-group"  >
                      
                              <label for="roundtrip">
                                 <input type="radio" id="roundtrip" value="on" name="flight-type1" onclick="text(0)" checked>
                                 <span></span>Roundtrip
                              </label>
                              <label for="one-way">
                                 <input type="radio" id="one-way" value="off" name="flight-type1" onclick="text(1)">
                                 <span></span>One way
                              </label>
                           </div>
                        </div>

<div class="row">
                           <div class="col-md-6">
                        <div class="form-group">
                           <span class="form-label" style="font-weight: bold;
  
   font-size: 1.8rem;

   text-transform: none;
   margin-top: 1.5rem;
   border-radius: 15px; ">Flying from :</span>
                           <input class="form-control" type="text"  placeholder="Your location" name="flightfrom" style=" width: 100%;
   padding:1.2rem 1.4rem;
   font-size: 1.8rem;
color: var(--light-black);
   text-transform: none;
   margin-top: 1.5rem;
   border-radius: 10px; ">
                           
                        </div>
                     </div>
                  <div class="col-md-6">
                        <div class="form-group">
                            <span class="form-label" style="font-weight: bold;
  
   font-size: 1.8rem;

   text-transform: none;
   margin-top: 1.5rem;
  ">Flying to :</span>
                           <input class="form-control" placeholder="Your destination" name="flightto" type="text" style=" width: 100%;
   padding:1.2rem 1.4rem;
   font-size: 1.8rem;
color: var(--light-black);
   text-transform: none;
   margin-top: 1.5rem;
   border-radius: 10px; ">
                          
                        </div>
                     </div>
                  </div>
                        <div class="row">
                           <div class="col-md-6">
                              <div class="form-group">
                                  <span class="form-label" style="font-weight: bold; width: 100%;
  
   font-size: 1.8rem;

   text-transform: none;
   margin-top: 1.5rem;
   border-radius: 15px; ">Depart Date :</span>
                                 <input class="form-control" type="date" name="departdate"style=" width: 100%;
   padding:1.2rem 1.4rem;
   font-size: 1.8rem;
color: var(--light-black);
   text-transform: uppercase;
   margin-top: 1.5rem;
   border-radius: 10px; ">
                                
                              </div>
                           </div>
                           <div class="col-md-6">
                              <div class="form-group" id="mycode">
                                 <span class="form-label" style="font-weight: bold; width: 100%;
  
   font-size: 1.8rem;

   text-transform: none;
   margin-top: 1.5rem;
   border-radius: 15px; ">Return Date :</span>
                                 <input class="form-control" type="date" name="returndate" style=" width: 100%;
   padding:1.2rem 1.4rem;
   font-size: 1.8rem;
color: var(--light-black);
   text-transform: uppercase;
   margin-top: 1.5rem;
   border-radius: 10px; ">
                                 
                              </div>
                           </div>
                        </div>
                        
                     <center>
        <input type="submit" value="search" class="btn3" name="send">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <input type="rest" value="cancle" class="btn3" name="delete" id="2">
     </center> 
       </div>
   </form>
</section>




      <script src="js/jquery.min.js"></script>
         <script>
            $('.form-control').each(function () {
               floatedLabel($(this));
            });

            $('.form-control').on('input', function () {
               floatedLabel($(this));
            });

            function floatedLabel(input) {
               var $field = input.closest('.inputBox');
               if (input.val()) {
                  $field.addClass('input-not-empty');
               } else {
                  $field.removeClass('input-not-empty');
               }
            }
         </script>
<!-- book a flight section ends -->

   
 

    <!------------------------------------- flight status section starts  ----------------------------------->

<section class="booking" name="s3">

   <h1 class="heading-title">Flight Status</h1>

   <form action="flight_status.jsp" method="post" class="book-form" style="width: 100%;">
      <div class="flex">
         <div class="inputBox">
           
             <input type="text" placeholder="From" name="flightfrom" style="font-size: 15px;">
         </div>
          
         <div class="inputBox">
           
             <input type="text" placeholder="TO" name="flightto"style="font-size: 15px;">
         </div>
          
         <div class="col-md-6">
                           <div class="form-group-1">
                              <input type="radio" name="ffID1" value="1">
                              <b class="check"> Search By Only Flight ID</b> <br>
                              <input type="radio" name="ffID1" value="0">
                              <b class="check"> Search By Only From & To</b> <br>
                           </div>
                        </div>
          <div class="inputBox">
                <input type="text" placeholder="Flight ID" name="flightid" style="font-size: 15px;">
          </div>  
      </div>
      <div class="inputBox">
     <center>
        <input type="submit" value="search" class="btn3" name="send">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <input type="reset" value="cancle" class="btn3" name="delete">
     </center> 
      </div>
   </form>
</section>


 <script src="js/jquery.min.js"></script>
      <script>
         $('.form-control').each(function () {
            floatedLabel($(this));
         });

         $('.form-control').on('input', function () {
            floatedLabel($(this));
         });

         function floatedLabel(input) {
            var $field = input.closest('.form-group');
            if (input.val()) {
               $field.addClass('input-not-empty');
            } else {
               $field.removeClass('input-not-empty');
            }
         }
      </script>

<!-- flight status section ends -->


 <section class="home">

         <div class="swiper-slide slider" style="background:url(images/icon-9.jpg) no-repeat">
            <div class="con">
               <h3>Best offers with Phoenix Airlines</h3>
               <h5>Discover a range of package deals with us including hotel offers</h5><h5> Special rates for charter flights,yachts and exclusive spas</h5>
               <a href="https://www.sotc.in/world-tour-packages" class="btn">find more</a>
            </div>
         
   </div>
 </section>        

<!-- services section starts  -->

<section class="services">

   <h1 class="heading-title"> our services </h1>

   <div class="box-container">

      <a href=""><div class="box">
         <img src="images/icon-8.png" alt="">
         <h3>support</h3>
      </div></a>
      <a href="#1"><div class="box">
         <img src="images/icon-7.png" alt="" >
         <h3>flight booking</h3>
      </div></a>
      <a href="#2"><div class="box">
         <img src="images/icon-10.png" alt="">
         <h3>check status</h3>
      </div></a>

      <a href="https://www.wildlifetourssrilanka.com"><div class="box">
         <img src="images/icon-2.png" alt="">
         <h3>tour guide</h3>
      </div></a>

      

      

   </div>

</section>

<!-- services section ends -->


<!------------------------- home offer section starts  ----------------------------------------->

<section class="home-offer">
   <div class="content">
      <h3>upto 25% off</h3>
      <p>Inflight duty free pre orders will be entitled for upto 25% discount! Search now and and enjoy more offers from Phoenix Airline. Valid till 31st of december.</p>
      <a href="#1" class="btn4">book now</a>
   </div>
</section>

<!-- home offer section ends -->



<!------------------------------- footer section starts  ----------------------------------------->


<section class="footer">

   <div class="box-container">

      <div class="box">
         <h3>About us</h3>
          <p class="p1">At Phonex airlines, we believe in putting our extensive resources to good use by contributing to the communities we touch. Through our philanthrophic efforts and local presence, we're working to better the lives of those around us.</p>
              
              <p class="p1">Contact Number: 078-5568889</p> 
      </div>

      <div class="box">
         <h3>quick links</h3>
         <a href="#home"> <i class="fas fa-angle-right"></i> home</a>
         <a href="#1"> <i class="fas fa-angle-right"></i> book a flight</a>
         <a href="#2"> <i class="fas fa-angle-right"></i> flight status</a>
         <a href="#profile"> <i class="fas fa-angle-right"></i> profile</a>
      </div>

      <div class="box">
          <h3>Services</h3>
         <a href="https://www.holidaypark.lk"> <i class="fas fa-angle-right"></i> Sri lankan holidays</a>
         <a href="https://lk.lakpura.com/pages/food"> <i class="fas fa-angle-right"></i> sri lankan catering</a>
         <a href="#"> <i class="fas fa-angle-right"></i> online chat support</a>
      </div>

      <div class="box">
         <h3>follow us</h3>
         <a href="https://www.facebook.com"> <i class="fab fa-facebook-f"></i> facebook </a>
         <a href="https://twitter.com/i/flow/login"> <i class="fab fa-twitter"></i> twitter </a>
         <a href="https://www.instagram.com/accounts/login/"> <i class="fab fa-instagram"></i> instagram </a>
         <a href="https://www.linkedin.com/login"> <i class="fab fa-linkedin"></i> linkedin </a>
      </div>

   </div>
   <div >
              <a href="#home"><center><img src="./images/navlogopng.png" height="70px" width="155px"></center></a>
            </div> 

   <div class="credit"> 2022 &#169; Sri Lankan IT Systems </div>

</section>

<!-- footer section ends -->

<!-- swiper js link  -->
<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

<!-- custom js file link  -->
<script src="./js/js_home.js"></script>



</body>
</html>