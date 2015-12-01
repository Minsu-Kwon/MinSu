<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>학생 상세 정보</title>
</head>
<body>

	<jsp:include page="/Header.jsp"></jsp:include>
	<h1>학생 상세 정보(with JSP+EL+JSTL)</h1>
	<c:if test="${not empty student}">
		
		<form id='form1' action='update' method='post'>
			<table border='1'>
				<tr>
					<th>이름</th>
					<td><input type='text' name='name' value='${student.name}'></td>
				</tr>
				<tr>
					<th>이메일</th>
					<td><input type='text' name='email' value='${student.email}'
						readonly></td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td><input type='text' name='tel' value='${student.tel}'></td>
				</tr>
				<tr>
					<th>학번</th>
					<td><input type='text' name='cid' value='${student.cid}'></td>
				</tr>
			</table>
			<p>
				<button name='update' type='submit'>변경</button>
				<button name='delete' type='submit' onclick='deleteStudent()'>삭제</button>
			</p>
		</form>
	</c:if>
	<c:if test="${empty student}">
		<p>해당 학생을 찾을 수 없습니다.</p>
	</c:if>

	<jsp:include page="/Copyright.jsp" />

	<script>
		function deleteStudent() {
			document.getElementById('form1').action = 'delete';
		}
	</script>
</body>
</html>