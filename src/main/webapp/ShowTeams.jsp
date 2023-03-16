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


	<main class="d-flex align-items-center bg-primary p-0 m-0 "
		style="height: 100%">
		<div class="container">
			<div class="row pb-4">
				<div class="col-md-12 ">
					<div class="card">
						<div class="card-header bg-primary text-center">

							<h3>Teams</h3>

						</div>
						<div class="card-body">
							<table class="table table-striped table-hover">
								<thead class="text-center ">
									<tr>
										<th scope="col">Logo</th>
										<th scope="col">Title</th>
										<th scope="col">Team name</th>
										<th scope="col">City</th>
										<th scope="col">Action</th>
									</tr>
								</thead>


								<%
       Session s= FactaryProvider.getFactory().openSession();
       Query q=s.createQuery("from Teams");
       List<Teams> list=q.list();
       for(Teams team:list){
    	  %>



								<tbody>
									<tr>
										<td><img class="card-img-top pl-4 pt-4"
											src="img/<%= team.getImage() %>" style="max-width: 70px"
											alt="Card image cap"></td>
										<td class="text-center "><%= team.getTeam_shortname() %></td>
										<td class="text-center "><%= team.getTeam_name() %></td>
										<td class="text-center "><%= team.getTeam_city() %></td>
										<td class="text-center "><a
											href="DeleteServlet?team_id=<%= team.getTeam_id() %>"
											class="btn btn-danger">Delete</a> <a
											href="editTeams.jsp?team_id= <%= team.getTeam_id() %>"
											class="btn btn-primary">Update</a></td>



										<% 
       }
       
       s.close();
       %>
									
								</tbody>
							</table>

						</div>


					</div>



				</div>

			</div>

		</div>
		<br>
		<br>
	</main>

	<diV style="heigth: 100px">
		<p>
			<br>
		</p>
	</diV>

	<%@include file="Footer.jsp"%>

</body>
</html>