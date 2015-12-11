<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset='UTF-8'>
  <title>회원- 상세정보</title>
  <link rel="stylesheet" type="text/css" href="../css/common.css">
</head>
<body>

<jsp:include page="/Header.jsp"/>

<h1>회원정보</h1>
	<form id='form1' action='update.do' method='post'>
		<c:if test="${not empty member}">
			<table border='1'>
				<tr>
					<th>아이디</th>
					<td><input type='text' name='name' value='${member.id}'
						readonly="readonly"></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type='text' name='name' value='${member.name}'></td>
				</tr>
				<tr>
					<th>이메일</th>
					<td><input type='text' name='email' value='${member.email}'
						readonly></td>
				</tr>
				<tr>
					<th>전화</th>
					<td><input type='text' name='tel' value='${member.tel}'></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type='password' name='pwd' value='${member.pwd}'></td>
				</tr>
			</table>
			<p>
				<button name='update' type='submit' class='button1'>변경</button>
				<a href='delete.do?email=${member.id}' class='button2'>삭제</a>
			</p>
	</form>
	</c:if>

	<jsp:include page="/Copyright.jsp"/>

</body>
</html>
    