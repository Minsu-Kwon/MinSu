<%-- EL을 이용하여 게시물 데이터 출력하기 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>About Us | Triangle</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/lightbox.css" rel="stylesheet">
<link href="css/animate.min.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">

<!--[if lt IE 9]>
	    <script src="js/html5shiv.js"></script>
	    <script src="js/respond.min.js"></script>
    <![endif]-->
<link rel="shortcut icon" href="images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="images/ico/apple-touch-icon-57-precomposed.png">
</head>
<!--/head-->

<body>
	<jsp:include page="Header.jsp"/>
	<!--/#header-->

	<section id="page-breadcrumb">
		<div class="vertical-center sun">
			<div class="container">
				<div class="row">
					<div class="action">
						<div class="col-sm-12">
							<h1 class="title">글 쓰 기</h1>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--/#page-breadcrumb-->

	<form action='add.do' method='post' enctype="multipart/form-data" id="form1">
		<table border='1' align="center">
			<tr>
				<th>제목</th>
				<td><input type='text' name='title' placeholder="제목을 넣으세요." size="60"></td>
			</tr>
			<tr>
				<th>장소</th>
				<td><select name='add_ty'>
						<option value="internal">국내</option>
						<option value="foreign">해외</option>
				</select></td>
			</tr>
			<tr>
				<th>주소</th>
				<td><input type='text' name='address' size="60"></td>
			</tr>
			<tr>
				<th>여행 비용</th>
				<td><input type='text' name='costs' size="60"></td>
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
				<td><input type='password' name='pwd'></td>
			</tr>
		</table>

		<p>
			<button type='submit'>등록</button>
			<button type="reset">취소</button>
			<button type='submit' name="list" onclick="doList()">뒤로가기</button>
		</p>

	</form>
	
		<script>
		function doList() {
			document.getElementById('form1').action='list.do';
		}
		</script>


	<!--/#team-->

	<jsp:include page="../../../Copyright.jsp" />

	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/lightbox.min.js"></script>
	<script type="text/javascript" src="js/wow.min.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
</body>
</html>
