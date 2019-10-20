<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="cart.userDTO"%>
<%@page import="cart.UserDAO"%>
<%@page import="java.io.PrintWriter" %>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<jsp:useBean id="userDTO" class="cart.userDTO" scope="page">
	<jsp:getProperty name="userDTO" property="u_id"/>
</jsp:useBean>
<jsp:useBean id="productDTO" class="product.productDTO" scope="page">
	<jsp:getProperty name="productDTO" property="p_name"/>
</jsp:useBean>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	<%--장바구니에 넣는 폼  아이디 값을 가져오고, --%>
<%-- 		<%
			if(session.getAttribute("u_idx") == null || userDTO.getP_idx() == null){
				
			}
			else{
				
			}
		%> --%>
	</body>
</html>