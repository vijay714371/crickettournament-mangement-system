package com.servlet;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Teams;
import com.helper.FactaryProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
@MultipartConfig
public class TeamsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public TeamsServlet() {
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
		String team_name=request.getParameter("Team_name");
		String team_shortname=request.getParameter("Team_shortname");
		String team_city=request.getParameter("Team_city");
	    Part file=request.getPart("Team_image");
	    String imagefilename=(String)file.getSubmittedFileName();
	    System.out.println("selected image"+imagefilename);
	    String path="C:/Users/Admin/eclipse-workspace/cricketmanagement/src/main/webapp/img/"+imagefilename;
	    System.out.println("Selected path:"+path);
	   
	    FileOutputStream fos=new FileOutputStream(path);
	    InputStream is=file.getInputStream();
	    byte[] data=new byte[is.available()];
	    is.read(data);
	    fos.write(data);
	    fos.close();
	   
	      Teams team=new Teams(team_name,team_shortname,team_city,imagefilename);
	      Session s=FactaryProvider.getFactory().openSession();
	      Transaction tx=s.beginTransaction();
	      s.save(team);
	      response.sendRedirect("ShowTeams.jsp");
	      
	      tx.commit();
	      s.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
