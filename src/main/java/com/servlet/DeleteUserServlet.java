package com.servlet;

import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.User;
import com.helper.FactaryProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class DeleteUserServlet
 */
public class DeleteUserServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int Id=Integer.parseInt(request.getParameter("team_id").trim());
			System.out.println(Id);
			Session s=FactaryProvider.getFactory().openSession();
			Transaction tx=s.beginTransaction();
	         User team=(User)s.get(User.class, Id);
	        s.delete(team);
	        tx.commit();
	        
	        s.close();
	        response.sendRedirect("Userdb.jsp");
		}catch(Exception e) {
			
		}
		
	}

}
