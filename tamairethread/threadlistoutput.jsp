<%@ page pageEncoding="Windows-31J"
	contentType="text/html;charset=Windows-31J" %>

<%--JSTL 1.1.2 core �^�O���C�u����--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head><title>�e�X�g</title></head>
<body>
	<h1>�X���b�h�ꗗ</h1>
	<table border="1">
		<tr><th>���[�U�[��</th><th>�p�X���[�h</th></tr>
		<c:forEach var="prof" items="${users}">
			<tr><td>${prof.name}</td><td>${prof.update}</td><td>${prof.description}</td><td>${prof.count}</td></tr>
			<tr><td><a href="/tama/tamaire?rno=${prof.threadid}">konitiha</a></td></tr>
		</c:forEach>
	</table>

<a href="/tama/tamaire?rno=0">konitiha</a>

</body>
</html>
