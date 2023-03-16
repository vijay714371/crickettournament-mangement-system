<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="org.hibernate.*"%>
<%@page import="java.util.*"%>
<%@page import="com.entities.Players"%>

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


	<main class="d-flex align-items-center bg-primary p-0 m-0 "
		style="height: 100%">

		<div class="container">
			<div class="row pb-4">
				<div class="col-md-12 ">

					<div class="card">
						<div class="card-header bg-primary text-center">

							<h3>Players</h3>

						</div>
						<div class="card-body">
							<table class="table table-striped table-hover">
								<thead class="text-center ">
									<tr>
										<th scope="col">photo</th>
										<th scope="col">Name</th>
										<th scope="col">Team name</th>
										<th scope="col">Role</th>

									</tr>
								</thead>


								<%
       Session s= FactaryProvider.getFactory().openSession();
       Query q=s.createQuery("from Players");
       List<Players> list=q.list();
       for(Players player:list){
    	  %>



								<tbody>
									<tr>
										<td><img class="card-img-top pl-4 pt-4"
											src="img/<%= player.getPlayer_image()%>"
											style="max-width: 70px" alt="Card image cap"></td>
										<td class="text-center "><%= player.getPlayer_name()%></td>
										<td class="text-center "><%= player.getTeam_name() %></td>
										<td class="text-center "><%= player.getPlayer_role() %></td>




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