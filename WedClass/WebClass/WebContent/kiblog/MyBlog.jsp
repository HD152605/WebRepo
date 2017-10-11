<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="org.dimigo.vo.UserVO"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<meta property="og:title" content="My Blog">
<meta property="og:url"
	content="http://127.0.0.1:8080/WebClass/myblog/MyBlog.html">
<meta property="og:description" content="My Blog">
<meta property="og:image" content="image/image.jpg">


<title>My Blog</title>
<!--  
.content{
text-align-last: center; 
}-->
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>



<!-- Bootstrap core CSS -->
<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="../vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Kaushan+Script'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700'
	rel='stylesheet' type='text/css'>
<!-- Custom styles for this template -->
<link href="../css/agency.min.css" rel="stylesheet">
</head>
<body>
	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="#page-top">My
				blog</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fa fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#services">Who Am I</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#portfolio">My hobby</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#about">My Life</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#team">Login</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#contact">Register</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#share">Share</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- header? -->
	<header class="masthead">
		<div class="container">
			<div class="intro-text">
				<div class="intro-lead-in">Welcome To My Blog!</div>
				<div class="intro-heading">My Name Is Ki SeJun.</div>
				<a class="btn btn-xl js-scroll-trigger" href="#services">Welcome</a>
			</div>
		</div>
	</header>

	<!-- article -->
	<div class="jumbotron jumbotron-fluid" id="jumbo-article">
		<div class="container" id="container-article">
			<p class="lead" id="jumbo-article-title">Introduce</p>
			<hr id="hr1">
			<p class="lead" id="jumbo-article-main">
				I'm Korea Digital Media High School student in Ansan. This is my
				blog for the school task.<br />I'm using Bootstrap to make
				it.Teacher said you can do it simple but I will do my best for the
				first page.
			</p>
		</div>
	</div>
	<!-- Services -->
	<section id="services">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading">Who am I</h2>
					<h3 class="section-subheading text-muted">Let me introduce
						myself.</h3>
				</div>
			</div>
			<div class="row text-center">
				<div class="col-md-4">
					<span class="fa-stack fa-4x"> <i
						class="fa fa-circle fa-stack-2x text-primary"></i> <i
						class="fa fa-birthday-cake fa-stack-1x fa-inverse"></i>
					</span>
					<h4 class="service-heading">2000.4.10</h4>
					<p class="text-muted">
						I was born on April 10th, 2000.<br>And I am 18 years old now.
					</p>
				</div>
				<div class="col-md-4">
					<span class="fa-stack fa-4x"> <i
						class="fa fa-circle fa-stack-2x text-primary"></i> <i
						class="fa fa-home fa-stack-1x fa-inverse"></i>
					</span>
					<h4 class="service-heading">Goyang-si</h4>
					<p class="text-muted">
						My hometown is Goyang. <br>I grew up here.
					</p>
				</div>
				<div class="col-md-4">
					<span class="fa-stack fa-4x"> <i
						class="fa fa-circle fa-stack-2x text-primary"></i> <i
						class="fa fa-shield fa-stack-1x fa-inverse"></i>
					</span>
					<h4 class="service-heading">Hacking Defense</h4>
					<p class="text-muted">
						I am a student attending<br>Korea digital media high school.
					</p>
				</div>
			</div>
		</div>
	</section>

	<!-- Portfolio Grid -->
	<section class="bg-light" id="portfolio">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading">My hobby</h2>
					<h3 class="section-subheading text-muted">Let me introduce my
						six hobbies.</h3>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 col-sm-6 portfolio-item">
					<a class="portfolio-link" data-toggle="modal"
						href="#portfolioModal1">
						<div class="portfolio-hover">
							<div class="portfolio-hover-content">
								<i class="fa fa-plus fa-3x"></i>
							</div>
						</div> <img class="img-fluid" src="../image/portfolio/01-thumbnail.jpg"
						alt="">
					</a>
					<div class="portfolio-caption">
						<h4>Shopping</h4>
						<p class="text-muted">I love shopping</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 portfolio-item">
					<a class="portfolio-link" data-toggle="modal"
						href="#portfolioModal2">
						<div class="portfolio-hover">
							<div class="portfolio-hover-content">
								<i class="fa fa-plus fa-3x"></i>
							</div>
						</div> <img class="img-fluid" src="../image/portfolio/02-thumbnail.jpg"
						alt="">
					</a>
					<div class="portfolio-caption">
						<h4>Experience</h4>
						<p class="text-muted">Experience is good</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 portfolio-item">
					<a class="portfolio-link" data-toggle="modal"
						href="#portfolioModal3">
						<div class="portfolio-hover">
							<div class="portfolio-hover-content">
								<i class="fa fa-plus fa-3x"></i>
							</div>
						</div> <img class="img-fluid" src="../image/portfolio/03-thumbnail.jpg"
						alt="">
					</a>
					<div class="portfolio-caption">
						<h4>Cleaning</h4>
						<p class="text-muted">Cleaning my place</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 portfolio-item">
					<a class="portfolio-link" data-toggle="modal"
						href="#portfolioModal4">
						<div class="portfolio-hover">
							<div class="portfolio-hover-content">
								<i class="fa fa-plus fa-3x"></i>
							</div>
						</div> <img class="img-fluid" src="../image/portfolio/04-thumbnail.jpg"
						alt="">
					</a>
					<div class="portfolio-caption">
						<h4>Collection</h4>
						<p class="text-muted">Apple Device Collection</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 portfolio-item">
					<a class="portfolio-link" data-toggle="modal"
						href="#portfolioModal5">
						<div class="portfolio-hover">
							<div class="portfolio-hover-content">
								<i class="fa fa-plus fa-3x"></i>
							</div>
						</div> <img class="img-fluid" src="../image/portfolio/05-thumbnail.jpg"
						alt="">
					</a>
					<div class="portfolio-caption">
						<h4>Design</h4>
						<p class="text-muted">Website Design</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 portfolio-item">
					<a class="portfolio-link" data-toggle="modal"
						href="#portfolioModal6">
						<div class="portfolio-hover">
							<div class="portfolio-hover-content">
								<i class="fa fa-plus fa-3x"></i>
							</div>
						</div> <img class="img-fluid" src="../image/portfolio/06-thumbnail.jpg"
						alt="">
					</a>
					<div class="portfolio-caption">
						<h4>Photography</h4>
						<p class="text-muted">Taking pictures</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- About -->
	<section id="about">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading">My Life</h2>
					<h3 class="section-subheading text-muted">Let me introduce my
						life briefly.</h3>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<ul class="timeline">
						<li>
							<div class="timeline-image">
								<img class="rounded-circle img-fluid" src="../image/about/1.jpg"
									alt="">
							</div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4>2000.4.10</h4>
									<h4 class="subheading">Birthday</h4>
								</div>
								<div class="timeline-body">
									<p class="text-muted">I was born on April 10th, 2000.</p>
								</div>
							</div>
						</li>
						<li class="timeline-inverted">
							<div class="timeline-image">
								<img class="rounded-circle img-fluid" src="../image/about/2.jpg"
									alt="">
							</div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4>2002</h4>
									<h4 class="subheading">World Cup Years</h4>
								</div>
								<div class="timeline-body">
									<p class="text-muted">In 2002, when I was 3 years old, the
										Korea-Japan World Cup was held.</p>
								</div>
							</div>
						</li>
						<li>
							<div class="timeline-image">
								<img class="rounded-circle img-fluid" src="../image/about/3.jpg"
									alt="">
							</div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4>2016</h4>
									<h4 class="subheading">Korea Digital Media High School
										Admission</h4>
								</div>
								<div class="timeline-body">
									<p class="text-muted">In 2016, I entered a digital media
										high school in my dream.</p>
								</div>
							</div>
						</li>
						<li class="timeline-inverted">
							<div class="timeline-image">
								<img class="rounded-circle img-fluid" src="../image/about/4.jpg"
									alt="">
							</div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4>Now 2017</h4>
									<h4 class="subheading">DIMILIFE</h4>
								</div>
								<div class="timeline-body">
									<p class="text-muted">I study hard in dimigo.</p>
								</div>
							</div>
						</li>
						<li class="timeline-inverted">
							<div class="timeline-image">
								<h4>
									My Life <br>Is <br>Good!
								</h4>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</section>

	<!-- Login -->
	<section class="bg-light" id="team">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading">Login</h2>
					<h3 class="section-subheading text-muted">If you're a member
						of my blog, please login.</h3>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12 text-center">
					<form action="/WebClass/bloglogin" id="LoginForm" method="post"
						name="Login">
						<div class="row">
							<div class="col-lg-12 text-center">
								<div class="form-group">
									<input class="form-control mr-sm-2" type="email"
										placeholder="ID" aria-label="id" id="id" required
										<%if (request.getParameter("id") == null) {%> value=""
										<%} else {%> value="<%=request.getParameter("id")%>" <%}%>
										data-validation-required-message="Please enter your id.">
									<p class="help-block text-danger"></p>
								</div>
								<div class="form-group">
									<input class="form-control" id="pwd" type="password"
										placeholder="PWD" required
										data-validation-required-message="Please enter your password.">
									<p class="help-block text-danger"></p>
								</div>
								<div class="clearfix"></div>
								<div class="col-lg-12 text-center">
									<div id="success"></div>
									<button id="LoginButton" class="btn btn-xl" type="submit">Login</button>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>






	<!-- Register -->
	<section id="contact">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading">Register</h2>
					<h3 class="section-subheading text-muted">If you are not a
						member of my blog, please join us.</h3>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<form id="RegisterForm" name="Register">
						<div class="row">
							<div class="col-lg-12 text-center">
								<div class="form">
									<input type="radio" name="class" value="1" checked>First
									Grade <input type="radio" name="class" value="2">Second
									Grade <input type="radio" name="class" value="3">Third
									Grade <br> <br>
								</div>
								<div class="form-group">

									<select name="list">
										<option value="1">[EB] Class Number 1</option>
										<option value="2">[DC] Class Number 2</option>
										<option value="3">[WP] Class Number 3</option>
										<option value="4">[WP] Class Number 4</option>
										<option value="5">[HD] Class Number 5</option>
										<option value="6">[HD] Class Number 6</option>
									</select>
								</div>
								<input class="form-control mr-sm-2" type="text"
									placeholder="Number" aria-label="Number" id="number" required
									data-validation-required-message="Please enter your number.">
								<input class="form-control mr-sm-2" type="text"
									placeholder="Name" aria-label="Name" id="name" required
									data-validation-required-message="Please enter your phone name.">
								<br>
								<br>


							</div>
							<div class="clearfix"></div>
							<div class="col-lg-12 text-center"></div>
							<button id="sendMessageButton" class="btn btn-xl" type="submit">Register</button>

						</div>
					</form>
				</div>

			</div>
		</div>



	</section>
	<section class="bg-light" id="share">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading">Share</h2>
					<h3 class="section-subheading text-muted">Share My Blog!</h3>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12 text-center">
					<span onclick="sharing();">페이스북 공유하기</span>
					<script>
						function sharing() {
							window
									.open('http://www.facebook.com/sharer.php?u=http://127.0.0.1:8080/WebClass/myblog/MyBlog.html');
						}
					</script>
				</div>
			</div>
		</div>
	</section>


	<!-- footer -->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<span class="copyright">Copyright &copy; Ki Se Jun</span> <span
						class="url"
						href="http://127.0.0.1:8080/WebClass/myblog/MyBlog.html"></span>
				</div>
			</div>
		</div>
	</footer>

	<!-- Modal -->
	<div class="modal" id="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Login</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p>Modal body text goes here.</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>



	<!-- Bootstrap core JavaScript -->
	<script src="../vendor/jquery/jquery.min.js"></script>
	<script src="../vendor/popper/popper.min.js"></script>
	<script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Contact form JavaScript -->

	<script src="../js/jqBootstrapValidation.js"></script>
	<script src="../js/contact_me.js"></script>
	<script src="../js/Register.js"></script>

	<!-- Custom scripts for this template -->
	<script src="../js/agency.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.2.1.min.js">
		
	</script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
		integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
		integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
		crossorigin="anonymous"></script>

	<%
		if ("error".equals(request.getAttribute("msg"))) {
	%>

	var myModal = $('#myModal'); myModal.find('.modal-title').text('Sign in
	Error'); myModal.find('.modal-body').text('Wrong Identification');
	myModal.modal();

	<%
		}
	%>

	</script>

</body>
</html>
