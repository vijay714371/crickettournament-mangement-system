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

		<%@include file="usernavbar.jsp"%>


	</div>


	<main class="d-flex align-items-center bg-primary "
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

	</main>

	<%@include file="Footer.jsp"%>

</body>
</html>