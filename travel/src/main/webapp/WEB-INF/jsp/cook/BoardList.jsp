<%-- EL을 이용하여 게시물 데이터 출력하기 --%>
<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
  <meta charset='UTF-8'>
  <title>게시판-목록</title>
</head>
<body>

<jsp:include page="/Header.jsp"/>

<body>
  <h1>게시물 목록</h1>
  <form action="list.do">
<a href='add.do'>[새 글]</a>
<select name='search'>
  <option value="all">전체</option>
  <option value="title">제목</option>
  <option value="content">내용</option>
  <option value="writer">작성자</option>
</select>
<input type="text" name="word">
<input type="submit" value="검색">
</form>
<table border='1'>
     <tr> 
      <th><a href='list.do?keyword=no&align=desc'>번호
          <c:if test="${param.keyword == 'no'}">*</c:if></a></th> 
      <th><a href='list.do?keyword=title&align=desc'>제목
          <c:if test="${param.keyword == 'title'}">*</c:if></a></th>
      <th><a href='list.do?keyword=writer&align=desc'>작성자
          <c:if test="${param.keyword == 'writer'}">*</c:if></a></th> 
      <th><a href='list.do?keyword=views&align=desc'>조회수
          <c:if test="${param.keyword == 'views'}">*</c:if></a></th>
      <th><a href='list.do?keyword=createDate&align=asc'>작성일
          <c:if test="${param.keyword == 'createDate'}">*</c:if></a></th> 
    </tr> 
<c:forEach var="cook" items="${cooks}">
  <tr>
    <td>${cook.no}</td>
    <td> <img height="60" width="44"  src="../attachfile/s-${cook.attachFile}.png"> 
    <a href='detail.do?no=${cook.no}'>${cook.title}</a></td>
    <td>${cook.writer}</td>
    <td>${cook.views}</td>
    <td>${cook.createdDate}</td>
  </tr>
</c:forEach>  
</table>
<div>
<c:choose>
	<c:when test="${not empty prevPageNo}">
	  <a href='list.do?pageNo=${prevPageNo}&pageSize=${pageSize}'>이전</a>
	</c:when>
	<c:otherwise>이전</c:otherwise>
</c:choose>
<c:choose>
  <c:when test="${not empty nextPageNo}">
    <a href='list.do?pageNo=${nextPageNo}&pageSize=${pageSize}'>다음</a>
  </c:when>
  <c:otherwise>다음</c:otherwise>
</c:choose>
</div>


<jsp:include page="/Copyright.jsp"/>

</body>
</html>





    