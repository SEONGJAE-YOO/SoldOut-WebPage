<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			String driverName="com.mysql.jdbc.Driver";
			String url = "jdbc:mysql://localhost:3306/soldout_db?serverTimezone=UTC";
			String id = "root";
			String password = "1234";
			
			//1 - jdbc드라이버 로드
			try{
				Class.forName(driverName);
			}catch(ClassNotFoundException e){
				out.println("where is your mysql jdbc driver?");
				e.printStackTrace();
				return;
			}
			String a = "mysql jdbc driver registered"; 
			out.println("mysql jdbc driver registered");
			
			//2 - 데이터베이스 연결
			Connection conn = DriverManager.getConnection(url, id, password);
			out.println("DB연결 성공");
			
			//3 - 데이터베이스 연결 해제
			conn.close();
		%>
		<p><%=a %></p>
	</body>
</html>