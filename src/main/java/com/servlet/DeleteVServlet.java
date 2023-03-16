package com.servlet;

import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Players;
import com.entities.Venue;
import com.helper.FactaryProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class DeleteVServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int Id=Integer.parseInt(request.getParameter("team_id").trim());
			Session s=FactaryProvider.getFactory().openSession();
			Transaction tx=s.beginTransaction();
	        Venue team=(Venue)s.get(Venue.class, Id);
	        s.delete(team);
	        tx.commit();
	        
	        s.close();
	        response.sendRedirect("ShowVenue.jsp");
		}catch(Exception e) {
			
		}
		
		
	}

}
