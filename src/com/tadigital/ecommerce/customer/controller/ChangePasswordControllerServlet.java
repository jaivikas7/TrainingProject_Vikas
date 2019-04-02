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

@WebServlet("/changepass")

public class ChangePasswordControllerServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String old_pwd = req.getParameter("f1");
		String new_pwd1 = req.getParameter("f2");
		String new_pwd2 = req.getParameter("f3");
		
		if(new_pwd1.equals(new_pwd2))
		{
			Customer customer = new Customer();
			HttpSession ses= req.getSession();
			customer.setEmail((String)ses.getAttribute("id"));
			customer.setPassword(old_pwd);
			
			CustomerService customerService = new CustomerService();
			boolean status = customerService.loginCustomer(customer);
			
			if(status) {
				customer.setPassword(new_pwd1);
				status = customerService.changePassword(customer);
				if(status)
				{
					req.setAttribute("up", "Y");
					RequestDispatcher rd = req.getRequestDispatcher("CustomerAccount.jsp");
					rd.forward(req, resp);
				}
			}
			else
			{
				req.setAttribute("up", "N");
				RequestDispatcher rd = req.getRequestDispatcher("CustomerAccount.jsp");
				rd.forward(req, resp);
			}
		}
		
		else {
			req.setAttribute("up", "DNM");
			RequestDispatcher rd = req.getRequestDispatcher("CustomerAccount.jsp");
			rd.forward(req, resp);
		}
	}
}
