<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
   <style type="text/css">
.errStyle {
	color:red;
	font-style: italic;
	font-weight: bold;
}
</style>
</head>
<body>
<div class="container">
<%@ include file="header.jsp" %>
<form role="form" action="register" >
<div class="form-group">
 	<label  >
				Customer Name
	</label>
	<input class="form-control"  />
		
 </div>
  <div class="form-group">
 	<label  >
				User Name
	</label>
	<input class="form-control" />
		
 </div>
 <div class="form-group">
 	<label  >
				Password
	</label>
	<input type="password" class="form-control"  />
		
 
  </div>
  <div class="form-group">
 	<label  >
				Email
	</label>
	<input class="form-control"/>
 </div>
  <div class="form-group">
 	<label >
				Phone Number
	</label>
	<input class="form-control"/>
		
 </div>

  <div class="form-group">
 	<label >
				Address
	</label>
	<input class="form-control"  />
		
 </div> 
 
  <button type="submit" class="btn btn-default">Submit</button>
</form>
<%@ include file="footer.jsp" %>
</div>

</body>
</html>