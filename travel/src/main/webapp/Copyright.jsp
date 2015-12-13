<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<section id="action" class="responsive">
	<div class="vertical-center">
		<div class="container">
			<div class="row">
				<div class="action take-tour">
					<div class="col-sm-7 wow fadeInLeft" data-wow-duration="500ms"
						data-wow-delay="300ms">
						<h1 class="title">Welcome to Home-page</h1>
						<p>You can obtain information for travel. </p>
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
<footer id="footer">
	<div class="container">
		<div class="row">
			<div class="col-sm-12 text-center bottom-separator">
				<img src="images/home/under.png" class="img-responsive inline"
					alt="">
			</div>
			<div class="col-md-4 col-sm-6">
				<div class="testimonial bottom">
					<h2>팀원</h2>
					<div class="media">
						<div class="pull-left">
							<a href="#"><img src="images/home/profile1.png" alt=""></a>
						</div>
						<div class="media-body">
							<blockquote>자바 76기</blockquote>
							<h3>
								<a href="#">- 권 민수</a>
							</h3>
						</div>
					</div>
					<div class="media">
						<div class="pull-left">
							<a href="#"><img src="images/home/profile2.png" alt=""></a>
						</div>
						<div class="media-body">
							<blockquote>자바 76기</blockquote>
							<h3>
								<a href="">- 김종원</a>
							</h3>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3 col-sm-6">
				<div class="contact-info bottom">
					<h2>연락처</h2>
					<address>
						E-mail: <a href="mailto:newotc@naver.com">newotc@naver.com</a> <br>
						Phone: +82 (010) 4461-2019 <br> Fax: +82 (02) 3486-7890 7891
						<br>
					</address>

					<h2>주소</h2>
					<address>
						서울시 서초구 서초동 1327-33<br> 비트빌 3층
					</address>
				</div>
			</div>
			<div class="col-md-4 col-sm-12">
				<div class="contact-form bottom">
					<h2>Send a message</h2>
					<form id="main-contact-form" name="contact-form" method="post"
						action="sendemail.php">
						<div class="form-group">
							<input type="text" name="name" class="form-control"
								required="required" placeholder="Name">
						</div>
						<div class="form-group">
							<input type="email" name="email" class="form-control"
								required="required" placeholder="Email Id">
						</div>
						<div class="form-group">
							<textarea name="message" id="message" required="required"
								class="form-control" rows="8" placeholder="Your text here"></textarea>
						</div>
						<div class="form-group">
							<input type="submit" name="submit" class="btn btn-submit"
								value="Submit">
						</div>
					</form>
				</div>
			</div>
			<div class="col-sm-12">
				<div class="copyright-text text-center">
					<p>&copy; 비트캠프 Java76기</p>
					<p>by 김종원 & 권민수</p>
				</div>
			</div>
		</div>
	</div>
</footer>