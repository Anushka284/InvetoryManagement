<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<title>Update Employee</title>
</head>
<body>

	<% 
		String empid = request.getParameter("empid");
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String role = request.getParameter("role");
	%>
	<form action="Update" method="post">
	<h1 align="center">Update Employee</h1><br><br>
	<div class="form-group col-md-4">
      <label>Employee Id</label>
      <input type="text" class="form-control" name="empid" value="<%=empid %>" readonly>
    </div>
	<div class="form-group col-md-4">
      <label>First Name</label>
      <input type="text" class="form-control" name="firstname" value="<%=firstname %>">
    </div>
    <div class="form-group col-md-4">
      <label>Last Name</label>
      <input type="text" class="form-control" name ="lastname" value="<%=lastname %>">
    </div>

  <div class="form-group col-md-4">
    <label>Email</label>
    <input type="email" class="form-control" name="email" value="<%=email %>">
  </div>
  <div class="form-group col-md-4">
    <label >Password</label>
    <input type="password" class="form-control" name="password" value="<%=password %>">
  </div>
  <div class="form-group col-md-4">
      <label for="inputCity">Phone</label>
      <input type="text" class="form-control" name="phone" value="<%=phone %>">
    </div>
    <div class="form-group col-md-4">
      <label >Address</label>
      <input type="text" class="form-control" name="address" value="<%=address %>">
    </div>
     <div class="form-group col-md-4">
      <label >Role</label>
      <input type="text" class="form-control" name="role" value="<%=role %>">
    </div><br><br>
 <div class="form-group col-md-6">
     <button type="submit" name="submit" class="btn btn-primary">Update</button>
    </div>
	</form>
</body>
</html>