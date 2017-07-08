<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sahar Shopping</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
  <script src="<c:url value='/resources/js/AngularjsController.js'/>"></script>
    <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width:100%;
      height:300px;
      margin: auto;
  }
  </style>
</head>
<body>
<div class="container">
<%@ include file="header.jsp" %>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    

    <div class="item active">
      <img src="<c:url value='/resources/images/laptop.jpg'/>" alt="Laptop">
    </div>

    <div class="item">
      <img src="<c:url value='/resources/images/watches.jpg'/>" alt="Watches">
    </div>

    <div class="item">
      <img src="<c:url value='/resources/images/pendrive.jpg'/>" alt="Camera">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<div style="height:30px; "></div>
<div class="row">
  <div class="col-sm-4">
  <a href="disp?id=1">
   <img height="200px" width="200px" src="<c:url value="/resources/images/watch1.png"/>" alt="Watches">
  </a>
  <br/>
  
  <h3>
 
WATCHES

   </h3>
  
  </div>
  <div class="col-sm-4">
  <a href="disp?id=2">
  	 <img height="200px" width="200px" src="<c:url value="/resources/images/transcend.jpg"/>" alt="Laptop">
  </a>
    <br/>
  
  <h3>
  
PENDRIVES
  
   </h3>
  
  </div>
  <div class="col-sm-4">
    <a href="disp?id=3">
  	 <img height="200px" width="300px" src="<c:url value="/resources/images/macbook.jpg"/>" alt="Laptops">
  </a>  <br/>
  
  <h3>
  
LAPTOPS
  
   </h3>
  
  </div>
</div>
<%@ include file="footer.jsp" %>
</div>
</body>
</html>