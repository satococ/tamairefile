<%@ page pageEncoding="Windows-31J"
	contentType="text/html;charset=Windows-31J" %>

<%--JSTL 1.1.2 core �^�O���C�u����--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head><title>�X���b�h�쐬</title></head>
<body>

	<form method='post' action='Create'>
	�X���b�h��<input type='text' name='threadname'>
	<br>
	�X���b�h���o��<input type='text' name='description'>
	<br>
	���[�U�[��<input type='text' name='username'>
	<br>
	�^�C�g��<input type='text' name='title'>
	<br>
	�{��<input type='text' name='text'>
	<br>
	<select name="theme">
	<option value=0>�X�|�[�c</option>
	<option value=1>�Y�݁E���k</option>
	<option value=2>�����E�O����</option>
	<option value=3>���s�E�ό�</option>
	<option value=4>�Q�[��</option>
	<option value=5>�����E���R</option>
	</select>
	<input type='submit' value='�쐬'>
	
<a href="/tama/home">top</a>
</body>
</html>