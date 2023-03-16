package com.servlet;

import java.io.IOException;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.entities.Admin;
import com.helper.FactaryProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


/**
 * Servlet implementation class AdminloginServlet
 */
public class AdminloginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String useremail=request.getParameter("user_email");
		String password=request.getParameter("password");
		System.out.println(useremail);
		System.out.println(password);
		try {
			Session s=FactaryProvider.getFactory().openSession();
			Transaction tx=s.beginTransaction();
			Query q=s.createQuery("from Admin where useremail=:x and password=:y");
			q.setParameter("x",useremail);
			q.setParameter("y", password);
		       List<Admin> list=q.list();
		       for(Admin user:list){
		    	   String usere1=user.getUseremail();
		    	   String userp1=user.getPassword();
		    	   System.out.println(usere1);
		    	   System.out.println(userp1);
		    	   if(usere1.equals(useremail) && userp1.equals(password)) {
		    		   HttpSession session=request.getSession();
		   			session.setAttribute("user_email", useremail);
		   			response.sendRedirect("addTeams.jsp");
		    	   }
		    	   else {
		    		   HttpSession session=request.getSession();
			   			session.setAttribute("status", "invalid useremail and password");
		    		   response.sendRedirect("Adminlogin.jsp");
		    	   }
		    	   
		       }
		}
		       catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
