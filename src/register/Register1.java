package register;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import sms.SendSms;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
//import com.mysql.jdbc.ResultSet;

/**
 * Servlet implementation class Register1
 */
@WebServlet("/Register1")
public class Register1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register1() {
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
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String driver="com.mysql.jdbc.Driver";
		String url="jdbc:mysql://localhost:3306/company";
		String user="root";
		String password="1234";
		String qry="insert into user3(name,age,sex,address,dob,password,mobile_no,email) values(?,?,?,?,?,?,?,?)";
		try{
			Class.forName(driver);
			Connection con=(Connection) DriverManager.getConnection(url,user,password);
			PreparedStatement stmt=(PreparedStatement) con.prepareStatement(qry);
			stmt.setString(1, request.getParameter("name"));
			stmt.setString(2, request.getParameter("age"));
			stmt.setString(3, request.getParameter("sex"));
			stmt.setString(4, request.getParameter("address"));
			stmt.setString(5, request.getParameter("dob"));
			stmt.setString(6, request.getParameter("password"));
			stmt.setString(7, request.getParameter("mobile"));
			stmt.setString(8, request.getParameter("email"));
			int status=stmt.executeUpdate();
			  con.commit();
			  con.close();
               
			String m=request.getParameter("mobile");
			if(status>0)
			{
				
				 SendSms.mob=m;
			     SendSms.sendMessage();
				out.print("<b><font color='green'> Successfully....registered</font></b>");
				RequestDispatcher rd=request.getRequestDispatcher("/Registerd1");
				rd.forward(request,response);
				
			}
			else{
				out.print("<b><font color='red'>fails.. </font></b>");
				RequestDispatcher rd=request.getRequestDispatcher("register.html");
				rd.include(request,response);
				
			}
			
			
		}catch(Exception e){e.printStackTrace();}
		
	}

		
}


