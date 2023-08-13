package main;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MailSender
 */
@WebServlet("/MailSender")
public class MailSender extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final static String PROPERTIES_FILE_PATH = "info.properties";
	private static final String MAIL_Account = "myAccountEmail";
	private static final String MAIL_PASS = "myAccountPass";
	private static final String MAIL_PROTOCOL = "mailProtocol";
	private static final String MAIL_HOST = "mailHost";
	private static final String MAIL_PORT = "mailPort";

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");

		Properties properties = new Properties();
		InputStream input = MailSender.class.getClassLoader().getResourceAsStream(PROPERTIES_FILE_PATH);
		properties.load(input);
		String mailProtocol = properties.getProperty(MAIL_PROTOCOL);
		String mailHost = properties.getProperty(MAIL_HOST);
		String mailPort = properties.getProperty(MAIL_PORT);
		String myAccountEmail = properties.getProperty(MAIL_Account);// 구글계정
		String myAccountPass = properties.getProperty(MAIL_PASS);// 구글계정 비밀번호

		String toName = "BNS-SYSTEM"; // 구글 메일에서 답장받는 나를 대표
		String toEmail = "jung@bns-system.com"; // 구글 메일에서 답장받는 나를 대표(bns)



		String fromName = request.getParameter("fromName");
		String fromEmail = request.getParameter("fromEmail");
		String subject = request.getParameter("subject");
		String detail = request.getParameter("detail");
		String debugMode = "false";
		String authMode = "true";

		try {

			boolean debug = Boolean.valueOf(debugMode).booleanValue();

			properties = new Properties();

			properties.put("mail.smtp.starttls.enable", "true");
			properties.setProperty("mail.transport.protocol", mailProtocol);
			properties.put("mail.debug", debugMode);
			properties.put("mail.smtp.host", mailHost);
			properties.put("mail.smtp.port", mailPort);
			//			properties.put("mail.smtp.connectiontimeout", "5000");
			//			properties.put("mail.smtp.timeout", "5000");
			properties.put("mail.smtp.auth", authMode);

			Session session = Session.getInstance(properties, new Authenticator() {

				@Override
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(myAccountEmail, myAccountPass);
				}

			});

			if (authMode.equals("true")) {

				Authenticator auth = new MyAuthentication(myAccountEmail, myAccountPass);

				session = Session.getInstance(properties, auth);

			} else {

				session = Session.getInstance(properties, null);

			}

			session.setDebug(debug);
			String encodedFromName = MimeUtility.encodeText(fromName, "UTF-8", "B");
			String encodedSubject = MimeUtility.encodeText(subject, "UTF-8", "B");
			MimeMessage msg = new MimeMessage(session);

			msg.setFrom(new InternetAddress(encodedFromName, fromEmail));
			msg.setRecipient(Message.RecipientType.TO, new InternetAddress(toEmail, toName));
			msg.setSubject(encodedSubject);
			msg.setContent(detail, "text/html; charset=utf-8");

			Transport t = session.getTransport(mailProtocol);

			properties.setProperty("mail.smtp.starttls.enable", "true");
			properties.setProperty("mail.smtp.ssl.protocols", "TLSv1.2");

			try {
				t.connect();
				t.sendMessage(msg, msg.getAllRecipients());
				PrintWriter writer = response.getWriter();
				String url = "/";
				writer.println("<script>alert('送信成功。'); location.href='" + url + "';</script>");
				writer.close();

			} catch (Exception e) {
				PrintWriter writer = response.getWriter();
				String url = "/";
				writer.println("<script>alert('送信失敗。'); location.href='" + url + "';</script>");
				writer.close();
				e.printStackTrace();
			} finally {

				t.close();

			}

		} catch (Exception e) {

			e.printStackTrace();

		}

	}

}
