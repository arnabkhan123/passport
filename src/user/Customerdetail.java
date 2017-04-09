package user;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

/**
 * Servlet implementation class Customerdetail
 */
@WebServlet("/Customerdetail")
public class Customerdetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Customerdetail() {
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
		    String qry="select * from customerdatabase ";
		out.print("<center><h1>Customer details</h1></center>");
		out.print("table align='center'");
		out.print("<tr><th>Application_no</th><th>Name</th><th>Surname</th><th>DOB</th><th>State</th><th>SEX</th><th>Pass status</th><th>Checked</th><th>Shedule Appointment</th>");
		try{
			
			Class.forName(driver);
	    	Connection con=(Connection) DriverManager.getConnection(url,user,password);
	    	PreparedStatement stmt=(PreparedStatement) con.prepareStatement(qry);
	    	ResultSet rs=stmt.executeQuery();
	    	while(rs.next())
	    	{
	    		out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(9)+"</td><td>"+rs.getString(11)+"</td><td>"+rs.getString(13)+"</td><td>"+rs.getString(34)+"</td><td><select name='checked'><option value='Checked'>CHECKED</option></select></td>"+"<td><a href='updatecus.jsp?pid="+rs.getString(1)+"'><img src='image/update.jpg' height=30 width=30></a></td></tr>");
	    	}
			
			
			
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		out.print("</table>");
		
		
		
		
		
		
		
		
	}

}
