package com.tadigital.ecommerce.customer.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tadigital.ecommerce.customer.entity.Customer;
import com.tadigital.ecommerce.customer.service.CustomerService;

@WebServlet("/register")
public class RegistrationProcessControllerServlet extends HttpServlet {
		
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("f1");
		String email = req.getParameter("f2");
		String password = req.getParameter("f3");
		
		String name_split[]=name.split(" ");
		String firstName="";
		String lastName="";
		
		if(name_split!=null)
		{
			firstName = name_split[0];
			
			for(int i=1; i<name_split.length; i++)
				lastName=lastName + " " + name_split[i];
		}	
		
		else
		{
			firstName = name;
			lastName = "";
		}
		
		Customer customer = new Customer();
		customer.setFirstName(firstName);
		customer.setLastName(lastName);
		
		customer.setEmail(email);
		customer.setPassword(password);
		

		CustomerService customerService = new CustomerService();
		boolean status = customerService.checkCustomer(customer);
		
		if(status)
		{
			HttpSession ses = req.getSession();
			req.setAttribute("stat", "E");
			RequestDispatcher rd = req.getRequestDispatcher("SignInSignUpForms.jsp");
			rd.forward(req, resp);
		}
		else
		{
			status = customerService.registerCustomer(customer);
			if(status) {
				req.setAttribute("stat", "Y");
				RequestDispatcher rd = req.getRequestDispatcher("SignInSignUpForms.jsp");
				rd.forward(req, resp);
			}
			else
			{
				req.setAttribute("stat", "N");
				RequestDispatcher rd = req.getRequestDispatcher("SignInSignUpForms.jsp");
				rd.forward(req, resp);
			}
		}
	}
}