<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>

<%@ page import="user.UserDAO"%>

<%@ page import="evaluation.EvaluationDAO"%>

<%@ page import="evaluation.EvaluationDTO"%>

<%@ page import="java.util.ArrayList"%>

<%@ page import="java.net.URLEncoder"%>



<!doctype html>

<html>

  <head>

    <title>SOLD OUT 신발 사이트</title>

    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- 부트스트랩 CSS 추가하기 -->

    <link rel="stylesheet" href="./css/bootstrap.min.css">

    <!-- 커스텀 CSS 추가하기 -->

    <link rel="stylesheet" href="./css/custom.css">

  </head>

  <body>
  <%

	request.setCharacterEncoding("UTF-8");

	String lectureDivide = "전체";

	String searchType = "최신순";

	String search = "";

	int pageNumber = 0;

	if(request.getParameter("lectureDivide") != null) {

		lectureDivide = request.getParameter("lectureDivide");

	}

	if(request.getParameter("searchType") != null) {

		searchType = request.getParameter("searchType");

	}

	if(request.getParameter("search") != null) {

		search = request.getParameter("search");

	}

	if(request.getParameter("pageNumber") != null) {

		try {

			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));

		} catch (Exception e) {

			System.out.println("검색 페이지 번호 오류");

		}

	}

	String userID = null;

	if(session.getAttribute("userID") != null) {

		userID = (String) session.getAttribute("userID");

	}

	if(userID == null) {

		PrintWriter script = response.getWriter();

		script.println("<script>");

		script.println("alert('로그인을 해주세요.');");

		script.println("location.href = 'userLogin.jsp'");

		script.println("</script>");

		script.close();	

	}

	

%>	

  
  
  

    <nav class="navbar navbar-expand-lg navbar-light bg-light">

      <a class="navbar-brand" href="index.jsp">SOLD OUT 신발 사이트</a>

      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar">

        <span class="navbar-toggler-icon"></span>

      </button>

      <div class="collapse navbar-collapse" id="navbar">

        <ul class="navbar-nav mr-auto">

          <li class="nav-item active">

            <a class="nav-link" href="soldout.jsp">메인</a>

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

        <form action="./soldout.jsp" method="get" class="form-inline my-2 my-lg-0">

          <input type="text" name="search" class="form-control mr-sm-2" placeholder="내용을 입력하세요.">

          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">검색</button>

        </form>

      </div>

    </nav>

    <div class="container">

      <form method="get" action="./index.jsp" class="form-inline mt-3">

        <select name="lectureDivide" class="form-control mx-1 mt-2">

          <option value="전체">전체</option>

          <option value="운동화">운동화</option>

          <option value="스포츠,레저">스포츠.레저</option>

          <option value="부츠">부츠</option>
          
          <option value="기획전">기획전</option>

        </select>

        <input type="text" name="search" class="form-control mx-1 mt-2" placeholder="내용을 입력하세요.">

        <button type="submit" class="btn btn-primary mx-1 mt-2">검색</button>

        <a class="btn btn-primary mx-1 mt-2" data-toggle="modal" href="#registerModal">등록하기</a>

        <a class="btn btn-danger ml-1 mt-2" data-toggle="modal" href="#reportModal">신고</a>

      </form>

      <div class="card bg-light mt-3">

        <div class="card-header bg-light">

          <div class="row">

            <div class="col-8 text-left">운동화&nbsp;<small>유성재</small></div>

            <div class="col-4 text-right">

              종합 <span style="color: red;">A</span>

            </div>

          </div>

        </div>

        <div class="card-body">
  
          <h5 class="card-title">

          뉴발란스 씨알티300알엘 CRT300RL-White &nbsp;<small>(2019.06.23)</small>

          </h5>디자인도 마음에 들고 배송도 빠르고 정말 추천합니다~~!!

          <p class="card-text">.</p>

          <div class="row">

            <div class="col-9 text-left">

              디자인 <span style="color: red;">A</span>

              가격<span style="color: red;">A</span>

              품질 <span style="color: red;">B</span>

              <span style="color: green;">(추천: 15★)</span>

            </div>

            <div class="col-3 text-right">

              <a onclick="return confirm('추천하시겠습니까?')" href="./likeAction.jsp?evaluationID=">추천</a>

              <a onclick="return confirm('삭제하시겠습니까?')" href="./deleteAction.jsp?evaluationID=">삭제</a>

            </div>

          </div>

        </div>

      </div>

      <div class="card bg-light mt-3">

        <div class="card-header bg-light">

          <div class="row">

            <div class="col-8 text-left">운동화&nbsp;<small>사자</small></div>

            <div class="col-4 text-right">

              종합 <span style="color: red;">B</span>

            </div>

          </div>

        </div>

        <div class="card-body">

          <h5 class="card-title">

            나이키 문 레이서 &nbsp;<small>(2019.06.23)</small>

          </h5>

          <p class="card-text">생각보다 마음에 들지 않지만 발이 평발이라 불편했는데 이거 신고 다니니까 발이 편하고 좋네요.</p>

          <div class="row">

            <div class="col-9 text-left">

              디자인 <span style="color: red;">B</span>

            가격   <span style="color: red;">C</span>

              품질 <span style="color: red;">B</span>

              <span style="color: green;">(추천: 10)</span>

            </div>

            <div class="col-3 text-right">

              <a onclick="return confirm('추천하시겠습니까?')" href="./likeAction.jsp?evaluationID=">추천</a>

              <a onclick="return confirm('삭제하시겠습니까?')" href="./deleteAction.jsp?evaluationID=">삭제</a>

            </div>

          </div>

        </div>

      </div>

      <div class="card bg-light mt-3">

        <div class="card-header bg-light">

          <div class="row">

            <div class="col-8 text-left">운동화&nbsp;<small>하마</small></div>

            <div class="col-4 text-right">

              종합 <span style="color: red;">A</span>

            </div>

          </div>

        </div>

        <div class="card-body">

          <h5 class="card-title">

            WMNS NIKE JUVENATE &nbsp;<small>(2019.06.22)</small>

          </h5>

          <p class="card-text">대학생이 신고 다니기 좋은 신발!! 가격에 비해 저렴하고 만족합니다~</p>

          <div class="row">

            <div class="col-9 text-left">

              디자인 <span style="color: red;">A</span>

              가격 <span style="color: red;">C</span>

              품질 <span style="color: red;">A</span>

              <span style="color: green;">(추천: 0)</span>

            </div>

            <div class="col-3 text-right">

              <a onclick="return confirm('추천하시겠습니까?')" href="./likeAction.jsp?evaluationID=">추천</a>

              <a onclick="return confirm('삭제하시겠습니까?')" href="./deleteAction.jsp?evaluationID=">삭제</a>

            </div>

          </div>

        </div>

      </div>
      

    </div>

    <ul class="pagination justify-content-center mt-3">

      <li class="page-item">

        <a class="page-link" href="#">이전</a>

      </li>

      <li class="page-item">

        <a class="page-link" href="#">다음</a>

      </li>

    </ul>

    <div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="modal" aria-hidden="true">

      <div class="modal-dialog">

        <div class="modal-content">

          <div class="modal-header">

            <h5 class="modal-title" id="modal">1:1 문의</h5>

            <button type="button" class="close" data-dismiss="modal" aria-label="Close">

              <span aria-hidden="true">&times;</span>

            </button>

          </div>

          <div class="modal-body">

            <form action="./evaluationRegisterAction.jsp" method="post">

              <div class="form-row">

                <div class="form-group col-sm-6">

                  <label>품목</label>

                  <input type="text" name="items" class="form-control" maxlength="20">

                </div>

                <div class="form-group col-sm-6">

                  <label>사이즈</label>

                  <input type="text" name="size" class="form-control" maxlength="20">

                </div>

              </div>

              <div class="form-row">

                <div class="form-group col-sm-4">

                  <label>카테고리</label>

                  <select name="category" class="form-control">

                    <option value="운동회">운동화</option>

                    <option value="스포츠.레저">스포츠.레저</option>

                    <option value="부츠">부츠</option>

                    <option value="기획전">기획전</option>

                    <option value="기타">기타</option>

                  </select>

                </div>

                <div class="form-group col-sm-4">

                  <label>구입 시기</label>

                  <select name="PurchaseDate" class="form-control">

                    <option name="2019년 6월" selected>2019년 6월</option>

                    <option name="2019년 5월">2019년 5월</option>

                    <option name="2019년 4월">2019년 4월</option>

                    <option name="2019년 3월">2019년 3월</option>
                                       
                     <option name="2019년 2월">2019년 2월</option>
                    
                  <option name="2019년 1월">2019년 1월</option>
                    

                  </select>

                </div>

                <div class="form-group col-sm-4">

                  <label>날짜</label>

                  <select name="day" class="form-control">

                    <option name="1일" selected>1일</option>

                    <option name="2일">2일</option>

                    <option name="3일">3일</option>

                    <option name="4일">4일</option>

                    <option name="5일">5일</option>

                    <option name="6일">6일</option>

                    <option name="7일">7일</option>

                    <option name="8일">8일</option>

                    <option name="9일">9일</option>

                    <option name="10일">10일</option>

                    <option name="11일">11일</option>

                    <option name="12일">12일</option>

                    <option name="13일">13일</option>

                    <option name="14일">14일</option>
                   
                    <option name="15일">15일</option>
                    <option name="16일">16일</option>
                    <option name="17일">17일</option>
                    <option name="18일">18일</option>
                    <option name="19일">19일</option>
                    <option name="20일">20일</option>
                    <option name="21일">21일</option>
                    <option name="22일">22일</option>
                    <option name="23일">23일</option>
                    <option name="24일">24일</option>
                    <option name="25일">25일</option>
                    <option name="26일">26일</option>
                   <option name="27일">27일</option>
                    <option name="28일">28일</option>
                   <option name="29일">29일</option>
                    <option name="30일">30일</option>
                    <option name="31일">31일</option>
                  </select>

                </div>

              </div>

              <div class="form-group">

                <label>제목</label>

                <input type="text" name="evaluationTitle" class="form-control" maxlength="20">

              </div>

              <div class="form-group">

                <label>내용</label>

                <textarea type="text" name="evaluationContent" class="form-control" maxlength="2048" style="height: 180px;"></textarea>

              </div>

              <div class="form-row">

                <div class="form-group col-sm-3">

                  <label>종합</label>

                  <select name="totalScore" class="form-control">

                    <option value="A" selected>A</option>

                    <option value="B">B</option>

                    <option value="C">C</option>

                    <option value="D">D</option>

                    <option value="F">F</option>

                  </select>

                </div>

                <div class="form-group col-sm-3">

                  <label>디자인</label>

                  <select name="design" class="form-control">

                    <option value="A" selected>A</option>

                    <option value="B">B</option>

                    <option value="C">C</option>

                    <option value="D">D</option>

                    <option value="F">F</option>

                  </select>

                </div>

                <div class="form-group col-sm-3">

                  <label>가격</label>

                  <select name="priceScore" class="form-control">

                    <option value="A" selected>A</option>

                    <option value="B">B</option>

                    <option value="C">C</option>

                    <option value="D">D</option>

                    <option value="F">F</option>

                  </select>

                </div>

                <div class="form-group col-sm-3">

                  <label>품질</label>

                  <select name="itemsScore" class="form-control">

                    <option value="A" selected>A</option>

                    <option value="B">B</option>

                    <option value="C">C</option>

                    <option value="D">D</option>

                    <option value="F">F</option>

                  </select>

                </div>

              </div>

              <div class="modal-footer">

                <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>

                <button type="submit" class="btn btn-primary">등록하기</button>

              </div>

            </form>

          </div>

        </div>

      </div>

    </div>

    <div class="modal fade" id="reportModal" tabindex="-1" role="dialog" aria-labelledby="modal" aria-hidden="true">

      <div class="modal-dialog">

        <div class="modal-content">

          <div class="modal-header">

            <h5 class="modal-title" id="modal">신고하기</h5>

            <button type="button" class="close" data-dismiss="modal" aria-label="Close">

              <span aria-hidden="true">&times;</span>

            </button>

          </div>

          <div class="modal-body">

            <form method="post" action="./reportAction.jsp">

              <div class="form-group">

                <label>신고 제목</label>

                <input type="text" name="reportTitle" class="form-control" maxlength="20">

              </div>

              <div class="form-group">

                <label>신고 내용</label>

                <textarea type="text" name="reportContent" class="form-control" maxlength="2048" style="height: 180px;"></textarea>

              </div>

              <div class="modal-footer">

                <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>

                <button type="submit" class="btn btn-danger">신고하기</button>

              </div>

            </form>

          </div>

        </div>

      </div>

    </div>

    <footer class="bg-dark mt-4 p-5 text-center" style="color: #FFFFFF;">


      <p>           
       상호명 : (주)Sold Out | 대표자명 : 유성재 | 사업자등록번호: 113-55-12030  |  정보보호 책임자 : 이창현<br>
        대표전화 000-0000-3200 | E-mail yuseong12345@naver.com | 통신판매업신고 : 통신판매업신고 제2018-01053<br>
        사업장 주소 : 인천폴리텍<br>
        COPYRIGHT 2018. (주)sold out ALL RIGHTS RESERVED.<br>
       <img src="images/confirm_01.gif" width="200" height="30" alt="매매보호(에스크로)서비스">
       <img src="images/confirm_02.gif" width="200" height="30" alt="매매보호(에스크로)서비스"></p>
   

    </footer>

    <!-- 제이쿼리 자바스크립트 추가하기 -->

    <script src="./js/jquery.min.js"></script>

    <!-- Popper 자바스크립트 추가하기 -->

    <script src="./js/popper.min.js"></script>

    <!-- 부트스트랩 자바스크립트 추가하기 -->

    <script src="./js/bootstrap.min.js"></script>

  </body>

</html>



