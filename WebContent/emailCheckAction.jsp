<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO"%>
<%@ page import="util.SHA256"%>
<%@ page import="java.io.PrintWriter"%>//자바스트립트 쉽게 클라이언트 출력가능
  
<%  
   request.setCharacterEncoding("UTF-8");
   String code = null;  //사용자으로부터 가져온 값 정의해줌
   if(request.getParameter("code") !=null){
	   code =request.getParameter("code");
   }
   UserDAO userDAO = new UserDAO();
   String userID = null;
   
  
   if(session.getAttribute("userID") != null){
	   userID =(String)session.getAttribute("userID");  
   }//userID가 없으면 userID그대로 넣어준다
   
   if(userID ==null){
	   PrintWriter script = response.getWriter();
	   script.println("<script>");
	   script.println("alert('로그인을 해주세요.');");
	   script.println("location.href='userLogin.jsp'");
	   script.println("</script>");
	 
	   script.close();
	   return;  
	     
   }//회원가입 해줄수 있게 설정 
   
   String userEmail =userDAO.getUserEmail(userID);//유저아이디 가져온다
   boolean isRight =(new SHA256().getSHA256(userEmail).equals(code)) ? true : false;//유저이메일해시값처리한게 코드랑 일치하는지 확인함
   
   if(isRight ==true){
	   userDAO.setUserEmailChecked(userID);
	   PrintWriter script = response.getWriter();
	   script.println("<script>");
	   script.println("alert('인증에 성공했습니다.');");
	   script.println("location.href='index.jsp'");
	   script.println("</script>");
	   script.close();
	   return;
   }  else{
	   PrintWriter script = response.getWriter();
	   script.println("<script>");
	   script.println("alert('유효하지 않은 코드입니다');");
	   script.println("location.href='index.jsp'");
	   script.println("</script>");
	   script.close();
	   return;
	   
   }
	   
 %>
   
   