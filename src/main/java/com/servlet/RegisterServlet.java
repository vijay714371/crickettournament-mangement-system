package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.User;
import com.helper.FactaryProvider;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public RegisterServlet() {
        // TODO Auto-generated constructor stub
    }

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			 response.setContentType("text/html");
			String username=request.getParameter("user_name");
			String useremail=request.getParameter("user_email");
			String password=request.getParameter("user_password");
			User user=new User(username,useremail,password,new Date());
			 Session s= FactaryProvider.getFactory().openSession();
			 Transaction tx=s.beginTransaction();
			s.save(user);
			
			PrintWriter out=response.getWriter();
			response.sendRedirect("Login.jsp");  
			
			tx.commit();
			s.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
