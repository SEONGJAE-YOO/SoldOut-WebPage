package cart;

import java.sql.Connection; 
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import product.productDTO;
import cart.userDTO;

public class cartDAO {
    private Connection conn;            // DB에 접근하는 객체
    private PreparedStatement pstmt;    // 
    private ResultSet rs;                // DB data를 담을 수 있는 객체  (Ctrl + shift + 'o') -> auto import
    
    public cartDAO(){
    	try {
            String dbURL = "jdbc:mysql://localhost:3306/basicjsp";
            String dbID = "jsp";
            String dbPassword = "jsppass";
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
            
    	}catch(Exception e) {
    		e.printStackTrace();
    	}
    }
    
    public ArrayList<cart1DTO> get_cart(int idx){
    	
    	
    	ArrayList<cart1DTO> dtos = new ArrayList<cart1DTO>();
    	 String SQL = "select * from cart as c join products as p on c.p_idx = p.p_idx where u_idx = ?;";
         try{
         	pstmt = conn.prepareStatement(SQL);
         	pstmt.setInt(1, idx);
         	
         	rs = pstmt.executeQuery();
         	while(rs.next()){
         		int u_idx = rs.getInt("u_idx");
         		int p_idx = rs.getInt("p_idx");
         		int c_amount = rs.getInt("c_amount");
         		int c_size = rs.getInt("c_size");
         		String p_name = rs.getString("p_name");
         		int p_price =rs.getInt("p_price");
         		String p_img = rs.getString("p_img");
         		
         		cart1DTO dto = new cart1DTO(u_idx, p_idx, c_amount, c_size, p_name, p_price, p_img);
         		dtos.add(dto);
         	}
         }catch(Exception e) {
        	 e.printStackTrace();
         }
    	
    	return dtos;
    }  
    
     
    public int addCart(userDTO userDTO, productDTO productDTO) {
    	String SQL = "INSERT INTO cart(u_idx, p_idx, c_amount, c_size) values ((Select u_idx from users where u_id = '?') , (select p_idx from products where p_name = '신발'), 1, 275);";
    	try {
    		pstmt = conn.prepareStatement(SQL);
    		
    		pstmt.setString(1, userDTO.getU_id());
    		//pstmt.setString(2, productDTO.getP_name());
    	}catch (Exception e) {
			// TODO: handle exception
		}
    	return 0;
    }
}
