package main;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.internet.MimeUtility;
import javax.mail.util.ByteArrayDataSource;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class MailSender
 */
@WebServlet("/KyushokuMailSender")
@MultipartConfig()
public class KyushokuMailSender extends HttpServlet {
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
		InputStream input = KyushokuMailSender.class.getClassLoader().getResourceAsStream(PROPERTIES_FILE_PATH);
		properties.load(input);
		String mailProtocol = properties.getProperty(MAIL_PROTOCOL);
		String mailHost = properties.getProperty(MAIL_HOST);
		String mailPort = properties.getProperty(MAIL_PORT);
		String myAccountEmail = properties.getProperty(MAIL_Account);// 구글계정
		String myAccountPass = properties.getProperty(MAIL_PASS);// 구글계정 비밀번호
		String toName = "BNS-SYSTEM";         // 구글 메일에서 답장받는 나를 대표
		String toEmail = "jung@bns-system.com"; // 구글 메일에서 답장받는 나를 대표(bns)


		String subject = "ホームページから求職者登録メールが届きました。";
		String debugMode = "false";
		String authMode = "true";

		String[] yourJobs = request.getParameterValues("yourJobs[]");

		String yourName = request.getParameter("yourName");
		String yourKanaName = request.getParameter("yourKanaName");
		String yourBirthday = request.getParameter("yourBirthday");
		String yourZip = request.getParameter("yourZip");
		String yourAddress = request.getParameter("yourAddress");
		String yourPhone = request.getParameter("yourPhone");
		String yourEmail = request.getParameter("yourEmail");
		String yourGraduate = request.getParameter("yourGraduate");
		String yourGraduate2 = request.getParameter("yourGraduate2");
		String yourLicense = request.getParameter("yourLicense");
		String yourSkill = request.getParameter("yourSkill");


		Part yourSheetFile = request.getPart("yourSheetFile");
        String fileName = yourSheetFile.getSubmittedFileName();
        InputStream fileContent = yourSheetFile.getInputStream();
        byte[] fileData = fileContent.readAllBytes();

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

			if(authMode.equals("true")) {

		        Authenticator auth = new MyAuthentication(myAccountEmail, myAccountPass);

		        session = Session.getInstance(properties, auth);

			} else {

				session = Session.getInstance(properties, null);

			}

			session.setDebug(debug);

			MimeMessage msg = new MimeMessage(session);

			String encodedFromName = MimeUtility.encodeText(yourName, "UTF-8", "B");

			msg.setFrom(new InternetAddress(encodedFromName, yourEmail));
			msg.setRecipient(Message.RecipientType.TO, new InternetAddress(toEmail ,toName));
			msg.setSubject(subject);

			MimeBodyPart htmlPart = new MimeBodyPart();
			String htmlContent = "<html><body>" +
			        "<h1>" + subject + "</h1>" +
			        "<p>名前: " + yourName + "</p>" +
			        "<p>フリガナ: " + yourKanaName + "</p>" +
			        "<p>生年月日: " + yourBirthday + "</p>" +
			        "<p>職種: ";

			for (int i = 0; i < yourJobs.length; i++) {
			    htmlContent += yourJobs[i] + ", ";
			}

			htmlContent += "</p>" +
			        "<p>郵便番号: " + yourZip + "</p>" +
			        "<p>住所: " + yourAddress + "</p>" +
			        "<p>連絡先: " + yourPhone + "</p>" +
			        "<p>メール: " + yourEmail + "</p>" +
			        "<p>最終学歴: " + yourGraduate + "</p>" +
			        "<p>学歴補足: " + yourGraduate2 + "</p>" +
			        "<p>保有資格･免許: " + yourLicense + "</p>" +
			        "<p>職務経歴･スキル: " + yourSkill + "</p>" +
			        "</body></html>";

			htmlPart.setContent(htmlContent, "text/html; charset=utf-8");

			MimeBodyPart filePart = new MimeBodyPart();
            DataSource source = new ByteArrayDataSource(fileData, "application/octet-stream");

            filePart.setDataHandler(new DataHandler(source));
            filePart.setFileName(fileName);

            MimeMultipart multipart = new MimeMultipart();
			multipart.addBodyPart(htmlPart);
			multipart.addBodyPart(filePart);
			msg.setContent(multipart);

			Transport t = session.getTransport(mailProtocol);

			properties.setProperty("mail.smtp.starttls.enable", "true");
			properties.setProperty("mail.smtp.ssl.protocols", "TLSv1.2");

			try {

				t.connect();
				t.sendMessage(msg, msg.getAllRecipients());
				PrintWriter writer = response.getWriter();
				String url = "/";
				writer.println("<script>alert('送信成功。'); location.href='"+url+"';</script>");
				writer.close();

			} catch (Exception e) {
				PrintWriter writer = response.getWriter();
				String url = "/";
				writer.println("<script>alert('送信失敗。'); location.href='"+url+"';</script>");
				writer.close();
				e.printStackTrace();
			}
			finally {

			  t.close();

			}

		} catch(Exception e) {
			e.printStackTrace();
		}

	}

}