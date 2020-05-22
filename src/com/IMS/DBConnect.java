package com.IMS;

/*importing required sql dependencies */

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
	/*declaring private variables and assigning  sql server credentials to those variables*/
	
	private static String url = "jdbc:mysql://localhost:3306/stocklinkdb";
	private static String userName = "root";
	private static String password = "suwani1960";
	private static Connection con;

	/*declaring public method to return boolean value*/
	public static Connection getConnection() {
		
		/*exception handling */
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, userName, password);
			
		}
		catch (Exception e) {
			System.out.println("Database connection is not success!!!");
		}
		
		return con;
	}
}
