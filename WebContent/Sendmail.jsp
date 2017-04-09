<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.io.IOException;
import javax.mail.*;
import javax.mail.internet.*;
import java.io.PrintWriter;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;" 
 %>
<%
response.setContentType("text/html");
PrintWriter outt=response.getWriter();
HttpSession ses=request.getSession(false);
String to=request.getParameter("email");
/* (String)ses.getAttribute("ll"); */
String subject="Thank you From [Indian Passport Provider System] Government of India for filling out your information!";
String msg=" Dear Customer , Thank you for filling out your information! We’ve sent you an email  link of Application form at the email address you provided. Please Attach Aadhar card zerox with this application form for your nearest passport kendra office, and let us know if you have any questions we can help you with. The [Indian Passport Provider System] Team - While fetching application enter your registered mobile no 'See Your Application form'  at: https://www.123contactform.com/blog/2014/09/5-thank-you-messages-to-use-on-your-web-forms/#sthash.7F7PE9Z4.dpuf " ; 
try{
	//properties
	 Properties props = new Properties();  
	  props.put("mail.smtp.host", "smtp.gmail.com");  
	  props.put("mail.smtp.socketFactory.port", "465");  
	  props.put("mail.smtp.socketFactory.class",  
	            "javax.net.ssl.SSLSocketFactory");  
	  props.put("mail.smtp.auth", "true");  
	  props.put("mail.smtp.port", "465");  
	//session
	  Session sessionn=Session.getDefaultInstance(props, 
			  new javax.mail.Authenticator() {  
		   protected PasswordAuthentication getPasswordAuthentication() {  
			   return new PasswordAuthentication("homejeet.b@gmail.com","nirankar123");//change accordingly  
			   }  
			  });

	//compose
	  MimeMessage message = new MimeMessage(sessionn);  
      message.setFrom(new InternetAddress("homejeet.b@gmail.com"));  
      message.addRecipient(Message.RecipientType.TO,
    		  new InternetAddress(to));
      message.setSubject(subject);  
      message.setText(msg);  
	//transport
      Transport.send(message);
      out.print("mail delivered successfully");
      response.sendRedirect("application.jsp");

}
catch(Exception e)
{
	e.printStackTrace();
}





%>
</body>
</html>