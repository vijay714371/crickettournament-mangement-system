package com.servlet;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Players;
import com.entities.Teams;
import com.helper.FactaryProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

/**
 * Servlet implementation class PlayersServlet
 */
@MultipartConfig
public class PlayersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		String playername=request.getParameter("Player_name");
		String teamname=request.getParameter("Team_name");
		String role=request.getParameter("role");
		 Part file=request.getPart("player_image");
		    String imagefilename=(String)file.getSubmittedFileName();
		    System.out.println(imagefilename);
		    String path="C:/Users/Admin/eclipse-workspace/cricketmanagement/src/main/webapp/img/"+imagefilename;
		    FileOutputStream fos=new FileOutputStream(path);
		    InputStream is=file.getInputStream();
		    byte[] data=new byte[is.available()];
		    is.read(data);
		    fos.write(data);
		    fos.close();
		    
		    Players player=new Players(playername,teamname,role,imagefilename);
		      Session s=FactaryProvider.getFactory().openSession();
		      Transaction tx=s.beginTransaction();
		      s.save(player);
		      response.sendRedirect("ShowPlayer.jsp");
		      
		      tx.commit();
		      s.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
