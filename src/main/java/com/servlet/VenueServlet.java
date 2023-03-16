package com.servlet;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import org.hibernate.Session;
import org.hibernate.Transaction;


import com.entities.Venue;
import com.helper.FactaryProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class VenueServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String name=request.getParameter("name");
			String country=request.getParameter("country");
			String city=request.getParameter("city");
		   System.out.println(name+":"+country+":"+city);
		   
		      Venue t=new Venue(name,city,country);
		      Session s=FactaryProvider.getFactory().openSession();
		      Transaction tx=s.beginTransaction();
		      s.save(t);
		      response.sendRedirect("ShowVenue.jsp");
		      
		      tx.commit();
		      s.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
	}

}
