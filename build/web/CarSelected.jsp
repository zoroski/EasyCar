<%@page import="Model.Cars"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>EasyCar</title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
      <link href="css/bootstrap/bootstrap-datetimepicker.css" rel="stylesheet" />
      <link href="css/Site.css" rel="stylesheet" />
      <link href="css/CustomNavBar.css" rel="stylesheet" />
      <link href="css/star-rating.css" rel="stylesheet" type="text/css"/>
      <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
     
   
   <body >
      <div class="">
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
                  <a href="#" class="navbar-brand"> ${Cars.Id}</a>
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
                  
                   
                    <div id="myCarousel" class="carousel slide" data-ride="carousel" >
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                           <c:forEach items="${Counter}" var="imgCount">
                              <c:if test="${not (imgCount eq '0')}">
                                  <li data-target="#myCarousel" data-slide-to="${imgCount}" ></li>
                            </c:if>
                                    <c:if test="${imgCount eq '0'}">
                                <li data-target="#myCarousel" data-slide-to="${imgCount}" class="active"></li>
                            </c:if>                              
                            </c:forEach>
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner" id="myDiv">
                              <c:forEach items="${GaleryList}" var="img" varStatus="stat">
                                <div class="item ${stat.first ? '' : 'active'}">
                                    <img class="img-responsive" src="${img.path}">
                                </div>
                              </c:forEach>
                        </div>
                      
                        <!-- Left and right controls -->
                        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                          <span class="glyphicon glyphicon-chevron-left"></span>
                          <span class="sr-only">Previous</span>
                        </a>
                        <a class="right carousel-control" href="#myCarousel" data-slide="next">
                          <span class="glyphicon glyphicon-chevron-right"></span>
                          <span class="sr-only">Next</span>
                        </a>
                      </div>
                    <div class="container" style="margin-top: 10px;">
           
                <div class="WhiteWindow" style="height: auto;  margin-left:40px; margin-right: 40px; ">
                    <div class="row">
                       <div class="col-md-8">
                        <div class="row section">
                             <div class="col-md-2">Vozilo:</div>
                        <div class="col-md-10">
                            <h3  style="display: inline;  text-transform: uppercase;">  ${Car.brand} </h3><strong> ${Car.year}</strong>
                            <!-- <div class="row">
                                <table>
                                <tr>
                                  <td style="padding-right:10px">
                                    <label for="input-3" class="control-label">Likes</label>
                                  </td>
                                  <td>
                                    <input id="input-3" name="input-3" value="4" class="rating-loading">
                                  </td>
                                </tr>
                              </table>
                        </div> !-->
                        </div>
                        </div>
                       <div class="row section">
                        <div class="col-md-2">Opis:</div>
                        <div class="col-md-10" style="text-align: justify">
                            <p>
                               ${Car.description}
                            </p>
                        </div>
                        
                       </div>
                         <div class="row section">
                        <div class="col-md-2">Oprema:</div>
                        <div class="col-md-10" style="text-align: justify">
                            <p>
                                ${Car.features}
                            </p>
                        </div>
                       </div>
                           <hr>
                            <div class="row section">
                                <div class="col-md-2">Utisci</div>
                                <div class="col-md-10" style="padding-left:0;">
                                    <c:forEach items="${ReviewsList}" var="Reviews">
                                    <div class="row Reviewcar" >
                                        <div class="col-md-2">
                                            <img src="${Reviews.avatarPath}" class="img img-circle img-responsive" alt=""/>
                                        </div>
                                        <div class="col-md-10">                                        
                                               <p>${Reviews.text}</p>                                   
                                    <div class="col-md-6" style="margin-left: 0; padding-left: 0;">
                                        <a href="">
                                            ${Reviews.name} ${Reviews.surname}
                                        </a>
                                    </div>
                                      <div class="col-md-6 right" style="margin-left: 0; padding-left: 0; text-align: right;">
                                         <span class="text-info" >20/11/2017</span>
                                     </div>
                                        </div>
                                    </div>
                                  </c:forEach>
                                    <br>
                                    <div class="row col-md-12 text-right" >
                                        <% if (session.getAttribute("UserName") == null) { %>
                                        <span class="text-danger">Morate biti ulogovani da bi ste dodali komentar!<span>
                                        <% } else {%>
                                          <form action="AddReview" method="post">
                                         <textarea name="review" cols="40" class="form-control" rows="5"></textarea>
                                         <input type="hidden" name="userId" value="<%= session.getAttribute("Id") %>">
                                         <input type="hidden" name="carId" value="${Car.id}">
                                         <br>${Car.id}
                                         <input type="submit" value="Postavi utisak" class="btn btn-info">
                                        </form>
                                        <% } %> 
                                </div>
                                    
                                </div>
                       </div>
                    </div>
                    <div class="col-md-4">
                        <div class="center-block">
                            <div class="text-center Circle">
                            <span style="margin-left: -10px;"> ${Car.price}e<span>
                        </div>
                        </div>
                        <br>
                        <div class="row" style="margin-top: 15px;">
                             <div class="col-md-12">
                        <span>Pocetak izdavanja: </span>
                        <div class="form-group">
                           <div class='input-group date' id='datetimepickerStart'>
                            <input type='text' class="form-control" />
                            <span class="input-group-addon">
                            <span class="glyphicon glyphicon-calendar">
                            </span>
                            </span>
                           </div>
                        </div>
                      
                        <span>Kraj izdavanja: </span>
                        <div class="form-group">
                           <div class='input-group date' id='datetimepickerEnd'>
                            <input type='text' class="form-control" />
                            <span class="input-group-addon">
                            <span class="glyphicon glyphicon-calendar">
                            </span>
                            </span>
                           </div>
                        </div>
                        <br>
                        <span>Mesto nalazenja: </span>
                         <div class="form-group">
                        <input class="placepicker form-control" placeholder="Drzava,Grad"/>
                     </div>
                    </div>
                        </div>
                        <div class="row center-block">
                            <input type="button" class="btn btn-info col-md-12" value="Iznajmi vozilo">
                        </div>
                        <hr>
                        <div class="col-md-12" style="padding-left: 0;">
                                <div class="col-md-6 left">
                                <div class="row">
                                    VLASNIK:
                                </div>
                                <div class="row" >
                                 ${User.surname}  ${User.name}
                                </div>
                                <br>
                                <div class="row">
                                    <input type="button" class="btn btn-info" value="Posalji poruku" />
                                </div>
                                </div>
                                <div class="col-md-6 right">
                                    <img src="${User.imgPath}" class="img img-responsive img-circle" >
                                </div>
                        </div>
                                
                    </div>
                    </div>
                </div>
           
         </div>

    
   
      <script src="https://npmcdn.com/tether@1.2.4/dist/js/tether.min.js"></script>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      <script src="Scripts/bootstrap-datetimepicker.js"></script>
      <script src="Scripts/jquery.placepicker.js"></script>
      <script src="Scripts/star-rating.js" type="text/javascript"></script>
      <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDkbm_UN3pQI_lroo0SJeMX8esweyfcAPs&callback=initMap"
  type="text/javascript"></script>
      <script type="text/javascript">
          $(document).on('ready', function(){
                $('#input-3').rating({displayOnly: true, step: 0.5});
                
                
            });
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


