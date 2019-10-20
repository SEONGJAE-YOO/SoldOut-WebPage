<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>

<!doctype html>

<html>

  <head>

    <title>SOLD OUT 신발사이트</title>

    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- 부트스트랩 CSS 추가하기 -->

    <link rel="stylesheet" href="./css/bootstrap.min.css">

    <!-- 커스텀 CSS 추가하기 -->

    <link rel="stylesheet" href="./css/custom.css">

  </head>
  
  <body>
  

    <nav class="navbar navbar-expand-lg navbar-light bg-light">

      <a class="navbar-brand" href="index.jsp">SOLD OUT 신발 사이트</a>

      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar">

        <span class="navbar-toggler-icon"></span>

      </button>

      <div class="collapse navbar-collapse" id="navbar">

        <ul class="navbar-nav mr-auto">

          <li class="nav-item active">

            <a class="nav-link" href="index.jsp">메인</a>

          </li>

          <li class="nav-item dropdown">

            <a class="nav-link dropdown-toggle" id="dropdown" data-toggle="dropdown">

              회원 관리

            </a>

            <div class="dropdown-menu" aria-labelledby="dropdown">

              <a class="dropdown-item" href="userLogin.jsp">로그인</a>

              <a class="dropdown-item" href="userJoin.jsp">회원가입</a>

              <a class="dropdown-item" href="userLogout.jsp">로그아웃</a>

            </div>

          </li>

        </ul>

        <form action="./index.jsp" method="get" class="form-inline my-2 my-lg-0">

          <input type="text" name="search" class="form-control mr-sm-2" placeholder="내용을 입력하세요.">

          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">검색</button>

        </form>

      </div>

    </nav>

    <div class="container mt-3" style="max-width: 560px;">

      <form method="post" action="./userLoginAction.jsp">

        <div class="form-group">

          <label>아이디</label>

          <input type="text" name="userID" class="form-control">

        </div>

        <div class="form-group">

          <label>비밀번호</label>

          <input type="password" name="userPassword" class="form-control">

        </div>

        <button type="submit" class="btn btn-primary">로그인</button>

      </form>

    </div>
  
    <footer class="bg-dark mt-4 p-5 text-center" style="color: #FFFFFF;">

   <p>           
       상호명 : (주)Sold Out | 대표자명 : 유성재 | 사업자등록번호: 113-55-12030  |  정보보호 책임자 : 이창현<br>
        대표전화 000-0000-3200 | E-mail yuseong12345@naver.com | 통신판매업신고 : 통신판매업신고 제2018-01053<br>
        사업장 주소 : 인천폴리텍<br>
        COPYRIGHT 2018. (주)sold out ALL RIGHTS RESERVED.<br>
       <img src="images/confirm_01.gif" width="200" height="30" alt="매매보호(에스크로)서비스">
       <img src="images/confirm_02.gif" width="200" height="30" alt="매매보호(에스크로)서비스"></p>
   
  <p>&nbsp;</p>   

    </footer>

    <!-- 제이쿼리 자바스크립트 추가하기 -->

    <script src="./js/jquery.min.js"></script>

    <!-- Popper 자바스크립트 추가하기 -->

    <script src="./js/popper.min.js"></script>

    <!-- 부트스트랩 자바스크립트 추가하기 -->

    <script src="./js/bootstrap.min.js"></script>

  </body>

</html>



