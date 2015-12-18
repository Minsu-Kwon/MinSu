<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>        
<body>
	<header id="header">      
        <div class="container">
            <div class="row">
                <div class="col-sm-12 overflow">
                   <div class="social-icons pull-right">
                        <ul class="nav nav-pills">
                            <li><a href=""><i class="fa fa-facebook"></i></a></li>
                            <li><a href=""><i class="fa fa-twitter"></i></a></li>
                            <li><a href=""><i class="fa fa-google-plus"></i></a></li>
                            <li><a href=""><i class="fa fa-dribbble"></i></a></li>
                            <li><a href=""><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                    </div> 
                </div>
             </div>
        </div>
        <div class="navbar navbar-inverse" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                    <a class="navbar-brand" href="../index.jsp">
                    	<h1><img src="images/logo.png" alt="logo"></h1>
                    </a>
                    
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active"><a href="../index.jsp">Home</a></li>
                        <li class="dropdown"><a href="#">About<i class="fa fa-angle-down"></i></a>
                            <ul role="menu" class="sub-menu">
                                <li><a href="../aboutus2.jsp">홈페이지 소개</a></li>
                                <li><a href="../coming-soon.jsp">제공하는 서비스</a></li>
                                <li><a href="../coming-soon.jsp">회사 주소</a></li>
                                <li><a href="../coming-soon.jsp">Coming Soon..</a></li>
                                <li><a href="../coming-soon.jsp">Coming Soon..</a></li>
                                <li><a href="../coming-soon.jsp">Coming Soon..</a></li>
                                <li><a href="../coming-soon.jsp">Coming Soon</a></li>
                            </ul>
                        </li>                  
                        <li class="dropdown"><a href="#">여행지 추천<i class="fa fa-angle-down"></i></a>
                            <ul role="menu" class="sub-menu">
                                <li><a href="list.do">관리자 추천</a></li>
                                <li><a href="list.do">회원 추천</a></li>
                                <li><a href="list.do">여행 후기</a></li>
                                <li><a href="../coming-soon.jsp">Coming Soon</a></li>
                                <li><a href="../coming-soon.jsp">Coming Soon</a></li>
                                <li><a href="../coming-soon.jsp">Coming Soon</a></li>
                            </ul>
                        </li>
                        <li class="dropdown"><a href="portfolio.html">Coming Soon <i class="fa fa-angle-down"></i></a>
                            <ul role="menu" class="sub-menu">
                                <li><a href="../coming-soon.jsp">Coming Soon</a></li>
                                <li><a href="../coming-soon.jsp">Coming Soon</a></li>
                                <li><a href="../coming-soon.jsp">Coming Soon</a></li>
                                <li><a href="../coming-soon.jsp">Coming Soon</a></li>
                                <li><a href="../coming-soon.jsp">Coming Soon</a></li>
                                <li><a href="../coming-soon.jsp">Coming Soon</a></li>
                            </ul>
                        </li>                         
                        <li><a href="">로그인</a></li>                    
                    </ul>
                </div>
                <div class="search">
                    <form role="form">
                        <i class="fa fa-search"></i>
                        <div class="field-toggle">
                            <input type="text" class="search-form" autocomplete="off" placeholder="Search">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </header>