package com.servlet;

import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Players;
import com.entities.Teams;
import com.helper.FactaryProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteTeamServlet
 */
public class DeleteTeamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int team_Id=Integer.parseInt(request.getParameter("team_id").trim());
			Session s=FactaryProvider.getFactory().openSession();
			Transaction tx=s.beginTransaction();
	        Players team=(Players)s.get(Players.class, team_Id);
	        s.delete(team);
	        tx.commit();
	        
	        s.close();
	        response.sendRedirect("ShowPlayer.jsp");
		}catch(Exception e) {
			
		}
		
		
	}

}
