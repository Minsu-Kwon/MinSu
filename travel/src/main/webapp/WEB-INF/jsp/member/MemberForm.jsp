<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset='UTF-8'>
  <title>회원-등록</title>
</head>
<body>
<h1>새 회원</h1>
<form id='form1' action='add.do' method='post'>
<table border='1'>
<tr>
  <th>이름</th>
  <td><input type='text' name='name' size='30'></td>
</tr>
<tr>
  <th>아이디</th>
  <td><input type='text' name='id' size='30'></td>
</tr>
<tr>
  <th>암호</th>
  <td><input type='password' name='pwd'></td>
</tr>
<tr>
  <th>이메일</th>
  <td><input type='text' name='email' size='30'></td>
</tr>
<tr>
  <th>전화</th>
  <td><input type='text' name='tel' size='30'></td>
</tr>
</table>

<p>
<button type='submit'>등록</button>
<button type='reset'>취소</button>
<button type='submit' name='list' onclick='goList()'>목록</button>
</p>

</form>

<script>
function goList() {
document.getElementById('form1').action = 'list.do';
}
</script>

<jsp:include page="/Copyright.jsp"/>

</body>
</html>