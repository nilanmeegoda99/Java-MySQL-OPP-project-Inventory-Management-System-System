package com.IMS;

/*importing required dependencies*/
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.IMS.productDButil;

import javax.servlet.RequestDispatcher;

@WebServlet("/InsertProduct")
public class InsertProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	/*creating a servlet  as a control class according to MVC architecture*/
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		// creating a PrintWriter class to use java script alerts
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		//declaring private variables and assigning the product details  to those
		
		String prodname = request.getParameter("prodname");
		String prodUPC = request.getParameter("produpc");
		double prodcostU = Double.parseDouble(request.getParameter("prodcostU")) ;
		String prodsku = request.getParameter("prodsku");
		String prodtype = request.getParameter("prodtype");
		String prodmanu = request.getParameter("prodmanufac");
		int prodamount = Integer.parseInt(request.getParameter("prodamount"));
		
		boolean isTrue;
		
		//using insertProduct method in productDButil class and retrieve a boolean value and assigning it to this variable by passing product data as parameters
		isTrue = productDButil.insertproduct(prodname,prodUPC,prodcostU,prodsku,prodtype,prodmanu,prodamount);
		
		//condition
		
		if(isTrue == true) {
			
			//redirecting to relevant page and output the msg using JS
			out.println("<script type='text/javascript'>");
			out.println("alert('Your product was inserted sucessfully');");
			out.println("location='addproduct.jsp'");
			out.println("</script>");
			
		} else {
			
			//redirecting to relevant page and output the msg using JS
			out.println("<script type='text/javascript'>");
			out.println("alert('Your Product was not inserted');");
			out.println("location='addproduct.jsp'");
			out.println("</script>");
			
		}
		
	}

}
