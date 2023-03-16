<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="org.hibernate.*"%>
<%@page import="java.util.*"%>
<%@page import="com.entities.User"%>

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

							<h3>Users</h3>

						</div>
						<div class="card-body">
							<table class="table table-striped table-hover">
								<thead class="text-center ">
									<tr>

										<th scope="col">Username</th>
										<th scope="col">Email</th>
										<th scope="col">Password</th>
										<th scope="col">Date and time</th>

									</tr>
								</thead>


								<%
       Session s= FactaryProvider.getFactory().openSession();
       Query q=s.createQuery("from User");
       List<User> list=q.list();
       for(User team:list){
    	  %>



								<tbody>
									<tr>

										<td class="text-center "><%= team.getUsername() %></td>
										<td class="text-center "><%= team.getUseremail() %></td>
										<td class="text-center "><%= team.getPassword()%></td>
										<td class="text-center "><%= team.getDate()%></td>



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