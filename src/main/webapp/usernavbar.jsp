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
					href="index.jsp"><span class="fa fa-home"></span>&nbspHome <span
						class="sr-only">(current)</span></a></li>
				<li class="nav-item"><a class="nav-link" href="UserTeams.jsp">Teams</a>
				</li>

				<li class="nav-item"><a class="nav-link" href="usermatches.jsp">Matches</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="Resultuser.jsp">Match
						results</a></li>
				<li class="nav-item"><a class="nav-link"
					href="ShowUserPlayer.jsp">Players</a></li>
				<li class="nav-item"><a class="nav-link" href="Venueuser.jsp">Venues</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="index.jsp">Logout</a>
				</li>
			</ul>





		</div>
	</nav>
</body>
</html>