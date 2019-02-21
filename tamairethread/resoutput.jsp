<%@ page pageEncoding="Windows-31J"
	contentType="text/html;charset=Windows-31J" %>

<%--JSTL 1.1.2 core タグライブラリ--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head><title>なんちゃらレス</title></head>
<body>
	
	<h1>レス投稿してね</h1>
	<table border="1">
		<tr><th>No.</th><th>投稿者</th><th>日時</th><th>タイトル</th><th>本文</th><th>いいね</th></tr>
		<c:forEach var="prof" items="${users}">
			<tr><td>${prof.threadno}</td><td>${prof.name}</td><td>${prof.date}</td><td>${prof.title}</td><td>${prof.text}</td><td>${prof.likes}</td></tr>
		</c:forEach>
	</table>
	
	
	<form method='post' action='tamaire'>
	ユーザー名<input type='text' name='username'>
	<br>
	タイトル<input type='text' name='title'>
	<br>
	本文<input type='text' name='text'>
	<br>
	<input type="hidden" name = 'id' value = "${users[0].threadid}">
	<input type='submit' value='送信'>
	</form>
	<a href="/tama/home">top</a>
</body>
</html>
