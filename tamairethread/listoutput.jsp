<%@ page pageEncoding="Windows-31J"
	contentType="text/html;charset=Windows-31J" %>

<%--JSTL 1.1.2 core �^�O���C�u����--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head><title>�o�^���ꂽ���[�U�[</title></head>
<body>
	
	<h1>�o�^���ꂽ���[�U�[</h1>
	<table border="1">
		<tr><th>���[�U�[��</th><th>�p�X���[�h</th></tr>
		<c:forEach var="prof" items="${users}">
			<tr><td>${prof.threadno}</td><td>${prof.name}</td><td>${prof.date}</td><td>${prof.title}</td><td>${prof.text}</td><td>${prof.likes}</td></tr>
		</c:forEach>
	</table>
	<form method='post' action='tamaire'>
	���[�U�[��<input type='text' name='name'>
	<br>
	�^�C�g��<input type='text' name='title'>
	<br>
	�{��<input type='text' name='text'>
	<br>
	<input type='submit' value='���M'>
	</form>
	
</body>
</html>
