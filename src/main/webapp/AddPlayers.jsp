<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="org.hibernate.*"%>
<%@page import="java.util.*"%>
<%@page import="com.entities.Teams"%>

<%@page import="com.helper.FactaryProvider"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="all_js_css.jsp"%>
<link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>
	<div class="container-fluid p-0 m-0">

		<%@include file="adminnavbar.jsp"%>
	</div>
	<main class="d-flex align-items-center bg-primary "
		style="height: 600px">
		<div class="container">
			<div class="row">
				<div class="col-md-12 ">
					<div class="card">
						<div class="card-header bg-primary text-center">

							<h3>Add Players here</h3>

						</div>
						<div class="card-body">
							<form action="PlayersServlet" method="post"
								enctype="multipart/form-data">
								<div class="mb-3">
									<label for="exampleInputEmail1" class="form-label">Player
										Name </label> <input type="text" class="form-control" required
										name="Player_name" id="exampleInputEmail1"
										aria-describedby="emailHelp">
									<div class="mb-3">
										<label for="disabledSelect" class="form-label">Player
											Team name</label> <br>
										<select id="disabledSelect" class="form-select form-control"
											name="Team_name" required>


											<%
       Session s= FactaryProvider.getFactory().openSession();
       Query q=s.createQuery("from Teams");
       List<Teams> list=q.list();
       for(Teams team:list){
    	  %>


											<option><%= team.getTeam_name() %></option>




											<% 
       }
       
       s.close();
       %>
										</select>
									</div>
									<div class="mb-3">
										<label for="disabledSelect" class="form-label">Player
											Role</label> <br>
										<select id="disabledSelect" class="form-select form-control"
											name="role" required>
											<option>Captain</option>
											<option>wise captain</option>
											<option>Batter</option>
											<option>Bowler</option>
											<option>All-Rounder</option>
										</select>
									</div>
									<div class="mb-3">
										<label for="exampleInputEmail1" class="form-label">Player
											Photo </label> <input type="file" class="form-control"
											name="player_image" id="exampleInputEmail1"
											aria-describedby="emailHelp">

									</div>
									<div class=" text-center">
										<button type="submit" class="btn btn-primary text-center">Add</button>
									</div>
							</form>




						</div>


					</div>



				</div>

			</div>

		</div>

	</main>
	<%@include file="Footer.jsp"%>
</body>
</html>