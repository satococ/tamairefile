<%@ page pageEncoding="Windows-31J"
	contentType="text/html;charset=Windows-31J" %>

<%--JSTL 1.1.2 core タグライブラリ--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head><title>スレッド作成</title></head>
<body>

	<form method='post' action='Create'>
	スレッド名<input type='text' name='threadname'>
	<br>
	スレッド見出し<input type='text' name='description'>
	<br>
	ユーザー名<input type='text' name='username'>
	<br>
	タイトル<input type='text' name='title'>
	<br>
	本文<input type='text' name='text'>
	<br>
	<select name="theme">
	<option value=0>スポーツ</option>
	<option value=1>悩み・相談</option>
	<option value=2>料理・グルメ</option>
	<option value=3>旅行・観光</option>
	<option value=4>ゲーム</option>
	<option value=5>動物・自然</option>
	</select>
	<input type='submit' value='作成'>
	
<a href="/tama/home">top</a>
</body>
</html>