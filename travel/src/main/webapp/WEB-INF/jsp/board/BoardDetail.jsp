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
										<div class="post-thumb" align="center">
											<a href="#"><img src="../attachfile/${board.attachFile}"
												class="img-responsive" alt=""></a>
											<div class="post-overlay" align="center">
												<span class="uppercase"><a href="#">14 <br>
														<small>12월</small></a></span>
											</div>
										</div>
										<div class="post-content overflow" align="center">
											<h2 class="post-title bold">
												제목: <input
												name="title" type="text" value="${board.title}" size="35">
											</h2>
											<h2>내용</h2>
											<p>
												 <textarea rows="15" cols="80">
												${board.content}
												</textarea>
											</p>

											<div class="post-bottom overflow" align="center">
												<ul class="nav navbar-nav post-nav">
													<li><a href="#"><i class="fa fa-tag"></i>Creative</a></li>
													<li><a href="#"><i class="fa fa-heart"></i>32 Love</a></li>
													<li><a href="#"><i class="fa fa-comments"></i>3
															Comments</a></li>
												</ul>
											</div>
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
	<!--/#blog-->

	<!--/#footer-->


	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/lightbox.min.js"></script>
	<script type="text/javascript" src="js/wow.min.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
</body>
</html>
