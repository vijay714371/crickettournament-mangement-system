<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.banner-background {
	clip-path: polygon(50% 0%, 100% 0, 100% 35%, 100% 100%, 80% 90%, 50% 100%, 20% 90%,
		0 100%, 0 0, 23% 0);
}
</style>
<%@include file="all_js_css.jsp"%>

</head>
<body>
	<div class="container-fluid p-0 m-0">

		<%@include file="navbar.jsp"%>

	</div>


	<main class="d-flex align-items-center bg-primary  p-5"
		style="padding-bottom: 60px">
		<div class="container">
			<div class="row">
				<div class="col-md-6 offset-md-3">
					<div class="card">
						<div class="card-header primary-color text-center">

							<p>
								<span class="fa fa-user-plus fa-3x"></span><br>Register
								here
							</p>

						</div>
						<div class="card-body">
							<form action="RegisterServlet" method="POST">
								<div class="mb-3">
									<label for="exampleInputEmail1" class="form-label">User
										name</label> <input name="user_name" type="text" class="form-control"
										required id="username" aria-describedby="emailHelp"
										placeholder="username">


								</div>




								<div class="mb-3">
									<label for="exampleInputEmail1" class="form-label">Email
										address</label> <input name="user_email" type="email"
										class="form-control" required id="exampleInputEmail1"
										aria-describedby="emailHelp">

								</div>



								<div class="mb-3">
									<label for="exampleInputPassword1" class="form-label">Password</label>
									<input name="user_password" type="password"
										class="form-control" required id="exampleInputPassword1">
								</div>


								<div class="mb-3 form-check">
									<input name="check" type="checkbox" class="form-check-input"
										required id="exampleCheck1"> <label
										class="form-check-label" for="exampleCheck1">agree
										terms and conditions</label>
								</div>
								<br>

								<button type="submit" class="btn btn-primary">Submit</button>
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