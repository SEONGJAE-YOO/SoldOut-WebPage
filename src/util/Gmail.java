package util;

import javax.mail.Authenticator; 
import javax.mail.PasswordAuthentication;
  
//외부 라이브러리 사용
public class Gmail extends Authenticator {

	protected PasswordAuthentication getPasswordAuthentication() {
		return new PasswordAuthentication("yousong42432@gmail.com","tjdwo357!");
		//관리자의 지메일 아이디 ,비번 넣어줌
	}
	
}
