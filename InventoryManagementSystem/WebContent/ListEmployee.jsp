<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ListEmp</title>
</head>
<body>
	
	<br><h1 align="center">Employee List</h1><br><br>
			<table class="table table-hover table-fixed">
				<tr>
					<th>Employee ID</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Password</th>
					<th>Phone</th>
					<th>Address</th>
					<th>Role</th>
					
				</tr>
				<c:forEach var="emp" items="${empDetails}">
				
				<c:set var="empid" value="${emp.empid}"/>
				<c:set var="firstname" value="${emp.firstname}"/>
				<c:set var="lastname" value="${emp.lastname}"/>
				<c:set var="email" value="${emp.email}"/>
				<c:set var="password" value="${emp.password}"/>
				<c:set var="phone" value="${emp.phone}"/>
				<c:set var="address" value="${emp.address}"/>
				<c:set var="role" value="${emp.role}"/>
				
				<c:url value="UpdateEmployee.jsp" var="updateEmp">
				<c:param name="empid" value="${empid}"/>
				<c:param name="firstname" value="${firstname}"/>
				<c:param name="lastname" value="${lastname}"/>
				<c:param name="email" value="${email}"/>
				<c:param name="password" value="${password}"/>
				<c:param name="phone" value="${phone}"/>
				<c:param name="address" value="${address}"/>
				<c:param name="role" value="${role}"/>
				
				</c:url>
				<c:url value="DeleteEmployee.jsp" var="deleteEmp">
				<c:param name="empid" value="${empid}"/>
				<c:param name="firstname" value="${firstname}"/>
				<c:param name="lastname" value="${lastname}"/>
				<c:param name="email" value="${email}"/>
				<c:param name="password" value="${password}"/>
				<c:param name="phone" value="${phone}"/>
				<c:param name="address" value="${address}"/>
				<c:param name="role" value="${role}"/>
				
				</c:url>
				
				<tr>
					<td>${emp.empid}</td>
					<td>${emp.firstname}</td>
					<td>${emp.lastname}</td>
					<td>${emp.email}</td>
					<td>${emp.password}</td>
					<td>${emp.phone}</td>
					<td>${emp.address}</td>
					<td>${emp.role}</td>
					<td>
					<a href="${updateEmp}">
					<input type="button" value="Update" class="btn btn-warning">
					</a>
					</td>
					<td>
					<a href="${deleteEmp}">
					<input type="button" value="Delete" class="btn btn-danger">
					</a>
					</td>
				</tr>
				
				</c:forEach>
				</table>
				
				
				
		
	
</body>
</html>