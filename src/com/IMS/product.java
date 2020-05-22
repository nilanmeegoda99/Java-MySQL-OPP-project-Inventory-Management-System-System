package com.IMS;

// model class for product

public class product {

	
	 
	  //declaring private variables 
		private int id;
	    private String prodname;
	    private String prodUPC; 
	    private double prodcostU; 
	    private String prodsku; 
	    private String prodtype; 
	    private String prodmanu;
	    private int prodamount;
	    
	    //public overloaded constructor
	    
	    public product(int id,String prodname,String prodUPC,double prodcostU,String prodsku,String prodtype,String prodmanu,int prodamount 
	    		) {
	    	
		this.id = id;
		this.prodname =prodname;
		this.prodUPC =prodUPC ;
		this.prodcostU =prodcostU ;
		this.prodsku =prodsku ;
		this.prodtype =prodtype ;
		this.prodmanu =prodmanu ;
		this.prodamount =prodamount ;
		
	    }

	    // public getters to return data
	    
	    
	    public int getId() {
	        return id;
	    }

	    public String getProdName() {
	        return prodname;
	    }

	    public String getProdUPC() {
	        return prodUPC;
	    }

	    public double getCostPU() {
	        return prodcostU;
	    }

	    public String getprodsku() {
	        return prodsku;
	    }

	    public String getprodtype() {
	        return prodtype;
	    } 
	    
	    public String getprodmanu() {
	        return prodmanu;
	    } 
	    
	    public int getprodamount() {
	        return prodamount;
	    } 
}
