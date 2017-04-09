<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>details</title>
</head>



<body  bgcolor="green" >
<div id="d">
<div id="c">
<img src="image/digital2.jpg" width="155" height="200">
</div>
</div>
<img src="image/d.jpg"/><br><br>
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
    String qry="select * from customerdatabase ";
    String applicationno="";
    String name="";
    String surname="";
    String dob="";
    String state="";
    String sex="";
    String passstatus="";
    String checked="";

try{
	
	Class.forName(driver);
	Connection con=(Connection) DriverManager.getConnection(url,user,password);
	PreparedStatement stmt=(PreparedStatement) con.prepareStatement(qry);
	ResultSet rs=stmt.executeQuery();
	
	while(rs.next())
	{   
		/* out.print("<center><h1>Customer details</h1></center>");
		out.print("<table align='center'>");
		out.print("<tr><th>Application_no</th><th>Name</th><th>Surname</th><th>DOB</th><th>State</th><th>SEX</th><th>Pass status</th><th>Checked</th><th>Shedule Appointment</th>");		 */
		outt.print("<table align='center'><tr><th>"+rs.getString(1)+"</th><th>"+rs.getString(6)+"</th><th>"+rs.getString(7)+"</th><th>"+rs.getString(9)+"</th><th>"+rs.getString(11)+"</th><th>"+rs.getString(13)+"</th><th>"+rs.getString(34)+"</th><th></th>"+"<th></th></tr></table>");
		//outt.print("</table>");
		
		 applicationno=rs.getString(1);
		name=rs.getString(6);
        surname=rs.getString(7);
        dob=rs.getString(9);
        state=rs.getString(11);
        sex=rs.getString(13);
       // passstatus=rs.getString(34);
        /* checked=rs.getString(1); */
		
        ses.setAttribute("application",applicationno);
        ses.setAttribute("name",name);
        ses.setAttribute("surname",surname);
        ses.setAttribute("dob",dob);
        ses.setAttribute("state",state);
        ses.setAttribute("sex",sex);
     //   ses.setAttribute("pass",passstatus); */

		
	}
	
	response.sendRedirect("customerdetail1.jsp");
	
	
}catch(Exception e)
{
	e.printStackTrace();
}





%>
<!-- <input type="text" name="my_check" value=> Check value -->
 <button    onclick="window.location='adminpage.jsp'"    class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent">
  << Prev
</button> 


</body>
</html>