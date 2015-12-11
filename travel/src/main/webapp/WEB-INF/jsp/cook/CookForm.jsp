<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset='UTF-8'>
  <title>게시판-새글</title>
</head>
<body>
<h1>새 글</h1>
<form id="form1" action='add.do' method='post'
      enctype="multipart/form-data">
<table border='1'>
<tr>
  <th>제목</th>
  <td><input type='text' name='title' placeholder="제목을 넣으세요."></td>
</tr>
<tr>
  <th>작성자</th>
  <td><input type='text' name='writer' placeholder="작성자명을 적으세요."></td>
</tr>
<tr>
  <th>준비물</th>
  <td><textarea rows='5' cols='60' 
     name='need' placeholder="준비물을 적으세요."></textarea></td>
</tr>
<tr>
  <th>내용</th>
  <td><textarea rows='10' name='content' cols='60'
       placeholder="내용을 입력하세요."></textarea></td>
</tr>
<tr>
  <th>첨부파일</th>
  <td><input type='file' name='file'></td>
</tr>
<tr>
  <th>암호</th>
  <td><input type='password' name='password'></td>
</tr>
</table>


<p>
<button type='submit' name='add'>등록</button>
<button type='reset'  name='reset'>초기화</button>
<button type='submit' name='list' onclick='goList()'>목록</button>

</p>

</form>

<jsp:include page="/Copyright.jsp"/>

	<script>
		function goList() {
			document.getElementById('form1').action = 'list.do';
		}
	</script>


</body>
</html>


