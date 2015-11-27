<%-- EL 사용 --%>
<%@page import="java76.pms.domain.Board"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset='UTF-8'>
  <title>게시판-목록</title>
</head>
<body>
<h1>게시판(with JSP)</h1>
<a href='form.html'>새 글</a><br>
<table border='1'>
  <tr>
    <th>번호</th>
    <th>제목</th>
    <th>조회수</th>
    <th>등록일</th>
  </tr>
  <%-- jsp:useBean 적용: 객체를 꺼내는 자바 코드를 제거한다. --%>
  <jsp:useBean id="boards" type="java.util.List<Board>" scope="request"/>
<%
// ServletRequest 보관소에 저장된 결과 데이터를 꺼낸다.
// ServletRequest의 레퍼런스 이름은 request라고 JSP 규약에 정의되어 있다. 
// 따라서 어떤 서블릿 컨테이너를 사용하더라도 이름은 같을 것이다.
for (Board board : boards) { 
  //로컬변수를 사용할 수 없기 때문에 일단 PageContext 보관소에 담는다.
  //목록에서 꺼낸 Board는 다른 JSP가 사용할 것이 아니기 때문에
  //굳이 ServletRequest, HttpSession, ServletContext에 저장할 필요가 없다.
  //해당 페이지 에서만 사용될 데이터라면 절대 다른 보관소에 저장해서는 안된다.
  pageContext.setAttribute("board", board);%>
  <tr>
    <td>${board.no}</td>
    <td><a href='update?no=${board.no}'>${board.title}</a></td>
    <td>${board.views}</td>
    <td>${board.createdDate}</td>
  </tr>
<%}%>   
</table>

<jsp:include page="/Copyright.jsp"/>

</body>
</html>