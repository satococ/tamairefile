<%@ page pageEncoding="Windows-31J"
	contentType="text/html;charset=Windows-31J" %>

<%--JSTL 1.1.2 core �^�O���C�u����--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head><title>�e�X�g</title></head>
<body>
	<h1>�X���b�h�ꗗ</h1>
	<table border="1">
		<tr><th>�X���b�h��</th><th>�ŏI�X�V</th><th>���o��</th><th>�{����</th><th>URL</th></tr>
		<c:forEach var="prof" items="${users}">
			<tr><td>${prof.name}</td><td>${prof.update}</td><td>${prof.description}</td><td>${prof.count}</td><td><a href="/tama/tamaire?rno=${prof.threadid}">konitiha</a></td></tr>
		</c:forEach>
	</table>
<a href="/tama/home">top</a>

</body>
</html>
