<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<title>User Account</title>
</head>
<body>
		<h1 align="center">Welcome to Home page</h1>
<form action="Insert" method="post">
	<div class="form-group col-md-4">
      <label>First Name</label>
      <input type="text" class="form-control" name="firstname" placeholder="FirstName">
    </div>
    <div class="form-group col-md-4">
      <label>Last Name</label>
      <input type="text" class="form-control" name ="lastname" placeholder="LastName">
    </div>

  <div class="form-group col-md-4">
    <label>Email</label>
    <input type="email" class="form-control" name="email" placeholder="Email">
  </div>
  <div class="form-group col-md-4">
    <label >Password</label>
    <input type="password" class="form-control" name="password" placeholder="Password">
  </div>
  <div class="form-group col-md-4">
      <label for="inputCity">Phone</label>
      <input type="text" class="form-control" name="phone" placeholder="phone">
    </div>
    <div class="form-group col-md-4">
      <label for="inputCity">Address</label>
      <input type="text" class="form-control" name="address" placeholder="Address">
    </div>
    <div class="form-group col-md-4">
      <label for="inputCity">Role</label>
      <input type="text" class="form-control" name="role" placeholder="Role">
    </div><br><br>
 <div class="form-group col-md-6">
     <button type="submit" class="btn btn-primary">Insert</button>
    </div>
    
</form>
		<div align="center">
		<form action="List" method="post"> 
		<div class="form-group col-md-6"><button name="list" class="btn btn-primary">Employee List</button>
		</div></form>
		</div>
</body>
</html>