

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
                             <h3>Registrujte se!</h3>
                             <p>Unesite potrebne podatke za prijavu:</p>
                         </div>
                         <div class="form-top-right">
                             <i class="fa fa-lock"></i>
                         </div>
                     </div>
                 <form action="Register" method="post">
                     <div class="form-bottom">
                         <div class="form-group">
                             <label class="sr-only" for="form-name"> Ime </label>
                                 <input type="text" placeholder="Unesite vase ime..." class="form-username form-control" id="name" name="name">
                         </div>
                        <div class="form-group">
                                 <label class="sr-only" for="form-Surname">Prezime</label>
                                 <input type="text" placeholder="Unesite vase prezime.." class="form-username form-control" id="Surename" name="surname">
                        </div>
                         <div class="form-group">
                                 <label class="sr-only" for="form-username">Korisnicko ime</label>
                                 <input type="text" placeholder="Unesite vase korisnicko ime..." class="form-username form-control" id="username" name="username">
                             </div>
                         <div class="form-group">
                                 <label class="sr-only" for="form-password">Password </label>
                                 <input type="text" placeholder="Unesite vas pasword" class="form-username form-control" id="password" name="password">
                             </div>
                         <div class="form-group">
                                 <label class="sr-only" for="form-RePassword">RePassword </label>
                                 <input type="text" placeholder="Ponovo unesite vas pasword" class="form-username form-control" id="repassword" name="repassword">
                         </div>
                         
                          <div class="form-group">
                                 <label class="sr-only" for="form-Phone">Phone</label>
                                 <input type="text" placeholder="Unesite broj telefona" class="form-username form-control" id="phone" name="phone">
                          </div>                      
                         
                         <div class="form-group">
                                 <label class="sr-only" for="form-email">Email</label>
                                 <input type="text" placeholder="Unesite vas Email" class="form-username form-control" id="email" name="email">
                          </div>
                         <input type="submit" value="Kreiraj!" class="btn btn-default">  <br>    
                     </div>
               </form>     
             </div>
        </div>

      <script src="Scripts/jQuery 3.0.0.js"></script>
      <script src="Scripts/bootstrap.js"></script>

      
   </body>
</html>

