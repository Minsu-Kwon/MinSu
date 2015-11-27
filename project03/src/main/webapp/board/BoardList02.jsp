<%-- ������ --%>
<%@page import="java76.pms.domain.Board"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset='UTF-8'>
  <title>�Խ���-���</title>
</head>
<body>
<h1>�Խ���(with JSP)</h1>
<a href='form.html'>�� ��</a><br>
<table border='1'>
  <tr>
    <th>��ȣ</th>
    <th>����</th>
    <th>��ȸ��</th>
    <th>�����</th>
  </tr>
  <%-- jsp:useBean ����: ��ü�� ������ �ڹ� �ڵ带 �����Ѵ�. --%>
  <jsp:useBean id="boards" type="java.util.List<Board> "scope="request"></jsp:useBean>
<%
// ServletRequest �����ҿ� ����� ��� �����͸� ������.
// ServletRequest�� ���۷��� �̸��� request��� JSP �Ծ࿡ ���ǵǾ� �ִ�. 
// ���� � ���� �����̳ʸ� ����ϴ��� �̸��� ���� ���̴�.
for (Board board : boards) {%>
  <tr>
    <td><%=board.getNo()%></td>
    <td><a href='update?no=<%=board.getNo()%>'><%=board.getTitle()%></a></td>
    <td><%=board.getViews()%></td>
    <td><%=board.getCreatedDate()%></td>
  </tr>
<%}%>   
</table>

<jsp:include page="/Copyright.jsp"/>

</body>
</html>