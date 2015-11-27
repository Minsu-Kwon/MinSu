<%-- EL사용법 (Expression Language)--%>
<%@page import="java.sql.Date"%>
<%@page import="vo.Board"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/plain; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%-- 배열에서 값 꺼내기 --%>
<%
  pageContext.setAttribute("scores", new int[]{100,90,80,70});
  %>

${scores[3]}, ${scores["3"]}
<%-- ${scores.3} 문법 오류 --%>

<%-- List에서 값 꺼내기 --%>
<%
  List<String> list = new ArrayList<>();
  list.add("권민수");
  list.add("이현우");
  list.add("멍청이");
  
  pageContext.setAttribute("list", list);
  %>
---------------------- 
${list[0]}, ${list["1"]}, ${list["2"]}
----------------------
<%-- 맵 객체에서 값 꺼내기--%>
<% // EL 문법 테스트를 위해 보관소에 데이터 넣기
	HashMap<String,Object> map = new HashMap<>();
	map.put("name", "홍길동");
	map.put("kor", 100);
	map.put("math", 90);
	map.put("hist", 80);
	map.put("sum", (100+90+80));
	map.put("aver", ((100+90+80)/3f));

	pageContext.setAttribute("score", map);
	%>
${score.name}, 
${score["kor"]}, 
${score.math}, 
${score["sum"]}
---------------------------------
<%-- 일반 객체의 프로퍼티 값 꺼내기.--%>
<% 
Board board = new Board();
board.setNo(100);
board.setTitle("제목");
board.setContent("내용");
board.setViews(128);
board.setCreatedDate(Date.valueOf("2015-11-27"));

request.setAttribute("boardVo", board);
%>
${boardVo.no}, 
${boardVo.title}, 
${boardVo.content}










