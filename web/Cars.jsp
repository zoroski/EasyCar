
<%@ page contentType="text/html; charset=iso-8859-1" language="java" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
   <head>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>EasyCar</title>
      <script src="https://s.codepen.io/assets/libs/modernizr.js" type="text/javascript"></script>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
      <link href="css/bootstrap/bootstrap.css" rel="stylesheet" />
      <link href="css/bootstrap/bootstrap-datetimepicker.css" rel="stylesheet" />
      <link rel='stylesheet prefetch' href='css/gubja.css'>
      <link rel='stylesheet' href='css/Formstyle.css'>
      <link href="css/Site.css" rel="stylesheet" />
      <link href="css/CustomNavBar.css" rel="stylesheet" />
      <link href="css/highlightjs-github-theme.css" rel="stylesheet" type="text/css"/>
      <link href="css/bootstrap-slider.css" rel="stylesheet" type="text/css"/>
   </head>
   <body>
      <nav class="navbar navbar-default" style="margin-bottom:0px; border-radius:0">
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
                  <li><a href="#">Login</a></li>
               </ul>
            </div>
         </div>
      </nav>
        <form action="SearchCars" method="get" >
      <div class="formTop" id="formHighlight">
         <div class="container" style="padding-left:0; padding-right:0">
            <div class="form-inline " style="margin-bottom:0px;">
               <div class="form-group col-md-3">
                  <div class="input-group " id="exampleInputEmail1"  style="width: 100%">
                     <input type='text' name="Location" class="form-control navTop placepicker whiteColor" placeholder=""  />
                     <span class="form-highlight"></span>
                     <span class="form-bar"></span>
                     <label class="float-label " for="exampleInputEmail1">Unesite lokaciju</label>
                     <span class="input-group-addon">
                     <span class="glyphicon glyphicon-calendar hidden">
                     </span>
                     </span>
                  </div>
               </div>
               <div class="form-group col-md-3">
                  <div class='input-group date' name="DateStart" id='datetimepickerStart' style="width: 100%">
                     <input type='text'name="DateStart" class="form-control navTop whiteColor"  />
                     <span class="form-highlight"></span>
                     <span class="form-bar"></span>
                     <label class="float-label" for="exampleInputEmail1">Pocetak izdavanja</label>
                     <span class="input-group-addon">
                     <span class="glyphicon glyphicon-calendar hidden">
                     </span>
                     </span>
                  </div>
               </div>
               <div class="form-group col-md-3">
                  <div class='input-group date' name="DateEnd" id='datetimepickerEnd' style="width: 100%">
                     <input type='text' name="DateEnd" class="form-control navTop whiteColor"  />
                     <span class="form-highlight"></span>
                     <span class="form-bar"></span>
                     <label class="float-label" for="exampleInputEmail1">Kraj izdavanja</label>
                     <span class="input-group-addon">
                     <span class="glyphicon glyphicon-calendar hidden">
                     </span>
                     </span>
                  </div>
               </div>
               <div class="col-md-3"> <br>
                  <button type="submit" style="width: 100%" class="btn btn-default">Trazi</button>
               </div>
            </div>
         </div>
      </div>
      <div class="container" style="margin-top:15px;">
          <div class="col-md-3 leftNavigation" style="padding-left:0px;">
             <div class="WhiteWindow">
                <div class="form-group">
                <br>
                <span for="sel2">Marka automobila:</label>
                <select class="form-control" name="Brand">
                     <option value="">- Select -</option>
                  <option value="Acura">
                     Acura
                  </option>
                  <option value="Adria">
                     Adria
                  </option>
                  <option value="Alfa Romeo">
                     Alfa Romeo
                  </option>
                  <option value="AM General">
                     AM General
                  </option>
                  <option value="Aston Martin">
                     Aston Martin
                  </option>
                  <option value="Audi">
                     Audi
                  </option>
                  <option value="Bentley">
                     Bentley
                  </option>
                  <option value="BMW">
                     BMW
                  </option>
                  <option value="Buick">
                     Buick
                  </option>
                  <option value="Cadillac">
                     Cadillac
                  </option>
                  <option value="Chevrolet">
                     Chevrolet
                  </option>
                  <option value="Chrysler">
                     Chrysler
                  </option>
                  <option value="Citroen">
                     Citroen
                  </option>
                  <option value="Dacia">
                     Dacia
                  </option>
                  <option value="Dodge">
                     Dodge
                  </option>
                  <option value="Ferrari">
                     Ferrari
                  </option>
                  <option value="FIAT">
                     FIAT
                  </option>
                  <option value="Fisker">
                     Fisker
                  </option>
                  <option value="Ford">
                     Ford
                  </option>
                  <option value="Genesis">
                     Genesis
                  </option>
                  <option value="Geo">
                     Geo
                  </option>
                  <option value="GMC">
                     GMC
                  </option>
                  <option value="Honda">
                     Honda
                  </option>
                  <option value="HUMMER">
                     HUMMER
                  </option>
                  <option value="Hyundai">
                     Hyundai
                  </option>
                  <option value="Infiniti">
                     Infiniti
                  </option>
                  <option value="Isuzu">
                     Isuzu
                  </option>
                  <option value="Jaguar">
                     Jaguar
                  </option>
                  <option value="Jeep">
                     Jeep
                  </option>
                  <option value="Kia">
                     Kia
                  </option>
                  <option value="Lamborghini">
                     Lamborghini
                  </option>
                  <option value="Land Rover">
                     Land Rover
                  </option>
                  <option value="Lexus">
                     Lexus
                  </option>
                  <option value="Lincoln">
                     Lincoln
                  </option>
                  <option value="Lotus">
                     Lotus
                  </option>
                  <option value="Maserati">
                     Maserati
                  </option>
                  <option value="Mazda">
                     Mazda
                  </option>
                  <option value="McLaren">
                     McLaren
                  </option>
                  <option value="Mercedes-Benz">
                     Mercedes-Benz
                  </option>
                  <option value="Mercury">
                     Mercury
                  </option>
                  <option value="MG">
                     MG
                  </option>
                  <option value="MINI">
                     MINI
                  </option>
                  <option value="Mitsubishi">
                     Mitsubishi
                  </option>
                  <option value="Morris">
                     Morris
                  </option>
                  <option value="Nissan">
                     Nissan
                  </option>
                  <option value="Oldsmobile">
                     Oldsmobile
                  </option>
                  <option value="Opel">
                     Opel
                  </option>
                  <option value="Peugeot">
                     Peugeot
                  </option>
                  <option value="Plymouth">
                     Plymouth
                  </option>
                  <option value="Polaris">
                     Polaris
                  </option>
                  <option value="Pontiac">
                     Pontiac
                  </option>
                  <option value="Porsche">
                     Porsche
                  </option>
                  <option value="Pursuit Special">
                     Pursuit Special
                  </option>
                  <option value="Ram">
                     Ram
                  </option>
                  <option value="Renault">
                     Renault
                  </option>
                  <option value="Rolls-Royce">
                     Rolls-Royce
                  </option>
                  <option value="Saab">
                     Saab
                  </option>
                  <option value="Saturn">
                     Saturn
                  </option>
                  <option value="Scion">
                     Scion
                  </option>
                  <option value="SEAT">
                     SEAT
                  </option>
                  <option value="Skoda">
                     Skoda
                  </option>
                  <option value="smart">
                     smart
                  </option>
                  <option value="Subaru">
                     Subaru
                  </option>
                  <option value="Sunbeam">
                     Sunbeam
                  </option>
                  <option value="Suzuki">
                     Suzuki
                  </option>
                  <option value="Tesla">
                     Tesla
                  </option>
                  <option value="Toyota">
                     Toyota
                  </option>
                  <option value="Triumph">
                     Triumph
                  </option>
                  <option value="Vauxhall">
                     Vauxhall
                  </option>
                  <option value="Volkswagen">
                     Volkswagen
                  </option>
                  <option value="Volvo">
                     Volvo
                  </option>
                  <option value="VPG">
                     VPG
                  </option>
                  <option value="Yugo">
                     Yugo
                  </option>
                  <option value="ZAP">
                     ZAP
                  </option>
                </select>
             </div>
             <br>
                <div class="form-group">
                <span for="year">Godina automobila:</label>
                <select class="form-control" name="Year">   
                    <% for(int i=2017;i>=1991;i--)
                        {
                        %>
                         <option value="<%=i %>">
                          <%=i %>
                         </option>
                        <%} %>
                </select>
                </div>
                <br>
             <span>Cena od:</span>
             <input name="Price" id="Price" data-slider-id='ex1Slider' type="text" data-slider-min="0" data-slider-max="300" data-slider-step="1" data-slider-value="14"/>
             <br>
             <input type="submit" value="Pretrazi">
             </div>
         </div>
          <div class="col-md-9">
              <div class="row">
                  <div class="SearchInfoBar">
                      Nadjeno 1 oglasa
                  </div>
                  <c:forEach items="${Cars}" var="car"> 
                  <div class="row">                     
                       <div class="CarBox" >
                        <div class="imgTop">
                          <a href='Car?Id=${car.id}'><img src="${car.img}"  width="100%" height="400px"/></a>
                           <div class="BottomInfo">
                               <div class="left BottomInfoLeft">
                                   <h4 style="display: inline;">${car.brand}</h4> <strong>${car.year}</strong>
                               </div>
                                 <div class="left BottomInfoRight">
                                     ${car.price}
                               </div>
                           </div>
                      </div>                 
                  </div>
                   <br>        
                  </div>
                  </c:forEach>    
              </div>
          </div>
      </div>
        </form>
      </div>
      <script src="Scripts/jQuery 3.0.0.js"></script>
      <script src="Scripts/bootstrap.js"></script>
      <script src="Scripts/bootstrap-datetimepicker.js"></script>
      <script src="Scripts/jquery.placepicker.js"></script>
      <script src="Scripts/inputForms.js"></script>
      <script src='Scripts/gubja.js'></script>
      <script src="https://maps.googleapis.com/maps/api/js?libraries=places&key=AIzaSyAzVWCflbi3THnJWbGjIU8eb3MN6Z9LfBI"></script>
      <script src="Scripts/index.js"></script>
      <script src="Scripts/bootstrap-slider.js" type="text/javascript"></script>
      <script src="Scripts/highlight.min.js" type="text/javascript"></script>
      <script type="text/javascript">
       $("#ex8").slider({
	tooltip: 'always'
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
           
            var slider = new Slider('#Price', {
                    formatter: function(value) {
                            return 'Current value: ' + value;
                    }
            });
      </script>
   </body>
</html>

