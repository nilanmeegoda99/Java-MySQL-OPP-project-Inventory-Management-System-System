package com.IMS;

/*importing required dependencies*/
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/UpdateProductserv")
public class UpdateProductserv extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/*creating a servlet  as a control class according to MVC architecture*/
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// creating a PrintWriter class to use java script alerts
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		//declaring private variable and assigning the product id to it
		
		int prodid = Integer.parseInt(request.getParameter("prodid"));
		String prodname = request.getParameter("prodname");
		String prodUPC = request.getParameter("produpc");
		double prodcostU = Double.parseDouble(request.getParameter("prodcostU")) ;
		String prodsku = request.getParameter("prodsku");
		String prodtype = request.getParameter("prodtype");
		String prodmanu = request.getParameter("prodmanufac");
		int prodamount = Integer.parseInt(request.getParameter("prodamount"));
		
		boolean isTrue;
		
		//using updateProduct method in productDButil class and retrieve a boolean value and assigning it to this variable by passing product data as parameters
		isTrue = productDButil.updateProduct(prodid,prodname,prodUPC,prodcostU,prodsku,prodtype,prodmanu,prodamount);
		
		//condition
		if(isTrue == true) {
			
			
			//redirecting to the relevant page and output the message when condition is true
			out.println("<script type='text/javascript'>");
			out.println("alert('Your product was Updated sucessfully');");
			out.println("location='productreport.jsp'");
			out.println("</script>");
		}
		else {
			
			//redirecting to the relevant page and output the message when condition is false
			out.println("<script type='text/javascript'>");
			out.println("alert('Your product was not updated');");
			out.println("location='productreport.jsp'");
			out.println("</script>");
		}
		
		
		
		
		
		
		
	}

}
