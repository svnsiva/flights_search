package com.bellinfo.flights.email;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.bellinfo.flights.dao.flights.AccountDetails;

public class SendMailTLS {
	static AccountDetails amail = new AccountDetails();
	
	public void sendingEmail(String emailSend,String messageText) {
		

		final String username = "venkat2877@gmail.com";
		final String password = "venki@2877";

		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");

		Session session = Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		  });

		try {
			
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("venkat2877@gmail.com"));
			message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse(emailSend));
			message.setSubject("Ticket Reservations");
			message.setText(messageText);

			Transport.send(message);
System.out.println(amail.getEmail());
			System.out.println("Done");

		} catch (MessagingException e) {
			
			throw new RuntimeException(e);
			
		}
	}
}
