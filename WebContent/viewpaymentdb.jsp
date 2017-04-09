<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <%@ page import=" java.io.IOException;
		  import java.io.PrintWriter;
  import java.sql.DriverManager;

  import javax.servlet.RequestDispatcher;
  import javax.servlet.ServletException;
  import javax.servlet.annotation.WebServlet;
  import javax.servlet.http.HttpServlet;
  import javax.servlet.http.HttpServletRequest;
  import javax.servlet.http.HttpServletResponse;
  import javax.servlet.http.HttpSession;

  import com.mysql.jdbc.Connection;
  import com.mysql.jdbc.PreparedStatement;
  
  import java.sql.*; " 
  %> 
  <%
  response.setContentType("text/html");
	PrintWriter outt=response.getWriter();
	String driver="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306/company";
	String user="root";
	String password="1234";
	String qry="insert into viewpaymentdb(cardno,expirymonth,rs,cvv) values(?,?,?,?)";
	try{
		Class.forName(driver);
		Connection con=(Connection) DriverManager.getConnection(url,user,password);
		PreparedStatement stmt=(PreparedStatement) con.prepareStatement(qry);
		stmt.setString(1, request.getParameter("cardno"));
		stmt.setString(2, request.getParameter("expirym"));
		//stmt.setString(3, request.getParameter("expiryy"));
		stmt.setString(3, request.getParameter("money"));
		stmt.setString(4, request.getParameter("cvv"));
		/* stmt.setString(4, request.getParameter("address"));
		stmt.setString(5, request.getParameter("dob"));
		stmt.setString(6, request.getParameter("password"));
		stmt.setString(7, request.getParameter("mobile"));
		stmt.setString(8, request.getParameter("email")); */
		int status=stmt.executeUpdate();
		 // con.commit();
		 // con.close();
         
		/* String m=request.getParameter("mobile"); */
		if(status>0)
		{
			response.sendRedirect("success.jsp");
			/*  SendSms.mob=m;
		     SendSms.sendMessage(); */
			outt.print("<b><font color='green'> Successfully....registered</font></b>");
			/* RequestDispatcher rd=request.getRequestDispatcher("/Registerd1");
			rd.forward(request,response); */
			
			
		}
		else{
			outt.print("<b><font color='red'>fails.. </font></b>");
			/* RequestDispatcher rd=request.getRequestDispatcher("register.html");
			rd.include(request,response); */
			
		}
		
		
	}catch(Exception e){e.printStackTrace();}
  
  %>
</body>
</html>