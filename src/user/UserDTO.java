package user;

public class UserDTO {

	String userID;
	String userPassword;
	String userName;
	int userAge;
	String userGender;
	String userEmail;
	
	
	String userAddress;
	String userPhone;
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public int getUserAge() {
		return userAge;
	}
	public void setUserAge(int userAge) {
		this.userAge = userAge;
	}
	public String getUserGender() {
		return userGender;
	}
	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	
	public String getUserAddress() {
		return userAddress;
	}
	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	} 
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}  
	
	public  UserDTO(String userID, String userPassword, String userEmail,

			 String userName, String userGender, String userPhone, int userAge,String userAddress) {

		this.userID = userID;

		this.userPassword = userPassword;

		this.userEmail = userEmail;


        this.userName=userName;
        
        this.userGender=userGender;
        
        this.userPhone=userPhone;
        
        this.userAge=userAge;
        
        this.userAddress=userAddress;
	}



}