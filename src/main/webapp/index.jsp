<%@page import="org.hibernate.*"%>
<%@page import="java.util.*"%>
<%@page import="com.entities.Teams"%>

<%@page import="com.helper.FactaryProvider"%>

<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap demo</title>
<%@include file="all_js_css.jsp"%>
<link rel="stylesheet" href="css/style.css" type="text/css">

<style>
.banner-background {
	clip-path: polygon(50% 0%, 100% 0, 100% 35%, 100% 100%, 80% 90%, 50% 100%, 20% 90%,
		0 100%, 0 0, 23% 0);
}
</style>
</head>
<body>


	<div class="container-fluid p-0 m-0">

		<%@include file="navbar.jsp"%>

	</div>
	<div class="container-fluid p-0 m-0 ">
		<div class="jumbotron  bg-primary text-white">
			<div class="container">
				<h3 class="display-3">Indian Premier League</h3>
				<p>The Indian Premier League (IPL) is a professional Twenty20
					cricket league in India. It is one of the most popular and
					lucrative cricket leagues in the world.</p>
				<p>The league was founded by the Board of Control for Cricket in
					India (BCCI) in 2008, and features eight teams representing eight
					different cities in India. Each team plays a total of 14 matches
					during the league stage, with the top four teams qualifying for the
					playoffs. The final of the IPL is played at a neutral venue, and
					the winner of the tournament is awarded the IPL trophy.</p>

				<a href="Login.jsp"><button class="btn btn-outline-light btn-lg">
						<span class="fa fa-user-circle-o fa-spin"></span>&nbsp Login
					</button></a>
			</div>
		</div>

	</div>
	<div class="container">
		<div class="row  mb-2">

			<%
       Session s= FactaryProvider.getFactory().openSession();
       Query q=s.createQuery("from Teams");
       List<Teams> list=q.list();
       for(Teams team:list){
    	  %>
			<div class="col-md-3 mb-2">
				<div class="card">
					<img src="img/<%= team.getImage() %>" class="card-img-top"
						alt="...">

					<div class="card-body">
						<h5 class="card-title"><%= team.getTeam_shortname() %></h5>
						<p class="card-text"><%=team.getTeam_name() %></p>
						<p class="card-text"><%=team.getTeam_city() %></p>

					</div>
				</div>
			</div>

			<% 
       }
       
       s.close();
       %>


		</div>


	</div>





	<%@include file="Footer.jsp"%>

</body>
</html>