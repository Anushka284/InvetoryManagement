package com.Admin;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class EmployeeDBUtill {
	
	private static boolean isTrue;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean Validate(String username,String password) {
		
		try {
			
			con = DBConnection.getConnnection();
			stmt = con.createStatement();
			String sql = "SELECT * FROM EMPLOYEE WHERE Email = '"+username+"' and Password = '"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isTrue = true;
			}
			else {
				isTrue = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isTrue;
		
	}
	public static List<Employee>getEmployee(){
		
		ArrayList<Employee> employee = new ArrayList<>();
		
		try {
			
			con = DBConnection.getConnnection();
			stmt = con.createStatement();
			String sql = "SELECT * FROM EMPLOYEE";
			rs = stmt.executeQuery(sql);
			
			
			while(rs.next()) {
				
				int empid = rs.getInt(1);
				String firstname =  rs.getString(2);
				String lastname = rs.getString(3);
				String email = rs.getString(4);
				String password1 = rs.getString(5);
				String phone = rs.getString(6);
				String address = rs.getString(7);
				String role = rs.getString(8);
				
				Employee emp = new Employee(empid,firstname,lastname,email,password1,phone,address,role);
				employee.add(emp);
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return employee;
	}
	public static boolean InsertEmployee(String firstname,String lastname,String email,String password,String phone,String address,String role) {
		
		boolean isTrue =false;
		try {
				con = DBConnection.getConnnection();
				stmt = con.createStatement();
				String sql = "INSERT INTO EMPLOYEE VALUES (0,'"+firstname+"','"+lastname+"','"+email+"','"+password+"','"+phone+"','"+address+"','"+role+"')";
				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0) {
					isTrue = true;
					
				}else {
					isTrue = false;
				}
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		
		
		return isTrue;
	}
	public static boolean updateEmployee(String empid,String firstname,String lastname,String email,String password,String phone,String address,String role ) {
		
		try {
			con = DBConnection.getConnnection();
			stmt = 	con.createStatement();
			String sql  = " UPDATE EMPLOYEE SET FirstName = '"+firstname+"',LastName='"+lastname+"',Email='"+email+"',Password = '"+password+"',Phone='"+phone+"',Address='"+address+"',Role='"+role+"'"+"where EmpId='"+empid+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isTrue = true;
			}else {
				isTrue = false;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isTrue;
	}
	public static List<Employee> getEmployeeDetails(String empid){
		
		int Empid = Integer.parseInt(empid);
		ArrayList<Employee> Emp = new ArrayList<>();
		
		try {
			
			con = DBConnection.getConnnection();
			stmt = con.createStatement();
			String sql =  "SELECT * FROM EMPLOYEE WHERE Emp ='"+Emp+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int employeeid = rs.getInt(1);
				String firstname = rs.getString(2); 
				String lastname = rs.getString(3);
				String email = rs.getString(4);
				String password = rs.getString(5);
				String phone = rs.getString(6);
				String address = rs.getString(7);
				String role = rs.getString(8);
				
				Employee e = new Employee(employeeid,firstname,lastname,email,password,phone,address,role);
				Emp.add(e);
 				
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return Emp;
	}
	public static boolean DeleteEmployee(String empid) {
		
		int empId = Integer.parseInt(empid);
		
		try {
			
			con = DBConnection.getConnnection();
			stmt = con.createStatement();
			String sql = "DELETE FROM EMPLOYEE WHERE EmpId = '"+empId+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				
				isTrue = true;
			
			}else {
				
				isTrue = false;
			}
			
		}catch(Exception e) {
		
			e.printStackTrace();
		}
		
		return isTrue;
	}

}
