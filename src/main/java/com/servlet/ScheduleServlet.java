package com.servlet;

import java.io.IOException;

import java.util.Date;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Schedule;

import com.helper.FactaryProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class ScheduleServlet
 */
public class ScheduleServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			
		  String team1=request.getParameter("team1");
		  String team2=request.getParameter("team2");
		  String date=request.getParameter("date");
		  String venue=request.getParameter("venue");
		  System.out.println(date);
		  System.out.println(team1+"\tvs\t"+team2);
		 
		      Schedule t=new Schedule(team1,team2,date,venue);
		      Session s=FactaryProvider.getFactory().openSession();
		      Transaction tx=s.beginTransaction();
		      s.save(t);
		      response.sendRedirect("Matches.jsp");
		      
		      tx.commit();
		      s.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		
	
	}

}
