<%@page import="javax.mail.Transport"%>

<%@page import="javax.mail.Message"%>

<%@page import="javax.mail.Address"%>

<%@page import="javax.mail.internet.InternetAddress"%>

<%@page import="javax.mail.internet.MimeMessage"%>

<%@page import="javax.mail.Session"%>

<%@page import="javax.mail.Authenticator"%>

<%@page import="java.util.Properties"%><%--속성을 정의할때 사용하는 라이브러리 --%>

<%@page import="java.io.PrintWriter"%>

<%@page import="user.UserDAO"%>

<%@page import="util.SHA256"%>

<%@page import="util.Gmail"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%

	UserDAO userDAO = new UserDAO();

	String userID = null;

	if(session.getAttribute("userID") != null) {

		userID = (String) session.getAttribute("userID");

	}

	if(userID == null) {

		PrintWriter script = response.getWriter();//로그인을해주세요라는 메세지 전송해준다

		script.println("<script>");

		script.println("alert('로그인을 해주세요.');");

		script.println("location.href = 'userLogin.jsp'");

		script.println("</script>");

		script.close();

		return;

	}
     //해시값적용시킨 이메일 넣어준다
	boolean emailChecked = userDAO.getUserEmailChecked(userID);

	if(emailChecked == true) {

		PrintWriter script = response.getWriter();

		script.println("<script>");

		script.println("alert('이미 인증 된 회원입니다.');");

		script.println("location.href = 'index.jsp'");

		script.println("</script>");

		script.close();		

		return;

	}//사용자가 이메일 인증을 한상태라면 인증이 된 회원이라고 출력을 해줌 

	
	 //이메일이 인증이 안된 사용자이라면 사용자에게 이메일 인증 메세지를 보내준다. 
	// 사용자에게 보낼 메시지를 기입합니다.

	String host = "http://localhost:8099/Register/";

	String from = "yousong42432@gmail.com";//자신의 구글이메일 계정넣어줌

	String to = userDAO.getUserEmail(userID);//받는사람의 이메일 주소 설정시킴

	String subject = "Sold Out 신발사이트 회원가입을 위한 이메일 인증 메일입니다.";

	String content = "다음 링크에 접속하여 이메일 인증을 진행하세요." +

		"<a href='" + host + "emailCheckAction.jsp?code=" + new SHA256().getSHA256(to) + "'>이메일 인증하기</a>";
//특정한 코드를 보내면서 이메일 인증을 할수 있도록 만들어준다
	

	// SMTP에 접속하기 위한 정보를 기입합니다.그래서 실제로 이메일 전송하게 끔 설정함

	Properties p = new Properties();

	p.put("mail.smtp.user", from);

	p.put("mail.smtp.host", "smtp.googlemail.com");//구글에서 제공하는 서버 넣어줌 

	p.put("mail.smtp.port", "465"); //포트 465번 사용

	p.put("mail.smtp.starttls.enable", "true");//사용가능 true로 설정함 

	p.put("mail.smtp.auth", "true");

	p.put("mail.smtp.debug", "true");

	p.put("mail.smtp.socketFactory.port", "465");

	p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");

	p.put("mail.smtp.socketFactory.fallback", "false");

	 

	try{//구글 이메일 인증을 사용함 

	    Authenticator auth = new Gmail();  

	    Session ses = Session.getInstance(p, auth);//관리자의 이메일 주소로 이메일인증 전송함 

	    ses.setDebug(true);//디버그 설정함 

	    MimeMessage msg = new MimeMessage(ses); //실제로 메일이 가도록 객체 설정함 

	    msg.setSubject(subject);

	    Address fromAddr = new InternetAddress(from); //보내는사람 

	    msg.setFrom(fromAddr);

	    Address toAddr = new InternetAddress(to);//받는사람

	    msg.addRecipient(Message.RecipientType.TO, toAddr);

	    msg.setContent(content, "text/html;charset=UTF-8");

	    Transport.send(msg);

	} catch(Exception e){//오류가 발생한 경우 뒤로 돌아가기

	    e.printStackTrace();

		PrintWriter script = response.getWriter();//메세지 전송 

		script.println("<script>");

		script.println("alert('오류가 발생했습니다..');");

		script.println("history.back();");//뒤로 이동 시켜 준다 

		script.println("</script>");

		script.close();		

	    return;

	}

%>


<!DOCTYPE html>
<html>  
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name ="viewport" content="width=device-width,initial-scale=1,shrink-to-fit=no">
<title>신발사이트</title>
<!-- 부트스트랩 css 추가하기 -->
<link rel="stylesheet" href="./css/bootstrap.min.css">

<!-- 커스텀 css 추가하기 -->
<link rel="stylesheet" href="./css/custom.css">
</head>     
<body>                                          
<nav class="navbar navbar-expand-lg navbar-light bg-light">
<a class="navbor-brand" href="index1.jsp">신발 웹 사이트</a>
<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar">
<span class="navbar-toggler-icon"></span>
         
</button>
<div id="navbar" class="collapse navbar-collapse">
<ul class="navbar-nav mr-auto">
  <li class="nav-item active">
  <a class="nav-link" href="index1.jsp">메인</a>
</li>
<li class="nav-item dropdown">
<a class="nav-link dropdown-toggle" id="dropdown" data-toggle="dropdown">
회원관리
</a> 
<div class="dropdown-menu" aria-labelledby="dropdown">
<a class="dropdown-item" href="userLogin.jsp">로그인</a>
<a class="dropdown-item" href="userJoin.jsp">회원가입</a>
<a class="dropdown-item" href="userLogout.jsp">로그아웃</a>
</div>
</li>
</ul>
<form action="form-inline my-2 my-lg-0">
<input class="form-control mr-sm-2" type="search" placeholder="내용을 입력하세요." aria-label="Search">
<button class="btn btn-outline-success my-2 my-sm-0" type="submit">검색</button>

</form>

</div>
</nav>
<section class="container mt-3" style="max-width: 560px;">
 <div class="alert alert-success mt-4" role="alert">
   이메일 주소 인증메일이 전송되었습니다. 회원가입시 입력했던 이메일에 들어가서 인증해주세요.
 </div>
</section>

<footer class="bg-dark mt-4 p-5 text-center" style="color:#FFFFF;">
Copyright &copy; 2019 sold out Rights Reserved</footer>
<!-- 제이쿼리 자바스크립트 추가하기 -->
<script src="./js/jquery.min.js"></script>  
<!-- pooper 자바스크립트 추가하기 -->
<script src="./js/pooper.js"></script>  
<!-- 부트스트랩 자바스크립트 추가하기 -->
<script src="./js/bootstrap.min.js"></script>  
</body>
</html>
