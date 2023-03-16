<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="jakarta.servlet.http.HttpSession"%>
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
		<%
       
       if(session.getAttribute("user_email")==null){
    	   response.sendRedirect("Login.jsp");
       }
       
       %>
		<%
       int teamId=Integer.parseInt(request.getParameter("team_id").trim());
       Session s=FactaryProvider.getFactory().openSession();
	
       Teams team=(Teams)s.get(Teams.class, teamId);
       %>


	</div>
	<main class="d-flex align-items-center bg-primary "
		style="height: 600px">
		<div class="container">
			<div class="row">
				<div class="col-md-12 ">
					<div class="card">
						<div class="card-header bg-primary text-center">

							<h3>Edit Teams here</h3>

						</div>
						<div class="card-body">
							<form action="UpdateServlet" method="post"
								enctype="multipart/form-data">
								<input value="<%= team.getTeam_id() %>" name="team_id"
									type="hidden" />
								<div class="mb-3">
									<label for="exampleInputEmail1" class="form-label">Team
										Name </label> <input type="text" class="form-control" name="Team_name"
										required id="exampleInputEmail1" aria-describedby="emailHelp"
										value="<%= team.getTeam_name() %>">

								</div>
								<div class="mb-3">
									<label for="exampleInputPassword1" class="form-label">Team
										Short Name</label> <input type="text" class="form-control"
										name="Team_shortname" required id="exampleInputPassword1"
										value="<%= team.getTeam_shortname() %>">
								</div>
								<div class="mb-3">
									<label for="exampleInputEmail1" class="form-label">Team
										City </label> <input type="text" class="form-control" name="Team_city"
										required id="exampleInputEmail1" aria-describedby="emailHelp"
										value="<%= team.getTeam_city() %>">

								</div>
								<div class="mb-3">
									<label for="exampleInputEmail1" class="form-label">Team
										logo </label> <input type="file" class="form-control"
										name="Team_image" required id="exampleInputEmail1"
										aria-describedby="emailHelp">

								</div>
								<div class=" text-center">
									<button type="submit" class="btn btn-primary text-center">Save</button>
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