<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link type="text/css" rel="stylesheet" href="css/Main.css">
<style>
	.container{
		width: 40%;
		background: #343a40;
		margin: 60px auto auto auto;
		padding: 30px 20px 30px 20px;
	}
</style>

<title>Join</title>
</head>
<body>

	<!-- Headline -->
	<%@ include file="Headline.jsp" %>
	
	
	<!-- input -->
	<div class="container">
		<form action="ContentControllerServlet" method="POST">
			<h1 style = "text-align:center; color:white;">Insert Bellow Form</h1>
			<input type="hidden" name="command" value="JOIN"/>
			<div class="form-group">
				<label> Email : </label>
				<p><input class="form-control" type="email" name="userEmail" placeholder="Email" maxLength="20" required /></p>
				<label> Password(20자 이내) : </label>
				<p><input class="form-control" type="password" name="userPassword" placeholder="Password" maxLength="20" required /></p>
				<label> Name : </label>
				<p><input class="form-control" type="text" name="userName" placeholder="Name" maxLength="10" required /></p>
				<label> NickName(10자 이내) : </label>
				<p><input class="form-control" type="text" name="userNick" placeholder="Nick Name" maxLength="10" required /></p>
				<button class="btn btn-success" type="submit" value="Join">JOIN</button>
			</div>
		</form>
	</div>
</body>
</html>