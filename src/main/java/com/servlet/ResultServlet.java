package com.servlet;

import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Schedule;
import com.entities.Teams;
import com.helper.FactaryProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;


/**
 * Servlet implementation class ResultServlet
 */
public class ResultServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			  String team1=request.getParameter("team1");
			  String team2=request.getParameter("team2");
			  String date=request.getParameter("date");
			  String venue=request.getParameter("venue");
			  String result=request.getParameter("result");
			  int teamId=Integer.parseInt(request.getParameter("team_id").trim());
			  System.out.println(date);
			  System.out.println(team1+"\tvs\t"+team2);
			 
			      
			      Session s=FactaryProvider.getFactory().openSession();
			      Transaction tx=s.beginTransaction();
			      Schedule t=s.get(Schedule.class, teamId);
			      t.setTeam1(team1);
			      t.setTeam2(team2);
			      t.setResult(result);
			      t.setVenue(venue);
			      t.setDate(date);
			      s.save(t);
			      response.sendRedirect("Matches.jsp");
			      
			      tx.commit();
			      s.close();
				}catch(Exception e) {
					e.printStackTrace();
				}
		
		
		
	}

}
