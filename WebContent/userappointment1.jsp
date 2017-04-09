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
HttpSession ses=request.getSession();
response.setContentType("text/html");
PrintWriter outt=response.getWriter();
 String driver="com.mysql.jdbc.Driver";
    String url="jdbc:mysql://localhost:3306/company";
    String user="root";
    String password="1234";
    String qry="select * from appointment where applicationno=? ";
    String applicationno="";
    String date="";
    String status="";
    String dob="";
    String state="";
    String sex="";
    String passstatus="";
    String checked="";

try{
	
	Class.forName(driver);
	Connection con=(Connection) DriverManager.getConnection(url,user,password);
	PreparedStatement stmt=(PreparedStatement) con.prepareStatement(qry);
	stmt.setString(1, request.getParameter("number"));
	ResultSet rs=stmt.executeQuery();
	
	while(rs.next())
	{   
		/* out.print("<center><h1>Customer details</h1></center>");
		out.print("<table align='center'>");
		out.print("<tr><th>Application_no</th><th>Name</th><th>Surname</th><th>DOB</th><th>State</th><th>SEX</th><th>Pass status</th><th>Checked</th><th>Shedule Appointment</th>");		 */
/* 		outt.print("<table align='center'><tr><th>"+rs.getString(1)+"</th><th>"+rs.getString(2)+"</th><th>"+rs.getString(3)+"</th>");
 */		//outt.print("</table>");
		
		 applicationno=rs.getString(1);
		date=rs.getString(2);
        status=rs.getString(3);
        //dob=rs.getString(9);
        //state=rs.getString(11);
        //sex=rs.getString(13);
        //passstatus=rs.getString(34);
        /* checked=rs.getString(1); */
		HttpSession sess=request.getSession();
        sess.setAttribute("application",applicationno);
        sess.setAttribute("date",date);
        sess.setAttribute("status",status);
       // ses.setAttribute("dob",dob);
        //ses.setAttribute("state",state);
        //ses.setAttribute("sex",sex);
        //ses.setAttribute("pass",passstatus); */

		
	}
	
	

	
	
	
	
	    response.sendRedirect("userappointdisplay.jsp");
	
	
}catch(Exception e)
{
	e.printStackTrace();
}










%>
</body>
</html>