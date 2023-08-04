package main;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

// 인증객체 생성 클래스.
public class MyAuthentication extends Authenticator {
	PasswordAuthentication pa;

	public MyAuthentication(String mailId, String mailPass) {
		pa = new PasswordAuthentication(mailId, mailPass);
	}

	public PasswordAuthentication getPasswordAuthentication() {
		return pa;
	}
}
