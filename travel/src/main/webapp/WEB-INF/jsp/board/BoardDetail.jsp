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
<title>Blog Details | Triangle</title>
<link rel="stylesheet" type="text/css" href="../css/common.css">
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
<script type="text/javascript">
	var switchTo5x = true;
</script>
<script type="text/javascript"
	src="http://w.sharethis.com/button/buttons.js"></script>
<script type="text/javascript">
	stLight.options({
		publisher : "7e8eb33b-fbe0-4915-9b93-09490e3d10df",
		doNotHash : false,
		doNotCopy : false,
		hashAddressBar : false
	});
</script>
</head>
<!--/head-->

<body>
	<jsp:include page="Header.jsp" />

	<section id="page-breadcrumb">
		<div class="vertical-center sun">
			<div class="container">
				<div class="row">
					<div class="action">
						<div class="col-sm-12">
							<h1 class="title">관리자 추천</h1>
							<p>Manager Recommendation</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!--/#page-breadcrumb-->

	<c:if test="${not empty board}">
		<form id='form1' action='update.do' method='post'
			enctype="multipart/form-data">
			<section id="blog-details" class="padding-top">
				<div class="container">
					<div class="row">
						<div class="col-md-9 col-sm-7">
							<div class="row">
								<div class="col-md-12 col-sm-12">
									<div class="single-blog blog-details two-column">
										<div class="post-thumb">
											<a href="#"><img src="../attachfile/${board.attachFile}"
												class="img-responsive" alt=""></a>
											<div class="post-overlay" align="center">
												<span class="uppercase"><a href="#">14 <br>
														<small>12월</small></a></span>
											</div>
										</div>
										<form id='form1' action='update.do' method='post'
											enctype="multipart/form-data">
											<div class="post-content overflow" align="center">
												<h2 class="post-title bold">
													여행 장소: <input name="title" type="text"
														value="${board.title}" size="35">
												</h2>
												<h3>
													<c:if test="${board.add_ty} == internal">국내</c:if>
													<c:if test="${board.add_ty} == foreign">해외</c:if>
													주소:<input size="20" name="address" type="text"
														value="${board.address}"><br> 여행경비:<input
														size="40" name="address" type="text"
														value='${board.costs}'>
												</h3>


												<textarea rows="15" cols="80">
												${board.content}
												</textarea>
												<br> 첨부파일: <a href='../attachfile/${board.attachFile}'>${board.attachFile}</a><br>
												<input type='file' name='file'> <input type='hidden'
													name='attachFile' value='${board.attachFile}'><br>
												암호: <input id='pwd' type='password' name='pwd'>
												<button name="reset" type="reset">취소</button>
												<button name="list" type="list" onclick="doList()">목록</button>
												<button name='update' type='submit'>변경</button>
												<a id='aDelete' href='delete.do?bno=${board.bno}'
													class='button2' onclick='deleteBoard()'>삭제</a>

												<div class="post-bottom overflow" align="center">
													<ul class="nav navbar-nav post-nav">
														<li><a href="#"><i class="fa fa-tag"></i>Creative</a></li>
														<li><a href="#"><i class="fa fa-heart"></i>32
																Love</a></li>
														<li><a href="#"><i class="fa fa-comments"></i>3
																Comments</a></li>
													</ul>
												</div>
										</form>

										<script>
											function deleteBoard() {
												// 암호 텍스트 상자에 입력된 내용을 가져온다.
												var pwd = document
														.getElementById('pwd').value;

												// a 태그의 href 값을 가져와서 "&password=암호" 문자열을 붙인다.
												var href = document
														.getElementById('aDelete').href
														+ "&pwd=" + pwd;

												// a 태그의 href 값을 암호 파라미터가 붙은 값으로 변경한다. 
												document
														.getElementById('aDelete').href = href;
											}
										</script>

										<script>
											function doList() {
												document
														.getElementById('form1').action = 'list.do';
											}
										</script>
										<div class="blog-share">
											<span class='st_facebook_hcount'></span> <span
												class='st_twitter_hcount'></span> <span
												class='st_linkedin_hcount'></span> <span
												class='st_pinterest_hcount'></span> <span
												class='st_email_hcount'></span>
										</div>
										<div class="author-profile padding">
											<div class="row"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				</div>
			</section>
		</form>
	</c:if>
	<jsp:include page="../../../Copyright.jsp" />


	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/lightbox.min.js"></script>
	<script type="text/javascript" src="js/wow.min.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
</body>
</html>
