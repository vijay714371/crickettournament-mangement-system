package com.servlet;

import java.io.IOException;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.helper.FactaryProvider;

import com.entities.Teams;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
@MultipartConfig
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UpdateServlet() {
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		try {
			String teamname=request.getParameter("Team_name");
			String shortname=request.getParameter("Team_shortname");
			String city=request.getParameter("Team_city");
			Part file=request.getPart("Team_image");
		    String image=(String)file.getSubmittedFileName();
			System.out.println(city);
			int teamId=Integer.parseInt(request.getParameter("team_id").trim());
			Session s=FactaryProvider.getFactory().openSession();
			Transaction tx=s.beginTransaction();
			Teams team=s.get(Teams.class,teamId);
			team.setTeam_name(teamname);
			team.setTeam_shortname(shortname);
			team.setTeam_city(city);
			team.setImage(image);
			s.save(team);
			tx.commit();
			s.close();
			response.sendRedirect("ShowTeams.jsp");
			
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		
	}

}
