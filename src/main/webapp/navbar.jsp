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
				<li class="nav-item active"><a class="nav-link"
					href="Adminlogin.jsp">>&nbspAdmin Login </a></li>


			</ul>
			<form class="form-inline my-2 my-lg-0">

				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" style="width: 550px" aria-label="Search">
				<button class="btn btn-outline-light my-2 my-sm-0 text-dark"
					type="submit">Search</button>
				<button
					class="btn btn-outline-light my-2 my-sm-0 text-dark m-1 bg-primary"
					type="submit">
					<span class="fa fa-user-circle-o "></span>&nbsp <a href="Login.jsp"
						class="text-dark">Login</a>
				</button>
				<button
					class="btn btn-outline-light my-2 my-sm-0 text-dark m-2 bg-primary"
					type="submit">
					<span class="fa fa-user-plus "></span>&nbsp<a href="Singup.jsp"
						class="text-dark"> Signup
				</button>
				</a>

			</form>
		</div>
	</nav>
</body>
</html>