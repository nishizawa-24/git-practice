<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Account" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/style.css" rel="stylesheet">
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String errorCode = request.getParameter("error");
		if(errorCode != null && errorCode.equals("1")){
			Account ac = (Account)session.getAttribute("input_data");
	%>
		<p style="color:red">登録に失敗しました。</p>
		<h3>新規会員登録</h3>
		<form action="SampelRegisterConfirmServlet" method="post">
			名前：<input type="text" name="name"><br>
			性別：
			<input type="radio" name="gender" value="0">男性
	    	<input type="radio" name="gender" value="1">女性
	    	<input type="radio" name="gender" value="2">無回答<br>
	    	年齢：<input type="text" name="age"><br>
			メール：<input type="email" name="mail"><br>
			電話番号：<input type="text" name="tel"><br>
			パスワード：<input type="password" name="pw"><br>
			<input type="submit" value="登録">
		</form>
	<%
		} else {
	%>
	<h3>新規会員登録</h3>
	<form action="KadaiRegisterConfirmServlet" method="post">
		名前：<input type="text" name="name"><br>
		性別：
		<input type="radio" name="gender" value="0">男性
	    <input type="radio" name="gender" value="1">女性
	    <input type="radio" name="gender" value="2">無回答<br>
	    年齢：<input type="text" name="age"><br>
		メール：<input type="email" name="mail"><br>
		電話番号：<input type="text" name="tel"><br>
		パスワード：<input type="password" name="pw"><br>
		<input type="submit" value="登録">
	</form>
	<%
		}
	%>
	<footer>
		<div class="wrapper">
			<p><small>&copy; 404 NOT FOUND</small></p>
		</div>
	</footer>
</body>
</html>