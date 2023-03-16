<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="org.hibernate.*"%>
<%@page import="java.util.*"%>
<%@page import="com.entities.Teams"%>
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
							<form action="ScheduleServlet" method="post">

								<div class="mb-3">
									<label for="disabledSelect" class="form-label">Select
										Team 1 </label> <br>
									<select id="disabledSelect" class="form-select form-control"
										name="team1" required>


										<%
       Session s= FactaryProvider.getFactory().openSession();
       Query q=s.createQuery("from Teams");
       List<Teams> list=q.list();
       for(Teams team:list){
    	  %>


										<option><%= team.getTeam_name() %></option>





										<%
       }
									
									%>
									</select>
								</div>
								<div class="mb-3">
									<label for="disabledSelect" class="form-label">Select
										Team 2 </label> <br>
									<select id="disabledSelect" class="form-select form-control"
										name="team2" required>
										<% for(Teams team:list){ %>
										<option><%= team.getTeam_name() %></option>

										<%} %>

									</select>
								</div>



								<div class="mb-3">
									<label for="disabledSelect" class="form-label">Match
										Time </label> <br> <input type="datetime-local"
										class="form-control" name="date" />
								</div>
								<div class="mb-3">
									<label for="disabledSelect" class="form-label">Select
										Venue </label> <br>
									<select id="disabledSelect" class="form-select form-control"
										name="venue" required>
										<% 
									 Query r=s.createQuery("from Venue");
								       List<Venue> l=r.list();
									
									for(Venue venue:l){ %>
										<option><%= venue.getName() %> ,<%= venue.getCity() %>
											<%= venue.getCountry() %></option>
										<%
									}
									s.close();
									%>
									</select>
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