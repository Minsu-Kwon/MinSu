<%-- EL을 이용하여 게시물 데이터 출력하기 --%>
<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>게시판</title>
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
	
	<!--/#include header-->


	<section id="page-breadcrumb">
		<div class="vertical-center sun">
			<div class="container">
				<div class="row">
					<div class="action">
						<div class="col-sm-12">
							<h1 class="title">관리자 추천 게시판!</h1>
							<p>Manager recommend</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--/#page-breadcrumb-->

	<section id="projects">
		<div class="container">
			<div class="row">
				<div class="col-md-9 col-sm-8">
					<div class="row">
					
						<ul class="portfolio-filter text-center">
							<li><a class="btn btn-default active" href="#"
								data-filter="*">All</a></li>
							<li><a class="btn btn-default" href="#"
								data-filter=".branded">국내</a></li>
							<li><a class="btn btn-default" href="#"
								data-filter=".design"> 해외</a></li>
						</ul>
						
						<!--/#portfolio-filter-->
						
						<c:forEach var="board" items="${boards}">
						
						<div class="portfolio-items">
							<div
								class="col-xs-6 col-sm-6 col-md-4 portfolio-item branded logos">
								<div class="portfolio-wrapper">
									<div class="portfolio-single">
										<div class="portfolio-thumb">
											<img src="${board.attachFile}" class="img-responsive"
												alt="">
										</div>
										<div class="portfolio-view">
											<ul class="nav nav-pills">
												<li><a href="portfolio-details.html"><i
														class="fa fa-link"></i></a></li>
												<li><a href="${board.attachFile}"
													data-lightbox="example-set"><i class="fa fa-eye"></i></a></li>
											</ul>
										</div>
									</div>
									<div class="portfolio-info ">
										<h2>${board.title}</h2>
									</div>
								</div>
							</div>
						</div>
						</c:forEach>
						
						
						<div class="portfolio-pagination">
							<ul class="pagination">
								<li><a href="#">left</a></li>
								<li class="active"><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#">6</a></li>
								<li><a href="#">7</a></li>
								<li><a href="#">8</a></li>
								<li><a href="#">9</a></li>
								<li><a href="#">right</a></li>
							</ul>
						</div>
						
					</div>
				</div>
			</div>
		</div>
	</section>

	<section id="action" class="responsive">
		<div class="vertical-center">
			<div class="container">
				<div class="row">
					<div class="action take-tour">
						<div class="col-sm-7 wow fadeInLeft" data-wow-duration="500ms"
							data-wow-delay="300ms">
							<h1 class="title">Triangle Corporate Template</h1>
							<p>A responsive, retina-ready &amp; wide multipurpose
								template.</p>
						</div>
						<div class="col-sm-5 text-center wow fadeInRight"
							data-wow-duration="500ms" data-wow-delay="300ms">
							<div class="tour-button">
								<a href="#" class="btn btn-common">위로 가기</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!--/#projects-->


	
	<!--/#include copyright-->


	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jquery.isotope.min.js"></script>
	<script type="text/javascript" src="js/lightbox.min.js"></script>
	<script type="text/javascript" src="js/wow.min.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
</body>
</html>





    