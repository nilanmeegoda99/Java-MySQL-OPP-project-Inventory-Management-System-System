package com.IMS;

/*importing required dependencies*/

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.IMS.Customer;
import com.IMS.CustomerDBUtil;


import javax.servlet.RequestDispatcher;



@WebServlet("/loginservlet")
public class loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/*creating a servlet  as a control class according to MVC architecture*/
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// creating a PrintWriter class to use java script alerts
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		//declaring private variables and assigning the product details  to those
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		boolean isTrue;
		
		//using validate method in customerDButil class to validate user and retrieve a boolean value and assigning it to this variable by passing parameters
		isTrue = CustomerDBUtil.validate(userName, password);
		
		//condition
		
		if (isTrue == true) {
			List<Customer> cusDetails = CustomerDBUtil.getCustomer(userName);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("dasgboard.jsp");
			dis.forward(request, response);
		} else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your username or password is incorrect');");
			out.println("location='nlogin.jsp'");
			out.println("</script>");
		}
		
		
		
		
	}

}
