

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
                  
                     <ul class="nav navbar-nav">
                     
                      <!--    <li class="active"><a href="#">Home</a></li>   -->
                     
                         <li><a href="Profile">Profile</a></li>
                     
                        <!-- <li><a href="#">Messages</a></li>-->
                     
                     </ul>
                   

               </div>
            </div>
         </nav>

        <div class="container">  
            </br>
            <div class="WhiteWindow">
           
  <div class="row">
    <!-- left column -->
    <div class="col-md-4 col-sm-6 col-xs-12">
      <div class="text-center">
        <img src="<%= session.getAttribute("path") %>" class="avatar img-circle img-thumbnail img-responsive"  >
       <!--  <h6>Upload a different photo...</h6>
        <input type="file" class="text-center center-block well well-sm">-->
      </div>
    </div>
    <!-- edit form column -->
    <div class="col-md-8 col-sm-6 col-xs-12 personal-info">  
      <h3>Korisnicke informacije</h3>
      <form class="form-horizontal" role="form">
        <div class="form-group">
          <label class="col-lg-3 control-label">Ime:</label>
          <div class="col-lg-8">
            <input class="form-control" value="<%= session.getAttribute("name") %>" disabled="disabled" type="text">
          </div>
        </div>
        <div class="form-group">
          <label class="col-lg-3 control-label">Prezime:</label>
          <div class="col-lg-8">
            <input class="form-control" value="<%= session.getAttribute("surname") %>" disabled="disabled" type="text">
          </div>
        </div>
           <div class="form-group">
          <label class="col-md-3 control-label">Korisnicko ime:</label>
          <div class="col-md-8">
              <input class="form-control" value="<%= session.getAttribute("username") %>" disabled="disabled" type="text">
          </div>
        </div>
        <div class="form-group">
          <label class="col-lg-3 control-label">Telefon</label>
          <div class="col-lg-8">
              <div class="col-md-9" style="padding-left:0">
                   <input class="form-control" value="<%= session.getAttribute("phone") %>" disabled="disabled" type="text">
              </div>
                <div class="col-md-3" >                                            
                    <a href="changePhone.jsp" class="btn btn-default">Promeni</a>                 
              </div>
          </div>
        </div>
              <div class="form-group">
          <label class="col-lg-3 control-label">Telefon</label>
          <div class="col-lg-8">
              <div class="col-md-9" style="padding-left:0">
                   <input class="form-control" value="<%= session.getAttribute("phone") %>" disabled="disabled" type="text">
              </div>
                <div class="col-md-3" >                                            
                    <a href="changePhone.jsp" class="btn btn-default">Promeni</a>                 
              </div>
          </div>
        </div>
        
         <div class="form-group">
          <label class="col-md-3 control-label">Lozinka</label>
          <div class="col-md-8">
              <div class="col-md-9" style="padding-left:0">
                 <input class="form-control" value="<%= session.getAttribute("password") %>" disabled="disabled" type="text">
              </div>
                <div class="col-md-3" >                              
                    <a href="changePassword.jsp" class="btn btn-default">Promeni</a>          
              </div>
          </div>
        </div>
      </form>
              <form action="AddAd.jsp" method="post">                          
                              <input type="submit" value="Dodaj novi oglas" class="btn btn-default">  <br>    
                              </form> 
                              
                              <form action="DelAllAd" method="post">                          
                              <input type="submit" value="Obrisi sve oglase" class="btn btn-default">  <br>    
                              </form> 
                              
    </div>
  </div>

            </div>
                          
                         
           </div>
             </div>
        </div>

      <script src="Scripts/jQuery 3.0.0.js"></script>
      <script src="Scripts/bootstrap.js"></script>

      
   </body>
</html>

