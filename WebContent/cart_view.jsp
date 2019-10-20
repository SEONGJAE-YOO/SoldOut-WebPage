<%@page import="cart.cart1DTO"%>
<%@page import="cart.cartDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cart.cartDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.PrintWriter" %>
<%@page import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%! 
	private Connection conn;            // DB에 접근하는 객체
	private PreparedStatement pstmt;    // 
	private ResultSet rs;                // DB data를 담을 수 있는 객체  (Ctrl + shift + 'o') -> auto import
	int p_idx;
%>
<head>
  <title>CRT300RL </title>
 
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  
  <!-- modernizr enables HTML5 elements and feature detects -->
  <script type="text/javascript" src="js/modernizr-1.5.min.js"></script>
</head>
 <body>
 	<%
 		int idx = Integer.parseInt(request.getParameter("idx"));
 		ArrayList<cart1DTO> dtos = null;
 		cartDAO dao = new cartDAO();
 		dtos = dao.get_cart(idx);
 		cart1DTO dto = null;
 	%>
  <table>
  	<th>상품이름</th>
  	<th>사이즈</th>
  	<th>갯수</th>
  	<th>가격</th>
  	<!--  
  	while(
  	-->
  	<% for(int i = 0;i<dtos.size();i++){
  		dto = dtos.get(i);
  	
  		%>
  	<tr>
  		<td><%=dto.getP_name() %></td>
  		<td><%=dto.getC_size() %></td>
  		<td><%=dto.getC_amount() %></td>
  		<td><%=dto.getP_price()*dto.getC_amount() %></td>
  	</tr>
  	
  	<% }%>
  	
  </table>
</body>
</html>

     
    	