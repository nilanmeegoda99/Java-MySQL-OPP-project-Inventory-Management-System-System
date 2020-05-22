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




@WebServlet("/DeleteProductserv")
public class DeleteProductserv extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/*creating a servlet  as a control class according to MVC architecture*/
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// creating a PrintWriter class to use java script alerts
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		//declaring private variable and assigning the product id to it
		
		int prodid = Integer.parseInt(request.getParameter("prodid"));
		
		boolean isTrue;
		
		//using deleteProduct method in productDButil class and retrieve a boolean value and assigning it to this variable by passing prodid as a parameter
		isTrue = productDButil.deleteProduct(prodid);
		
		//condition
		if (isTrue == true) {
			
			//redirecting to the relevant jsp page if condition is true
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Your product was deleted sucessfully');");
			out.println("location='productreport.jsp'");
			out.println("</script>");
		}
		else {
			
			//redirecting to the relevant jsp page if condition is false
			out.println("<script type='text/javascript'>");
			out.println("alert('Your product was not deleted');");
			out.println("location='productreport.jsp'");
			out.println("</script>");
		}
	
	
	
	
	}
	
	
	
}
