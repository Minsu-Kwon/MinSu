<%-- 게시물 상세정보 및 변경 폼 --%>
<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
  <meta charset='UTF-8'>
  <title>게시판-상세정보</title>
  <link rel="stylesheet" type="text/css" href="../css/common.css">
</head>
<body>

<jsp:include page="/Header.jsp"/>

<h1>게시물 정보</h1>

<c:if test="${not empty cook}">
<form id='form1' action='update.do' method='post'
      enctype="multipart/form-data">
<table border='1'>
<tr>
  <th>번호</th>
  <td><input type='text' name='no' size="60" value='${cook.no}' readonly></td>
</tr>
<tr>
  <th>제목</th>
  <td><input type='text' name='title' size="60" value='${cook.title}'></td>
</tr>
<tr>
  <th>작성자</th>
  <td><input type='text' name='writer' size="60" value='${cook.writer}'></td>
</tr>
<tr>
  <th>준비물</th>
  <td><textarea name='need'rows='5' cols='60' >${cook.need}</textarea>></td>
</tr>
<tr>
<th>사진</th>
<td><img width='200' height='300' 
      src='../attachfile/${(empty cook.attachFile)?"anonymous.png":cook.attachFile}'><br>
      <input type='file' name='file'>
      <input type='hidden' name='attachFile' value='${cook.attachFile}'></td>
</tr>
<tr>
  <th>내용</th>
  <td><textarea rows='20' name='content' 
      cols='60'>${cook.content}</textarea></td>
</tr>
<tr>
  <th>조회수</th>
  <td>${cook.views}</td>
</tr>
<tr>
  <th>등록일/수정일</th>
  <td>${cook.createdDate}		/		${cook.changeDate}</td>
</tr>
<tr>
  <th>암호</th>
  <td><input size="60" id='inputPassword' type='password' name='password'></td>
</tr>
</table>
<p>
<button name='update' type='submit' class='button1'>변경</button>
<a id='aDelete' href='delete.do?no=${cook.no}' class='button2' onclick='deleteBoard()'>삭제</a>
<button type='reset' class='button1'>취소</button>
<button onclick="goList()" type='list' class='button1'>목록</button>
</p>
</form>
</c:if>

<c:if test="${empty cook}">
<p>해당 번호의 게시물을 찾을 수 없습니다.</p>
</c:if>

<jsp:include page="/Copyright.jsp"/>
<script>
function deleteBoard() {
	var join=confirm("정말 삭제하시겠습니까?") {
		if (join == true) {
	var password = document.getElementById('inputPassword').value;
	var href = document.getElementById('aDelete').href 
	           + "&password=" + password;
	document.getElementById('aDelete').href = href;
		} else {
			document.getElementById('aDelete').action = 'list.do';
		}
	}
}
</script>

<script>
function goList() {
document.getElementById('form1').action = 'list.do';
}
</script>


</body>
</html>
    