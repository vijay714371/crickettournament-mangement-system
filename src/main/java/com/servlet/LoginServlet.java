package com.servlet;

import java.io.IOException;
import java.util.List;

import org.hibernate.query.*;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.User;
import com.helper.FactaryProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String useremail=request.getParameter("user_email");
		String password=request.getParameter("password");
		System.out.println(useremail);
		System.out.println(password);
			try {
				Session s=FactaryProvider.getFactory().openSession();
				Transaction tx=s.beginTransaction();
				Query q=s.createQuery("from User where useremail=:x and password=:y");
				q.setParameter("x",useremail);
				q.setParameter("y", password);
			       List<User> list=q.list();
			       for(User user:list){
			    	   String usere1=user.getUseremail();
			    	   String userp1=user.getPassword();
			    	   if(usere1.equals(useremail) && userp1.equals(password)) {
			    		   HttpSession session=request.getSession();
			   			session.setAttribute("user_email", useremail);
			   			response.sendRedirect("userLogin.jsp");
			    	   }
			    	   else {
			    		  
			    		   response.sendRedirect("index.jsp");
			    	   }
			    	   
			       }
			}
			       catch(Exception e) {
				e.printStackTrace();
			}
		}
	

}
