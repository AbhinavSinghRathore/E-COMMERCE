package com.niit.controller;

import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.dao.UserDetailDAO;

@Controller
public class FileSendingController
{
	@Autowired
	UserDetailDAO userDetailDAO;
	
@RequestMapping("/sendfile/{username}")

public String requestorderpdf(@PathVariable("username")String uname) {
   // Recipient's email ID needs to be mentioned.
   String to = userDetailDAO.getUserByUserName(uname).getEmailId();

   // Sender's email ID needs to be mentioned
   String from = "abhi9singh202@gmail.com";

   final String username = "abhi9singh202";//change accordingly
   final String password = "@2020Malvikabhinav";//change accordingly

   // Assuming you are sending email through relay.jangosmtp.net
   String host = "smtp.gmail.com";

   Properties props = new Properties();
   props.put("mail.smtp.auth", "true");
   props.put("mail.smtp.starttls.enable", "true");
   props.put("mail.smtp.host", host);
   props.put("mail.smtp.port", "587");
   props.put("mail.smtp.ssl.trust", "smtp.gmail.com");

   // Get the Session object.
   Session session = Session.getInstance(props,
      new javax.mail.Authenticator() {
         protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(username, password);
         }
      });

   try {
      // Create a default MimeMessage object.
      Message message = new MimeMessage(session);

      // Set From: header field of the header.
      message.setFrom(new InternetAddress(from));

      // Set To: header field of the header.
      message.setRecipients(Message.RecipientType.TO,
         InternetAddress.parse(to));

      // Set Subject: header field
      message.setSubject("Testing Subject");

      // Create the message part
      BodyPart messageBodyPart = new MimeBodyPart();

      // Now set the actual message
      messageBodyPart.setText("This is message body");

      // Create a multipar message
      Multipart multipart = new MimeMultipart();

      // Set text message part
      multipart.addBodyPart(messageBodyPart);

      // Part two is attachment
      messageBodyPart = new MimeBodyPart();
      String filename = "C:\\Users\\IBM\\eclipse-workspace\\InteriorFront\\src\\main\\webapp\\resources\\Files\\"+uname+".pdf";
      DataSource source = new FileDataSource(filename);
      messageBodyPart.setDataHandler(new DataHandler(source));
      messageBodyPart.setFileName(filename);
      multipart.addBodyPart(messageBodyPart);

      // Send the complete message parts
      message.setContent(multipart);

      // Send message
      Transport.send(message);

      System.out.println("Sent message successfully....");

   } catch (MessagingException e) {
      throw new RuntimeException(e);
   }
   return "ThankYou";
}
}

