<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Thunder   </title>
	
	 <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	 <link rel="stylesheet" type="text/css" href="css/style.css" />
	
	 <!-- modernizr enables HTML5 elements and feature detects -->
	 <script type="text/javascript" src="js/modernizr-1.5.min.js"></script>
</head>
	<body>
  <div id="main">
    <header>
      <div id="logo">
        <div id="logo_text">
       
           <h1>
           <img src="images/KakaoTalk_Photo_2018-11-29-19-31-20.jpeg" width="100" height="30" alt="seascap" />
           <a href="sold.jsp" target="_self"><span class="logo_colour">SoldOut</span></a></h1>
       
        </div>
      </div>


      <nav>
        <ul class="sf-menu" id="nav">
          <li><a href="index.jsp">카테고리</a>
           <ul>
              <li><a href="running_shoes.jsp" target="_self">운동화</a>
              <li><a href="sports.jsp" target="_self">스포츠.레저</a>
                <li><a href="boots.jsp" target="_self">부츠</a>
                   <li><a href="gift.jsp" target="_self">기획전</a>
                   <li><a href="contact.jsp" target="_self">Contact Us</a>
            </ul>

          </li>
          <li><a href="running_shoes.jsp" target="_self">운동화</a>
             <ul>
              <li><a href="#">NIKE</a>
              <li><a href="#">adidas</a>
                <li><a href="#">FILA</a>
           <a href="#">New Balance</a>
           <a href="#">Reebok</a>
           <a href="#">PUMA</a>
            </ul>

          </li>

          <li class="selected"><a href="sports.jsp" target="_self">스포츠.레저</a>
            <ul>
              <li><a href="#">등산화</a>
              <li><a href="#">아쿠아 슈즈</a>
            
            </ul>


          </li>
         
          <li><a href="boots.jsp" target="_self">부츠</a>
            <ul>
              <li><a href="#">워크부츠</a></li>
              <li><a href="#">패딩부츠</a>
               
            </ul>
          </li>
           <li><a href="gift.jsp" target="_self">기획전</a></li>
          <li><a href="contact.jsp" target="_self">Contact Us</a></li>
        </ul>
      </nav>
    </header>
    <div id="site_content">
      <div id="sidebar_container">
        <div class="gallery">
          <ul class="images">
            <li class="show"><img width="450" height="450" src="images/9201658232862.jpg" alt="photo_one" /></li>
            <li><img width="450" height="450" src="images/9201658298398.jpg" alt="photo_two" /></li>
            <li><img width="450" height="450" src="images/9201658363934.jpg" alt="photo_three" /></li>
            <li><img width="450" height="450" src="images/9201658429470.jpg" alt="photo_four" /></li>
            <li><img width="450" height="450" src="images/9201658495006.jpg" alt="photo_five" /></li>
             <li><img width="450" height="450" src="images/9201658560542.jpg" alt="photo_five" /></li>
              <li><img width="450" height="450" src="images/9201658626078.jpg" alt="photo_five" /></li>
          </ul>
        </div>
      </div>
      <div id="content">
        <h1>[영국]3171613830 Falcon Trainers - White White Crystal White F</h1>
        <p class="thick">166,000원 </p>
        <h2>장바구니쿠폰 적용불가</h2> <br>
        <h2>[AD]장바구니쿠폰 1장 받기</h2> <br>
        <h2>무이자 할부 최대22개월</h2>    <h2>카드할인혜택</h2> <br>
        <hr/>
        <p class="medium"> 
        배송비:무료(50,000원 이상 무료) <br>
        주문시 결제(선결제)  </p>
        <hr/>
        <h2>원산지:독일</h2>
        <hr/>
        <h2>옵션</h2>    
        <select name="option">
          <option value="240">240</option>
          <option value="245">245</option>
          <option value="250">250</option>
          <option value="255">255</option>
          <option value="260">260</option>
          <option value="265">265<p>매진임박 5개</p></option>
          <option value="270">270</option>
          <option value="275">275</option>
          <option value="280">280<p>매진임박 2개</p></option>
          <option value="285">285</option>
        </select>
    
      </div>
    </div>
    <footer>
      <p>           
       상호명 : (주)Sold Out | 대표자명 : 유성재 | 사업자등록번호: 113-55-12030  |  정보보호 책임자 : 이창현<br>
        대표전화 000-0000-3200 | E-mail yuseong12345@naver.com | 통신판매업신고 : 통신판매업신고 제2018-01053<br>
        사업장 주소 : 인천폴리텍<br>
        COPYRIGHT 2018. (주)sold out ALL RIGHTS RESERVED.<br>
       <img src="images/confirm_01.gif" width="200" height="30" alt="매매보호(에스크로)서비스">
       <img src="images/confirm_02.gif" width="200" height="30" alt="매매보호(에스크로)서비스"></p>
    </footer>
  </div>
  <p>&nbsp;</p>
  <!-- javascript at the bottom for fast page loading -->
  <script type="text/javascript" src="js/jquery.js"></script>
  <script type="text/javascript" src="js/jquery.easing-sooper.js"></script>
  <script type="text/javascript" src="js/jquery.sooperfish.js"></script>
   <script type="text/javascript" src="js/jquery.kwicks-1.5.1.js"></script>
  <script type="text/javascript" src="js/image_fade.js"></script>
  <script type="text/javascript">
    $(document).ready(function() {
      $('ul.sf-menu').sooperfish();
    });
  </script>
</body>
</html>