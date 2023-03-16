<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-primary "
		style="heigth: 60px">
		<a class="navbar-brand" href="index.jsp"><span
			class="fa fa-asterisk"></span>Cricket</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="index.jsp"><span class="fa fa-home"></span>&nbsp Home <span
						class="sr-only">(current)</span></a></li>
				<li class="nav-item active px-2"><a class="nav-link"
					href="addTeams.jsp">Add Teams</a></li>

				<li class="nav-item active px-2"><a class="nav-link"
					href="ShowTeams.jsp">Show Teams</a></li>
				<li class="nav-item active px-2"><a class="nav-link"
					href="AddPlayers.jsp">Add Players</a></li>
				<li class="nav-item active px-2"><a class="nav-link"
					href="ShowPlayer.jsp">Show Player</a></li>


				<li class="nav-item active px-2"><a class="nav-link"
					href="Schedule.jsp">Match schedule</a></li>
				<li class="nav-item active px-2"><a class="nav-link"
					href="Matches.jsp">Matches</a></li>
				</li>
				<li class="nav-item active px-2"><a class="nav-link"
					href="AddVenues.jsp">Add Venue</a></li>
				<li class="nav-item active px-2"><a class="nav-link"
					href="ShowVenue.jsp">Show Venue</a></li>

				<li class="nav-item active px-2"><a class="nav-link"
					href="Userdb.jsp">Users</a></li>

				<li class="nav-item active px-3"><a class="nav-link"
					href="index.jsp">Log out</a></li>
			</ul>

		</div>
	</nav>
</body>
</html>