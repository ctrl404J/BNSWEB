<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="main.NewsVo" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<title>Insert title here</title>

</head>
<body>
<%
	NewsVo news = (NewsVo) request.getAttribute("news");
%>
	<div class="centered-form">
		<form action="AdminUpdateDelete" method="POST" style="max-width: 50%; margin:auto; padding-top:100px;'">
		  <div class="form-group">
		    <label for="exampleFormControlInput1">タイトル：</label>
		    <input type="hidden" class="form-control" id="postId"  name="postId"  value="<%= news.getId() %>">
		    <input type="text" class="form-control" id="adminWriteTitle" name="title" value="<%= news.getTitle() %>">
		  </div>
		  <div class="form-group" >
		    <label for="exampleFormControlTextarea1">内容：</label>
		    <textarea class="form-control" id="adminWriteDetail" rows="7" name="detail" ><%= news.getDetail() %></textarea>
		  </div>
		  <br>
		  <input type="hidden" name="updateAction" value="on">
		  <button type="submit" class="btn btn-primary" id="adminWriteBtn" style="float: right;">完了</button>
		</form>
	</div>
</body>
</html>