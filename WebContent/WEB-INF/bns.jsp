<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.centered-form {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="centered-form">
		<form action="bns" method="POST">
			<input type="password" id="pw" name="pw"><br><br>
			<input type="submit" value="Submit">
		</form>
	</div>
</body>
</html>