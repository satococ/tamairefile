<%@ page pageEncoding="Windows-31J"
	contentType="text/html;charset=Windows-31J" %>

<%--JSTL 1.1.2 core �^�O���C�u����--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head><title>�Ȃ񂿂�烌�X</title></head>
<body>
	
	<h1>���X���e���Ă�</h1>
	<table border="1">
		<tr><th>No.</th><th>���e��</th><th>����</th><th>�^�C�g��</th><th>�{��</th><th>������</th></tr>
		<c:forEach var="prof" items="${users}">
			<tr><td>${prof.threadno}</td><td>${prof.name}</td><td>${prof.date}</td><td>${prof.title}</td><td>${prof.text}</td><td>${prof.likes}</td></tr>
		</c:forEach>
	</table>
	
	
	<form method='post' action='tamaire'>
	���[�U�[��<input type='text' name='username'>
	<br>
	�^�C�g��<input type='text' name='title'>
	<br>
	�{��<input type='text' name='text'>
	<br>
	<input type="hidden" name = 'id' value = "${users[0].threadid}">
	<input type='submit' value='���M'>
	</form>
	<a href="/tama/home">top</a>
</body>
</html>
