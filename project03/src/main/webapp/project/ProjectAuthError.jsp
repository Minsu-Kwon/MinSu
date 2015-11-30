<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset='UTF-8'>
  <meta http-equiv="Refresh" content="2;uri=list">
  <title>프로젝트-오류정보</title>
</head>
<body>
  <h1>오류-상세정보</h1>
  <p>
    <c:choose>
      <c:when test="${errorCode == '401'}">
          프로젝트 형식에 맞게 다시 입력하세요
      </c:when>
      <c:otherwise>
        알 수 없는 오류
      </c:otherwise>
    </c:choose>
  </p>
  <jsp:include page="/Copyright.jsp"/>
</body>

</html>