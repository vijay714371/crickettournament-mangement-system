<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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

	<main class="d-flex align-items-center bg-primary "
		style="height: 70vh">
		<div class="container">
			<div class="row">
				<div class="col-md-4 offset-md-4">
					<div class="card">
						<div class="card-header bg-primary text-center">

							<p>
								<span class="fa fa-user-plus fa-3x"></span><br> Admin Login
								here
							</p>

						</div>
						<div class="card-body">
							<form action="AdminloginServlet" method="post">
								<div class="mb-3">
									<label for="exampleInputEmail1" class="form-label">Email
										address</label> <input type="email" class="form-control"
										name="user_email" required id="exampleInputEmail1"
										aria-describedby="emailHelp">

								</div>
								<div class="mb-3">
									<label for="exampleInputPassword1" class="form-label">Password</label>
									<input type="password" class="form-control" name="password"
										required id="exampleInputPassword1">
								</div>
								<div class="mb-3 form-check">
									<input type="checkbox" class="form-check-input"
										id="exampleCheck1"> <label class="form-check-label"
										for="exampleCheck1">Check me out</label>
								</div>
								<button type="submit" class="btn btn-primary">Submit</button>

								<p>
									register here<a href="Singup.jsp">&nbsp signup</a>
								</p>
							</form>




						</div>


					</div>



				</div>

			</div>

		</div>

	</main>
	<%@include file="Footer.jsp"%>

</body>
</html>