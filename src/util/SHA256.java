package util;

import java.security.MessageDigest;

public class SHA256 {
   //특정한 값(이메일)을 넣었을때 해시값으로 변환시켜준다
	public static String getSHA256(String input) {
		StringBuffer result = new StringBuffer();
		try {
			MessageDigest digest =MessageDigest.getInstance("SHA-256");//사용자가 입력한 값을 해시값으로 처리해줌
		    byte[] salt ="Hello This is Salt.".getBytes(); //salt값 적용해서 해커로부터 보호해줌//내가 원하는  salt값 넣어준다
		    digest.reset(); //salt값 적용시킴
		    digest.update(salt);
		    byte[] chars = digest.digest(input.getBytes());//hash적용된 값을 chars에 담아준다
		    for(int i=0;i<chars.length;i++) {
		    	String hex = Integer.toHexString(0xff & chars[i]); 
		    	if(hex.length()==1) result.append("o");//1자리 수이면 0을 붙여서 반환한다.
		    	result.append(hex);//해시값을 차례대로 달아서 변환한다
		    }//정수를 해시문자열로 변환시켜준다
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return result.toString();//결과값 반환 시킴 
		
	}
}
