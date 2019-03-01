<%@ page pageEncoding="Windows-31J"
	contentType="text/html;charset=Windows-31J" %>

<%--JSTL 1.1.2 core タグライブラリ--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head><title>テスト</title></head>
<body>
	<h1>スレッド一覧</h1>
	<table border="1">
		<tr><th>スレッド名</th><th>最終更新</th><th>見出し</th><th>閲覧数</th><th>URL</th></tr>
		<c:forEach var="prof" items="${users}">
			<tr><td>${prof.name}</td><td>${prof.update}</td><td>${prof.description}</td><td>${prof.count}</td><td><a href="/tama/tamaire?rno=${prof.threadid}">konitiha</a></td></tr>
		</c:forEach>
	</table>
<a href="/tama/home">top</a>

</body>
</html>
