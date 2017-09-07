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
                  <a href="index.jsp" class="navbar-brand">EasyCar</a>
               </div>
               <!-- Collection of nav links and other content for toggling -->
               <div id="navbarCollapse" class="collapse navbar-collapse">
                
                         <ul class="nav navbar-nav navbar-right">
                      
                    <% if (session.getAttribute("UserName") == null) { %>
                      <li><a href="Login.jsp">Login</a></li>
                    <% } else {%>
                       <li><a href="#">Dobrodosao <%= session.getAttribute("UserName") %></a></li>
                       <li style="margin-top:10px;">
                           <form action="Logout" method="post">
                                <li><a href="Profile">Profile</a></li>
                                <li><a href="#">Messages</a></li>
                               <input type="submit" class="btn btn-default"  value="Logout" /></a>
                           </form>
                       </li>
                      
                    <% } %>
                    </ul>
               </div>
            </div>
         </nav>

        <div class="container">  
             <div class="row text-center" style="margin:50px auto;max-width:400px;"	>                
                    
                 
                  
                 
                 
                 <form action="Register" method="post">
                     <div class="form-bottom">
                         <div class="form-group">
                             <label class="sr-only" for="form-name">  </label>
                                <p><b> <h3>Uspesno dodat oglas</h3></b>
                         </div>
                   
                     </div>
               </form>     
             </div>
        </div>

      <script src="Scripts/jQuery 3.0.0.js"></script>
      <script src="Scripts/bootstrap.js"></script>

      
   </body>
</html>


