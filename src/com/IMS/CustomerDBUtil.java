package com.IMS;

/*importing required dependencies*/

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class CustomerDBUtil {
	
	/*declaring private variables*/
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
    
	/*declaring public static method to return boolean value*/
	
	public static boolean validate(String username, String password) {
		
		/*exception handling */
		try {
			
			/*creating a mysql db connection object and execute the sql query*/
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from customer where username='"+username+"' and password='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	/*declaring public method to return  data*/
	public static List<Customer> getCustomer(String userName) {
		
		ArrayList<Customer> customer = new ArrayList<>();
		
		try {
			/*creating a mysql db connection object and execute the sql query*/
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from customer where username='"+userName+"'";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				
				/*assigning the passed parameters to variables */
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String username = rs.getString(5);
				String password = rs.getString(6);
				
				Customer cus = new Customer(id,name,email,phone,username,password);
				customer.add(cus);
			}
			
		} catch (Exception e) {
			
		}
		
		return customer;	
	}
    
  
    
  
	/*declaring public method to return  data*/
	
    public static List<Customer> getCustomerDetails(String Id) {
    	
    	/*conversion of string ID to a integer type variable*/
    	int convertedID = Integer.parseInt(Id);
    	
    	/*creating a array list*/
    	ArrayList<Customer> cus = new ArrayList<>();
    	
    	/*exception handling */
    	try {
    		
    		/*creating a mysql db connection object and execute the sql query*/
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "select * from customer where id='"+convertedID+"'";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			
    			/*assigning the passed parameters to variables */
    			int id = rs.getInt(1);
    			String name = rs.getString(2);
    			String email = rs.getString(3);
    			String phone = rs.getString(4);
    			String username = rs.getString(5);
    			String password = rs.getString(6);
    			
    			/*creating a object from model class customer and assigning it to the array list */
    			Customer c = new Customer(id,name,email,phone,username,password);
    			cus.add(c);
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	return cus;	
    }
    
     
    
}
