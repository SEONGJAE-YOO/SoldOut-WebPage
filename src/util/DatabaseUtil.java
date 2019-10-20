package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseUtil {

	public static Connection getConnection() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/basicjsp";//만들었던 테이블이름 정의한다
			String dbID = "jspid";
			String dbPassword = "jsppass";
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection(dbURL, dbID, dbPassword);
		}catch(Exception e) { 
			e.printStackTrace();
		}
		return null; 
	}  
		
	}  

      