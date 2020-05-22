package com.IMS;

public class Customer {
   
	/*declaring variables*/
	
	private int id;
    private String name;
    private String email;
    private String phone;
    private String userName;
    private String password;
    
    /*declaring overloaded constructor*/
    
    public Customer(int id, String name, String email, String phone, 
    		String userName, String password) {
	this.id = id;
	this.name = name;
	this.email = email;
	this.phone = phone;
	this.userName = userName;
	this.password = password;
    }

    /*declaring public method to return data*/
    public int getId() {
        return id;
    }

    /*declaring public method to return data*/
    public String getName() {
        return name;
    }
    
    /*declaring public method to return data*/
    public String getEmail() {
        return email;
    }

    /*declaring public method to return data*/
    public String getPhone() {
        return phone;
    }

    /*declaring public method to return data*/
    public String getUserName() {
        return userName;
    }

    /*declaring public method to return data*/
    public String getPassword() {
        return password;
    }    
}
