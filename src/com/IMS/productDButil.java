package com.IMS;

/*importing required dependencies*/

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class productDButil {
	
	/*declaring private variables*/
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	 /*declaring public static method to insert  data in the product table in the database*/
	
	 public static boolean insertproduct(String prodname, String prodUPC, double prodcostU, String prodsku, String prodtype, String prodmanu, int prodamount) {
	    	
	    	boolean isSuccess = false;
	    	
	    	/*exception handling */
	    	try {
	    		
	    		/*creating a mysql db connection object and execute the sql query*/
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    	    String sql = "insert into product_tb values (0,'"+prodname+"','"+prodUPC+"','"+prodcostU+"','"+prodsku+"','"+prodtype+"','"+prodmanu+"','"+prodamount+"')";
	    		int rs = stmt.executeUpdate(sql);
	    		
	    		if(rs > 0) {
	    			isSuccess = true;
	    		} else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch (Exception e) {
	    		e.printStackTrace();
	    	}
	 	
	    	return isSuccess;
	    }
	 
	 /*declaring public static method to update  data in the product table in the database*/
	 public static boolean updateProduct(int id, String prodname, String prodUPC, double prodcostU, String prodsku, String prodtype, String prodmanu, int prodamount) {
	    	
	    	try {
	    		
	    		/*creating a mysql db connection object and execute the sql query*/
	    		
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "update product_tb set prod_name='"+prodname+"',prod_UPC='"+prodUPC+"',cost_per_unit='"+prodcostU+"',prod_SKU='"+prodsku+"',prod_type='"+prodtype+"',prod_manufacuture='"+prodmanu+"',amount_instk='"+prodamount+"'"
	    				+ "where prod_ID='"+id+"'";
	    		int rs = stmt.executeUpdate(sql);
	    	    		
	    		if(rs > 0) {
	    			isSuccess = true;
	    		}
	    		else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}
	    	
	    	return isSuccess;
	    }
	 
	 /*declaring public static method to delete data in the product table in the database*/
	 public static boolean deleteProduct(int id) {
	    	
	    	
	    	
	    	try {
	    		
	    		/*creating a mysql db connection object and execute the sql query*/
	    		
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "delete from product_tb where prod_ID ='"+id+"'";
	    		int r = stmt.executeUpdate(sql);
	    		
	    		if (r > 0) {
	    			isSuccess = true;
	    		}
	    		else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch (Exception e) {
	    		e.printStackTrace();
	    	}
	    	
	    	return isSuccess;
	    }
	    

}
