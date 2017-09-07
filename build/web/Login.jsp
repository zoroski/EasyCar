

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

               </div>
            </div>
         </nav>

        <div class="container">  
             <div class="row text-center" style="margin:50px auto;max-width:400px;"	>                
                     <div class="form-top">
                         <div class="form-top-left">
                             <h3>Prijavite se!</h3>
                             <p>Unesite korisnicko ime i lozinku za prijavu:</p>
                         </div>
                         <div class="form-top-right">
                             <i class="fa fa-lock"></i>
                         </div>
                     </div>
                 <form action="Login" method="post">
                     <div class="form-bottom">
                             <div class="form-group">
                                 <label class="sr-only" for="form-username">Korisnicko ime</label>
                                 <input type="text" placeholder="Korisnicko ime..." class="form-username form-control" id="username" name="username">
                             </div>
                             <div class="form-group">
                                 <label class="sr-only" for="form-password">Lozinka</label>
                                 <input type="password"  placeholder="Lozinka..." class="form-password form-control" id="password" name="password">
                             </div>
                         <input type="submit" value="Prijava!" class="btn btn-default">  <br>    
                         <a
                     </div>
               </form>
                  <form action="Register.jsp" method="post">                          
                         <input type="submit" value="Kreiraj novi nalog" class="btn btn-default">  <br>    
                         
                  </form>
                 
               
                  
                <span class="text-danger"> <%= request.getAttribute("Message")%> </span>
             </div>
        </div>

      <script src="Scripts/jQuery 3.0.0.js"></script>
      <script src="Scripts/bootstrap.js"></script>

      
   </body>
</html>

