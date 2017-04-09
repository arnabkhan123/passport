package sms;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 * Servlet implementation class Send
 */
@WebServlet("/Send")
public class Send extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Send() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession ses=request.getSession(false);
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String ll=(String)ses.getAttribute("ll");
		String subject="India for filling out your information!";
		String msg=" Dear Customer , Thank you for filling out your information!" ;  
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
			  Session session=Session.getDefaultInstance(props, 
					  new javax.mail.Authenticator() {  
				   protected PasswordAuthentication getPasswordAuthentication() {  
					   return new PasswordAuthentication("homejeet.b@gmail.com","nirankar123");//change accordingly  
					   }  
					  });

			//compose
			  MimeMessage message = new MimeMessage(session);  
		      message.setFrom(new InternetAddress("homejeet.b@gmail.com"));  
		      message.addRecipient(Message.RecipientType.TO,
		    		  new InternetAddress(ll));
		      message.setSubject(subject);  
		      message.setText(msg);  
			//transport
		      Transport.send(message);
		      System.out.println("mail delivered successfully");
		      response.sendRedirect("application.jsp");
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
		
	}

}
