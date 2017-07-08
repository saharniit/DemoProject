<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<style>
  .msgblock {
 color: blue;
 background-color: lightgreen;
 border: 3px solid blue;
 padding: 8px;
}
.errStyle {
	color:red;
	font-style: italic;
	font-weight: bold;
	text-align: right;
}
  </style>
</head>
<body>
<div class="container">
<%@ include file="header.jsp" %>

<c:if test="${isAdmin}">
<c:if test="${not empty msg }">
   <div class="msgblock">
   <c:out value="${msg}" />
   </div>
 </c:if>
		<c:if test="${not editing}"> 
					<c:url var="saveorupdate" value="create"></c:url>
		</c:if>
		<c:if test="${editing}" >

				<c:url var="saveorupdate" value="edit"></c:url>
		</c:if>
		<div class="container" >
		
			<form action="${saveorupdate}" method="post"  >

				<table style="width: 50%; text-align: center;">
				<tr>
	                     	<th>
				                 <label>
					           Product  ID:
				                 </label>
		                   </th>
		                   <td>
								<input type="text" id="pid" class="form form-control" value="${prd.pid}"  name="pid" />
						   </td>
	               <tr>
	                     	<th>
				                 <label>
					           Product  Name:
				                 </label>
		                   </th>
		                   <td>
								<input  name="name" class="form form-control" value="${prd.name}"  />
						   </td>
				 </tr>	
	
				<tr>
					<th>
 						<label  >
						Price:
						</label>
					</th>
					<td>
 							<input  name="price" class="form form-control" value="${prd.price}" /> 
					</td>
     			</tr>
     
    			 <tr>
					<th>
 						<label >
						Category:
						</label>
					</th>
					<td>
						<select class="form form-control" value="${prd.category}"   name="category"   >
							<option value="Watches">Watches</option>
							<option value="Laptops">Laptops</option>
							<option value="Pendrives">Pendrives</option>
						</select>
					</td>
				</tr>
	
				<tr>	
					<th>
 							<label>
								Quantity:
							</label>
					</th>
					<td>	
							<input value="${prd.qty}"   name="qty" class="form form-control"  />
					</td>
    			</tr>
    			<tr>	
					<th>
 							<label>
								Description:
							</label>
					</th>
					<td>	
							<input value="${prd.description}"   name="description" class="form form-control"  />
					</td>
    			</tr>
    
    			<tr>
					<th>
 						<label >
						Image: 
						</label>
					</th>
					<td>
						<input value="${prd.image}"  type="text" class="form form-control"   name="file"  />
					</td>
    			</tr>
   
    			<tr>
					<th>  
						<c:if test="${not editing}" >
 
 							<button  class="btn btn-info"  type="submit" >Add Product</button>
						</c:if>
						<c:if test="${editing}" >
 
 							<button  class="btn btn-info"  type="submit" >Update Product</button>
						</c:if>

					</th>
				</tr>
				
	</table>

</form>

</div>
<br><br>

	</c:if>
			<table class="table table-striped;">
				<tr>
					<th>Image</th>
					<th>Name</th>
					<th>Price</th>
					<th>Action</th>
				</tr>
						<c:if test="${empty catId}">
				              <c:forEach var="product" items="${productList}" >
				<tr  >
					 <td><img alt="NO IMAGE" height="50px" width="50px" src="<c:url value='/resources/images/${product.image}'/>" /></td> 
					<td>${product.name}</td>
					<td>${product.price}</td>
	
	
	           <td>
						<c:if test="${isAdmin}">
								<a class="btn btn-primary"
									onclick="return confirm('Are you sure you want to edit this product?');"
									href="<c:url value='edit?pid=${product.pid}' />"> 
									<span class="glyphicon glyphicon-pencil" ></span> Edit
								</a>

								<a class="btn btn-primary"
									onclick="return confirm('Are you sure you want to delete this Category?');"
									href="<c:url value='delete?pid=${product.pid}' />"> 
									<span class="glyphicon glyphicon-trash" ></span> Delete
								</a>
								</c:if>
	   				
					<c:if test="${not(isAdmin)}">						
								<a class="btn btn-primary"
									href="#">
									 Add to Cart
								</a>
									
									
      				  </c:if>
                                 
     	                     </c:forEach>     
     	                     </c:if>
			
					<c:if test="${not empty category}">
						<c:forEach var="product" items="${productList}" >
							<c:if test="${product.category eq category}">
								<tr  >
									 <td><img alt="NO IMAGE" height="50px" width="50px" src="<c:url value='/resources/images/${product.image}'/>" /></td> 
									<td>${product.name}</td>
									<td>${product.price}</td>
	
									<td>
													
												<a class="btn btn-primary"
												href="<c:url value='/myCart/add/${product.pid}' />">
												 Add to MyCart
												</a>
       										
                                 
                                   </td>
                                 </tr>	 
							</c:if>
						</c:forEach>
					</c:if>
	
	</table>
	



<%@ include file="footer.jsp" %>
</div>
</body>
</html>