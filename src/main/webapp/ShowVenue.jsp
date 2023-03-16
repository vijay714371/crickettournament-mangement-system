<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="org.hibernate.*"%>
<%@page import="java.util.*"%>
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


	<main class="d-flex align-items-center bg-primary p-0 m-0 "
		style="height: 100%">
		<div class="container">
			<div class="row pb-4">
				<div class="col-md-12 ">
					<div class="card">
						<div class="card-header bg-primary text-center">

							<h3>Venues</h3>

						</div>
						<div class="card-body">
							<table class="table table-striped table-hover">
								<thead class="text-center ">
									<tr>

										<th scope="col">name</th>
										<th scope="col">City</th>
										<th scope="col">State</th>
										<th scope="col">action</th>
									</tr>
								</thead>


								<%
       Session s= FactaryProvider.getFactory().openSession();
       Query q=s.createQuery("from Venue");
       List<Venue> list=q.list();
       for(Venue team:list){
    	  %>



								<tbody>
									<tr>

										<td class="text-center "><%= team.getName() %></td>
										<td class="text-center "><%= team.getCity() %></td>
										<td class="text-center "><%= team.getCountry()%></td>
										<td class="text-center "><a
											href="DeleteVServlet?team_id=<%= team.getId() %>"
											class="btn btn-danger">Delete</a></td>



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