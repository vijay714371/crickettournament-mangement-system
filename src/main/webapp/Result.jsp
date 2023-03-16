<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="org.hibernate.*"%>
<%@page import="java.util.*"%>
<%@page import="com.entities.Schedule"%>
<%@page import="com.entities.Venue"%>

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

							<h3>Matches Schedule here</h3>

						</div>
						<div class="card-body">
							<form action="ResultServlet" method="post">

								<div class="mb-3">
									<label for="disabledSelect" class="form-label">Select
										Team 1 </label> <br>
									<select id="disabledSelect" class="form-select form-control"
										name="team1" required>


										<%
           int teamId=Integer.parseInt(request.getParameter("team_id").trim());
       Session s= FactaryProvider.getFactory().openSession();
			Schedule team=(Schedule)s.get(Schedule.class, teamId);
      
    	  %>


										<option><%= team.getTeam1() %></option>





									</select> <input value="<%= team.getId()%>" name="team_id" type="hidden" />
								</div>
								<div class="mb-3">
									<label for="disabledSelect" class="form-label">Select
										Team 2 </label> <br>
									<select id="disabledSelect" class="form-select form-control"
										name="team2" required>

										<option><%= team.getTeam2() %></option>



									</select>
								</div>



								<div class="mb-3">
									<label for="disabledSelect" class="form-label">Match
										Time </label> <br> <select id="disabledSelect"
										class="form-select form-control" name="date" required>

										<option><%= team.getDate() %></option>



									</select>
								</div>
								<div class="mb-3">
									<label for="disabledSelect" class="form-label">Select
										Venue </label> <br>
									<select id="disabledSelect" class="form-select form-control"
										name="venue" required>

										<option><%= team.getVenue() %></option>
										<%
									
									s.close();
									%>
									</select>
								</div>
								<div class="mb-3">
									<label for="exampleInputPassword1" class="form-label">Result</label>
									<input type="text" class="form-control" name="result" required
										id="exampleInputPassword1">
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