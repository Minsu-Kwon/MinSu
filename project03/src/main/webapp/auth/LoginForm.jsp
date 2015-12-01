<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">

<title>로그인</title>
</head>
<body>
<h1>로그인</h1>
<form action="Login" method="post">
<!-- 외부에 url로 노출되는 get방식 대신에 post방식을 사용한다 -->
이메일: <input type="text" name="email" value="${cookie.email.value}"><br>
암호: <input type="password" name="password"><br>
<!-- 암호와 이메일은 값을 주지 않았을 때는 빈 문자열이 출력된다. -->
<input type="submit" value="로그인">
<input type="checkbox" name="saveEmail"
${(empty cookie.email)?"":"checked"}>이메일 저장<br>
<!-- 이메일이 비어있다면 빈 문자열을 체크박스 안에 넣어주고 값이 있다면 checked가 된다. -->
</form>
</body>
</html>