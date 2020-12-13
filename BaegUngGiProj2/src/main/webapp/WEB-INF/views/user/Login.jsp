<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>

<!-- 여기에 자기가 css새로운거 적용시려고 하면 link걸어서 추가하면 됩니다 -->
<link rel="stylesheet" href="<c:url value="/css/test.css"/>">
<!-- 여기에 자기가 css새로운거 적용시려고 하면 link걸어서 추가하면 됩니다 -->

<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>

<!-- ※colorlib-main으로 일단 감싸고 안에다가 작업해야 왼쪽 탑에 안먹히고 작업할 수 있어요 -->
<!-- 설명이 이해가 잘 안되시면  따로 연락주세요...-->

<div id="colorlib-main" style="padding-top: 100px"><!-- 위에 딱 붙는게 싫어서 임시로 padding-top: 100px 주었음 수정하고싶으면 수정  -->
	
	<div class="container">
		<div class="row" style="margin: 15px;">

			<div class="col-md-12">
				<h2 class="contact-title offset-md-2 col-md-6" style="margin-bottom: 30px">로그인</h2>
			</div>

			<!-- 로그인 시작 -->
			<div class="col-md-12">
				<form class="form-contact contact_form" action="<c:url value='/user/loginOk.do'/>" method="post" id="loginform">
					<div class="row">

						<div class="offset-md-2 col-md-6">
							<div class="form-group">
								<input class="form-control" name="id" id="id" type="text"
									placeholder='아이디를 입력해주세요'>
							</div>
						</div>

						<div class="offset-md-2 col-md-6">
							<div class="form-group">
								<input class="form-control" name="pwd" id="pwd"
									type="password" placeholder='비밀번호를 입력해주세요'>
							</div>
						</div>


					</div>
				</form>
				
				<div class="row">
					<div class="offset-md-2 col-md-6">
						<input type="button" value="로그인" class="button button-contactForm btn_1 btn-block" id="btnLogin"/>
					</div>
				</div>

				<!-- 네이버아이디로로그인 버튼 노출 영역 -->
				<!-- 
				<div class="row" style="padding-top: 20px"> 
					<div class="offset-md-2 col-md-8">
						<div id="naver_id_login"></div>
					</div>
				</div>
				-->
				<!-- //네이버아이디로로그인 버튼 노출 영역 -->
				<!-- 
				<script type="text/javascript">
					var naver_id_login = new naver_id_login(
							"M2yF8W0ySsEu9i_LiFEp",
							"http://localhost:6060/baeg/");
					var state = naver_id_login.getUniqState();
					naver_id_login.setButton("white", 2, 40);
					naver_id_login.setDomain("http://localhost:6060/baeg/");
					naver_id_login.setState(state);
					naver_id_login.setPopup();
					naver_id_login.init_naver_id_login();
				</script>
				-->
				
				
				<%
					String clientId = "M2yF8W0ySsEu9i_LiFEp";//애플리케이션 클라이언트 아이디값";
				String redirectURI = URLEncoder.encode("http://localhost:6060/baeg/", "UTF-8");
				SecureRandom random = new SecureRandom();
				String state = new BigInteger(130, random).toString();
				String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code";
				apiURL += "&client_id=" + clientId;
				apiURL += "&redirect_uri=" + redirectURI;
				apiURL += "&state=" + state;
				session.setAttribute("state", state);
				%>
				
				<div class="row" style="padding-top: 30px;">
					<div class="offset-md-2 col-md-5">
						<a href="<%=apiURL%>"><img height="50"
							src="http://static.nid.naver.com/oauth/small_g_in.PNG" /></a>
					</div>
				</div>


				<div class="row">
					<a href="<c:url value="/user/join.do"/>" class="offset-md-2 col-md-5" style="margin-top: 30px; color: #0C3E72" >회원가입 하시겠습니까?</a>
				</div>
				<div class="row">
					<a href="#" class="offset-md-2 col-md-6" style="margin-top: 10px; color: #0C3E72" >아이디 찾기</a>
				</div>
				
				<div>${state }</div>
				

			</div>
			<!-- 로그인 끝 -->
				

		</div>
	</div>
	
</div><!-- END COLORLIB-PAGE -->
