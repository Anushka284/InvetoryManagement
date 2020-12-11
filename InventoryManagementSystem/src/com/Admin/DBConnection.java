package com.Admin;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

	private static String url = "jdbc:mysql://localhost:3306/inventorymanagementsystem";
	private static String username = "root";
	private static String password = "";
	private static Connection con;
	

	public static Connection getConnnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, username, password);
			
		}catch(Exception e) {
			System.out.println("Database Connection is not Successfully Connected!");
		}
		return con;
	}
	

}
