<html>
   <head>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>EasyCar</title>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
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
                  <!-- 
                     <ul class="nav navbar-nav">
                     
                         <li class="active"><a href="#">Home</a></li>
                     
                         <li><a href="#">Profile</a></li>
                     
                         <li><a href="#">Messages</a></li>
                     
                     </ul>
                     -->
                  <ul class="nav navbar-nav navbar-right">
                      
                    <% if (session.getAttribute("UserName") == null) { %>
                      <li><a href="Login.jsp">Login</a></li>
                    <% } else {%>
                       <li><a href="#">Dobrodosao <%= session.getAttribute("UserName") %></a></li>
                       <li><a href="Profile">Profil</a></li>
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
                  <form action="SearchCars" method="get" class="form-inline" style="margin-bottom:0px;">
                     <div class="form-group">
                         <input type="text" name="Location" class="placepicker form-control" placeholder="Drzava,Grad"/>
                     </div>
                     <div class="form-group">
                        <div class='input-group date' id='datetimepickerStart'>
                            <input type='text' name="DateStart" class="form-control" />
                           <span class="input-group-addon">
                           <span class="glyphicon glyphicon-calendar">
                           </span>
                           </span>
                        </div>
                     </div>
                     <div class="form-group">
                        <div class='input-group date' id='datetimepickerEnd'>
                           <input type='text' name="DateEnd" class="form-control" />
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
     
     
     <script src="Scripts/jQuery 3.0.0.js"></script>
      <script src="Scripts/bootstrap.js"></script>
      <script src="Scripts/bootstrap-datetimepicker.js"></script>
      <script src="Scripts/jquery.placepicker.js"></script>
      <script src="Scripts/inputForms.js"></script>
      <script src='Scripts/gubja.js'></script>
      <script src="https://maps.googleapis.com/maps/api/js?libraries=places&key=AIzaSyAzVWCflbi3THnJWbGjIU8eb3MN6Z9LfBI"></script>
      <script src="Scripts/index.js"></script>
  <svript type="text/javascript"></script>
      <script type="text/javascript">
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

