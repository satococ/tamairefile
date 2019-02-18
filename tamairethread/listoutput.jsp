<%@ page pageEncoding="Windows-31J"
	contentType="text/html;charset=Windows-31J" %>

<%--JSTL 1.1.2 core タグライブラリ--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head><title>登録されたユーザー</title></head>
<body>
	
	<h1>登録されたユーザー</h1>
	<table border="1">
		<tr><th>ユーザー名</th><th>パスワード</th></tr>
		<c:forEach var="prof" items="${users}">
			<tr><td>${prof.threadno}</td><td>${prof.name}</td><td>${prof.date}</td><td>${prof.title}</td><td>${prof.text}</td><td>${prof.likes}</td></tr>
		</c:forEach>
	</table>
	<form method='post' action='tamaire'>
	ユーザー名<input type='text' name='name'>
	<br>
	タイトル<input type='text' name='title'>
	<br>
	本文<input type='text' name='text'>
	<br>
	<input type='submit' value='送信'>
	</form>
	
</body>
</html>
