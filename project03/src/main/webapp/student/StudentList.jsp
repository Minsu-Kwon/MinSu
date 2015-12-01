<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	trimDirectiveWhitespaces="true"%>

<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>학생 목록</title>
</head>
<body>

<jsp:include page="/Header.jsp"></jsp:include>

	<h1>학생 목록</h1>
	<a href='form3.html'>새 프로젝트</a>
	<br>
	<table border='1'>
		<tr>
			<th>이름</th>
			<th>이메일</th>
			<th>전화번호</th>
			<th>학번</th>
		</tr>
		
<c:forEach var="student" items="${students}">		
		<tr>
			<td>${student.name}</td>
			<td><a href='update?email=${student.email}'>${student.name}</a></td>
			<td>${student.tel}</td>
			<td>${student.cid}</td>
		</tr>
</c:forEach>		
	</table>
	<jsp:include page="/Copyright.jsp"/>
</body>
</html>
