package user;

import java.sql.Connection;   
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



public class UserDAO {
	
	private Connection conn;
	private ResultSet rs;
	public UserDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/basicjsp";
			String dbID = "jspid";
			String dbPassword = "jsppass";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public int login(String userID, String userPassword) {

		String SQL = "SELECT userPassword FROM USER WHERE userID = ?";

		try {

			PreparedStatement pstmt = conn.prepareStatement(SQL);

			pstmt.setString(1, userID);

			rs = pstmt.executeQuery();

			if(rs.next()) {

				if(rs.getString(1).equals(userPassword))

					return 1; // 로그인 성공

				else

					return 0; // 비밀번호 틀림

			}

			return -1; // 아이디 없음

		} catch (SQLException e) {

			e.printStackTrace();

		}

		return -2; // 데이터베이스 오류

	}



	
	public int registerCheck(String userID) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "SELECT * FROM USER WHERE userID = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			if (rs.next() || userID.equals("")) {
				return 0; // 이미 존재하는 회원
			}
			else {
				return 1; // 등록 가능한 회원
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return -1; //데이터 베이스 오류 
	}

	public int register(String userID, String userPassword, String userEmail, String userName, String userGender,String userPhone,String userAge,String userAddress ) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "INSERT INTO USER VALUES (?, ?, ?, ?, ?, ?,?,?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			pstmt.setString(2, userPassword);
			pstmt.setString(3, userEmail);
			
			pstmt.setString(4, userName);
			pstmt.setString(5, userGender);
			pstmt.setString(6, userPhone);

			pstmt.setInt(7, Integer.parseInt(userAge));
			pstmt.setString(8, userAddress);

			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return -1; // 데이터베이스 오류 
	}
}
