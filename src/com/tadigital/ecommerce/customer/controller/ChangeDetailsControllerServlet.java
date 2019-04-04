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

@WebServlet("/update")

public class ChangeDetailsControllerServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String fname = req.getParameter("f1");
		String lname = req.getParameter("f2");
		String gender = req.getParameter("f3");
		String add = req.getParameter("f4");
		String city = req.getParameter("f5");
		String zip = req.getParameter("f6");
		String country = req.getParameter("country");
		String state = req.getParameter("state");
		String contact = req.getParameter("f9");
		String email = req.getParameter("f10");
		
		HttpSession ses = req.getSession();
		String mail = (String)ses.getAttribute("id");
		String name = (String)ses.getAttribute("log");
			
		if(fname=="")
		{
			fname = name.substring(0, name.indexOf(" "));
		}
		
		if(lname=="")
		{
			lname = name.substring(name.indexOf(" ")+1);
		}
				
		if(mail!=null)
		{
			Customer customer = new Customer();
			customer.setFirstName(fname);
			customer.setLastName(lname);
			customer.setGender(gender);
			customer.setAddress(add);
			customer.setCity(city);
			customer.setZip(zip);
			customer.setCountry(country);
			customer.setState(state);
			customer.setContact(contact);
			customer.setEmail(email);
			
			CustomerService customerService = new CustomerService();
			boolean status = customerService.updateCustomer(customer, mail);
			
			if(status)
			{
				req.setAttribute("cd", "Y");
				ses.setAttribute("log", customer.getFirstName() + " " + customer.getLastName());
				RequestDispatcher rd = req.getRequestDispatcher("CustomerAccount.jsp");
				rd.forward(req, resp);
			}
			
			else
			{
				req.setAttribute("cd", "N");
				RequestDispatcher rd = req.getRequestDispatcher("CustomerAccount.jsp");
				rd.forward(req, resp);
			}
			
		}
		
		
	}
}