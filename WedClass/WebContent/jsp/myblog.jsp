<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="org.dimigo.vo.UserVO" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
 <!-- Optional JavaScript -->
   <!-- jQuery first, then Popper.js, then Bootstrap JS -->
   <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
   <script
      src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
   <script
      src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>

<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
<link rel="stylesheet" href="../css/myblog.css">
<title>myblog</title>
<script>
   function menu_over(e) {
      e.setAttribute("calss", "nav-item active");
   }
   function menu_out(e) {
      e.setAttribute("calss", "nav-item"); // <li class="nav-item">
   }
</script>
</head>
<body>
   <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <a class="navbar-brand" href="#">Home</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse"
         data-target="#navbarSupportedContent"
         aria-controls="navbarSupportedContent" aria-expanded="false"
         aria-label="Toggle navigation">
         <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
         <ul class="navbar-nav mr-auto">
            <li class="nav-item" onmouseover="menu_over(this);"
               onmouseout="menu_out(this)"><a class="nav-link" href="MINSUN.html">Who is MINSUN?
                  <span class="sr-only">(current)</span>
            </a></li>
            <li class="nav-item" onmouseover="menu_over(this);"
               onmouseout="menu_out(this)"><a class="nav-link" href="like.html">Favorite</a></li>
            <li class="nav-item" onmouseover="menu_over(this);"
               onmouseout="menu_out(this)"><a class="nav-link"
               href="habi.html">취미</a></li>
         </ul>
         <%
         	UserVO user = (UserVO) session.getAttribute("user");
         	if(user == null){
         %>
         <form class="form-inline my-2 my-lg-0" action="/WebClass/bloglogin" method="post" id="loginForm">
            <input class="form-control mr-sm-2" type="email" placeholder="ID"
               aria-label="ID" name="id" required<%if(request.getParameter("id")==null){ %> value=""
               <%} else{ %>
               value="<%=request.getParameter("id") %>"<%}%>> <input
               class="form-control mr-sm-2" type="password" placeholder="PWD"
               aria-label="PWD" name="pwd" required>
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">로그인</button>
            <button class="btn btn-outline-success my-2 my-sm-0" onclick="location.href='register.html';">회원가입</button>
         </form>
           <%-- 세션이 없는 경우 --%>
    	<%
				} else {
			%>

			<ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex">
				<li class="nav-item dropdown"><a
					class="nav-item nav-link dropdown-toggle mr-md-2" href="#"
					id="bd-versions" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <%=user.getName()%> 님
				</a>
					<div class="dropdown-menu dropdown-menu-right"
						aria-labelledby="bd-versions">
						<form action="/WebClass/bloglogout" method="post">
							<button type="submit" class="dropdown-item">Sign out</button>
						</form>
						<div class="dropdown-divider"></div>
						<button type="button" class="dropdown-item">Action1</button>
						<button type="button" class="dropdown-item">Action2</button>

					</div></li>
			</ul>

			<%
				}
			%>
      </div>
   </nav>
   
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
   
   <div class="container">
      <h1>MY BLOG</h1>
      <p>김민선의 블로그에 방문하신 것을 환영합니다.</p>
   </div>
   
   <script>
   <%
   
   if ("error".equals(request.getAttribute("msg"))) {
   
   %>
   
   var myModal = $('#myModal');
   myModal.find('.modal-title').text('Sign in Error');
   myModal.find('.modal-body').text('Wrong Identification');
   myModal.modal();
   
   <%
   }
   %>
   
    </script>
   </script>
</body>
</html>