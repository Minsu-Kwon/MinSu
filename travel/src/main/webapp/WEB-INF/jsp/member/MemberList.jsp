<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt"  prefix="fmt"%>    

<!DOCTYPE html>
<html>
<head>
  <meta charset='UTF-8'>
  <title>회원-목록</title>
</head>
<body>

<jsp:include page="/Header.jsp"/>

<h1>회원목록</h1>
<a href='add.do'>회원가입</a><br>
<table border='1'>
  <tr>
    <th>계정</th>
    <th>이름</th>
    <th>전화</th>
    <th>이메일</th>
    <th>가입일</th>
  </tr>
<c:forEach var="member" items="${members}">    
  <tr>
  	<td>${member.tel}</td>
    <td><a href='detail.do?id=${member.id}'>${member.name}</a></td>
    <td>${member.tel}</td>
    <td>${member.email}</td>
    <td>${member.joindate}</td>
  </tr>
</c:forEach> 
</table>

<jsp:include page="/Copyright.jsp"/>

</body>
</html>    