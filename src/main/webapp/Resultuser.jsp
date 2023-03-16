<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="org.hibernate.*"%>
<%@page import="java.util.*"%>
<%@page import="com.entities.Schedule"%>

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

							<h3>Results</h3>

						</div>
						<table class="d-flex">

							<%
       Session s= FactaryProvider.getFactory().openSession();
       Query q=s.createQuery("from Schedule");
       List<Schedule> list=q.list();
       for(Schedule team:list){
    	   if(team.getResult()!=null){
    	  %>

							<div class="card ">
								<tr>
									<td>
										<div class="card-body d-flex">
											<td class="p-3"><h5 class="card-title"><%= team.getTeam1()%></h5></td>
											<td>&nbsp
												<h3 class="card-text">&nbsp &nbsp VS &nbsp &nbsp</h3>&nbsp
											</td>
											<td class="p-3"><h5 class="card-text"><%= team.getTeam2() %></h5></td>
											<td class="p-3"><p class="card-text"><%= team.getVenue() %></p></td>


											<td><p class="text-center">
													<label for="date" class="form-label"><b
														class="text-info">date and time:</b></label><br>
													<b class="text-primary "><%= team.getDate() %>&nbsp
														&nbsp </b>
												</p></td>
											<td class="p-3"><p class="card-text"><%= team.getResult() %></p></td>
								</tr>
							</div>



							<% 
    	   }
       }
       
       s.close();
       %>
						</table>

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