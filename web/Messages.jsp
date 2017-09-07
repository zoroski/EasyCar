<html>
   <head>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>EasyCar</title>
      <link href="css/bootstrap/bootstrap.css" rel="stylesheet" />
      <link href="css/bootstrap/bootstrap-datetimepicker.css" rel="stylesheet" />
      <link href="css/Site.css" rel="stylesheet" />
      <link href="css/CustomNavBar.css" rel="stylesheet" />
   </head>
   <body>
      <div class="full">
         <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container" style="margin-top:0px;">
               <!-- Brand and toggle get grouped for better mobile display -->
               <div class="navbar-header">
                  <button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
                  <span class="sr-only">Toggle navigation</span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  </button>
                  <a href="#" class="navbar-brand">EasyCar</a>
               </div>
               <!-- Collection of nav links and other content for toggling -->
               <div id="navbarCollapse" class="collapse navbar-collapse">
                  
                     <ul class="nav navbar-nav">
                     
                   <!--       <li class="active"><a href="#">Home</a></li>-->
                     
                         <li><a href="Profile.jsp">Profile</a></li>
                     
                         <li><a href="#">Messages</a></li>
                     
                     </ul>
                     
                  <ul class="nav navbar-nav navbar-right">
                      
                    <% if (session.getAttribute("UserName") == null) { %>
                      <li><a href="Login.jsp">Login</a></li>
                    <% } else {%>
                       <li><a href="#">Dobrodosao <%= session.getAttribute("UserName") %></a></li>
                       <li style="margin-top:10px;">
                           <form action="Logout" method="post">
                               <input type="submit" class="btn btn-default"  value="Logout" /></a>
                           </form>
                       </li>
                      
                    <% } %>

                    
                  </ul>
               </div>
            </div>
         </nav>
         <div class="header-content">
            <div class="header-content-inner ">
               <div class="inputGroup">
                  <form class="form-inline" style="margin-bottom:0px;">
                     <div class="form-group">
                        <input class="placepicker form-control" placeholder="Drzava,Grad"/>
                     </div>
                     <div class="form-group">
                        <div class='input-group date' id='datetimepickerStart'>
                           <input type='text' class="form-control" />
                           <span class="input-group-addon">
                           <span class="glyphicon glyphicon-calendar">
                           </span>
                           </span>
                        </div>
                     </div>
                     <div class="form-group">
                        <div class='input-group date' id='datetimepickerEnd'>
                           <input type='text' class="form-control" />
                           <span class="input-group-addon">
                           <span class="glyphicon glyphicon-calendar">
                           </span>
                           </span>
                        </div>
                     </div>
                     <button type="submit" class="btn btn-default">Trazi</button>
                  </form>
               </div>
            </div>
         </div>
      </div>
      <div class="neighborhood-guides">
         <div class="container">
            <h2>Lista vozila</h2>
            <div class="row">
               <div class="col-md-4">
                  <div class="thumbnail">
                  </div>
                  <div class="thumbnail">
                  </div>
               </div>
               <div class="col-md-4">
                  <div class="thumbnail">
                  </div>
                  <div class="thumbnail">
                  </div>
               </div>
               <div class="col-md-4">
                  <div class="thumbnail">
                  </div>
               </div>
            </div>
         </div>
      </div>
      <div class="learn-more">
         <div class="container">
            <div class="row">
               <div class="col-md-4">
                  <h3>Travel</h3>
                  <p>From apartments and rooms to treehouses and boats: stay in unique spaces in 192 countries.</p>
                  <p><a href="#">See how to travel on Airbnb</a></p>
               </div>
               <div class="col-md-4">
                  <h3>Host</h3>
                  <p>Renting out your unused space could pay your bills or fund your next vacation.</p>
                  <p><a href="#">Learn more about hosting</a></p>
               </div>
               <div class="col-md-4">
                  <h3>Trust and Safety</h3>
                  <p>From Verified ID to our worldwide customer support team, we've got your back.</p>
                  <p><a href="#">Learn about trust at Airbnb</a></p>
               </div>
            </div>
         </div>
      </div>
      <script src="Scripts/jQuery 3.0.0.js"></script>
      <script src="Scripts/bootstrap.js"></script>
      <script src="Scripts/bootstrap-datetimepicker.js"></script>
      <script src="Scripts/jquery.placepicker.js"></script>
      <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDkbm_UN3pQI_lroo0SJeMX8esweyfcAPs&callback=initMap"
  type="text/javascript"></script>
      <script type="text/javascript">
         // Basic usage
               $(".placepicker").placepicker();
               $(function () {
                   $('#datetimepickerStart').datetimepicker({
                       daysOfWeekDisabled: [0, 6]
                   });
               });
          $(function () {
                   $('#datetimepickerEnd').datetimepicker({
                       daysOfWeekDisabled: [0, 6]
                   });
               });
           
      </script>
   </body>
</html>

