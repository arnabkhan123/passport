package login;

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

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.*;
import java.sql.*;
/**
 * Servlet implementation class Loginuser
 */
@WebServlet("/Loginuser")
public class Loginuser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Loginuser() {
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
		String qry="select * from user3 where email=? and password=?";
		String email;
		String passworduser;
		String email1;
		String password1;
		String name;
		boolean status=false;
		try{
			Class.forName(driver);
			Connection con=(Connection) DriverManager.getConnection(url,user,password);
			PreparedStatement stmt=(PreparedStatement) con.prepareStatement(qry);
			stmt.setString(1, request.getParameter("email"));
			stmt.setString(2, request.getParameter("password"));
			ResultSet rs=(ResultSet) stmt.executeQuery();
			/*boolean status=false;*/
			if(rs.next())	
			
				
				status=true;
				
				email1=request.getParameter("email");
			password1=request.getParameter("password");
				email=rs.getString(9);
				passworduser=rs.getString(7);
				name=rs.getString(2);
			
			
		
		
		
			
		HttpSession ses=request.getSession();
	     if(email.equals(email1) && passworduser.equals(password1))
		{
			ses.setAttribute("user",name);
			out.print("<font color='red'>***** Login Successful *****</font>");
			RequestDispatcher rd=request.getRequestDispatcher("user.jsp");
			rd.forward(request, response);
		}
		
		else
		{
			out.print("<font color='red'>***** Login Fails *****</font>");
			RequestDispatcher rd=request.getRequestDispatcher("login.html");
			rd.include(request, response);
		}
		
		
		
		
     }catch(Exception e)
		{
		  e.printStackTrace();	
		}
	}
}