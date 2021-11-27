<%@ page language="java" contentType="text/html; charset=UTF-8"ㅇ	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="/WEB-INF/views/common/head.jsp" />
	<title>로그인┃SEMO</title>
</head>
<body>
	<!-- Navigation-->
	<%
		String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	%>
	<nav class="navbar navbar-expand-lg navbar-light fixed-top shadow-sm" id="mainNav">
                <div class="container px-5">
                    <a class="navbar-brand fw-bold fs-4" href="main" ><img src="image/favicon.png" style="width: 25px;" /> SEMO</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>

	 	  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">영양제 소개</a>
                                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="infoENS">현대인 필수 영양제</a></li>
									<li><a class="dropdown-item" href="infoCNS">증상별 영양제 추천</a></li>
									<li><a class="dropdown-item" href="infoNGNS">같이 섭취하면 좋지 않은 영양제</a></li>
                                </ul>
                            </li>
                            <li class="nav-item"><a class="nav-link me-lg-3" href="bbs2">Q&A 게시판</a></li>
							<li class="nav-item"><a class="nav-link me-lg-3" href="bbs">후기 게시판</a></li>
							<li class="nav-item"><a class="nav-link me-lg-3" href="newsVideo">NEWS & VIDEO</a></li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">마이 페이지</a>
                                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                   	<li><a class="dropdown-item" href="myPage">회원 정보 수정</a></li>
								</ul>
							</li>
						</ul>
	<%
  		if(userID == null){
 	%>
		<ul class="navbar-nav ms-sm-5">
			<li class="nav-item dropdown">
			<a class="nav-link dropdown-toggle btn btn-primary fw-bold" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">접속하기</a>
				<ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
					<li class="active"><a class="dropdown-item" href="login">로그인</a></li>
					<!-- active : 선택이 됨을 알려줌 -->
					<li><a class="dropdown-item" href="join">회원가입</a></li>
				</ul></li>
		</ul>
	<%
		} else {
	%>
		<ul class="navbar-nav ms-sm-5">
			<li class="nav-item dropdown">
			<a class="nav-link dropdown-toggle btn btn-primary fw-bold" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">회원관리</a>
				<ul class="dropdown-menu">
					<li><a class="dropdown-item" href="logoutAction">로그아웃</a></li>
				</ul></li>
		</ul>
	<%
		}
	%>
		</div>
		</div>
	</nav>
	<!-- /Navigation-->
 	<!--Login-->
		<div class="container">
		<div class="row">
			<div class="container-join-login">
				<div
					class="card flex-row my-5 border-0 shadow rounded-3 overflow-hidden">
					<div class="card-img-left d-none d-md-flex"></div>
					<div class="card-body p-4 p-sm-5">
						<h3 class="card-title text-center mb-5 fw-bold fs-3">로그인</h3>
						<form name="login_form" method="post" action="LoginController">

							<div class="form-floating mb-3">
								<input type="text" class="form-control" name="userID" placeholder="4~10자, 영문, 숫자" maxlength="10">
								<label for="userID">아이디</label>
								<div id="alert_userID" class="form_text_alert"></div>
							</div>

							<div class="form-floating mb-3">
								<input type="password" class="form-control" name="userPassword" placeholder="8~12자리 숫자, 영문자, 특수문자 중 2개 조합" maxlength="12">
								<label for="userPassword">비밀번호</label>
								<div id="alert_userPassword" class="form_text_alert"></div>
							</div>

							<hr class="my-3">
							<div class="d-grid mb-2">
   							 	<input type="submit" class="btn btn-lg btn-primary btn-login fw-bold" value="로그인">
   							 	<div id="alert_user" class="form_text_alert"></div>
   							</div>

							<a class="d-block text-center mt-2 small text-dark" href="join">아직 회원가입 전인가요?</a>

							<hr class="my-3">

							<div class="d-grid mb-2">
								<button class="btn btn-lg btn-kakaotalk btn-login fw-bold text-uppercase" type="submit">
									<i class="fas fa-comment me-2"></i> Login with Kakao
								</button>
							</div>

							<div class="d-grid mb-2">
								<button class="btn btn-lg btn-google btn-login fw-bold text-uppercase" type="submit">
									<i class="fab fa-google me-2"></i> Login with Google
								</button>
							</div>

							<div class="d-grid mb-2">
								<button class="btn btn-lg btn-facebook btn-login fw-bold text-uppercase" type="submit">
									<i class="fab fa-facebook-f me-2"></i> Login with Facebook
								</button>
							</div>

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer> <jsp:include page="/WEB-INF/views/common/footer.jsp" /> </footer>
</body>
</html>