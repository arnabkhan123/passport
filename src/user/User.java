package user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class User
 */
@WebServlet("/User")
public class User extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public User() {
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
		HttpSession ses=request.getSession(false);
		out.println("<!Doctype html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<style type='text/css'>");
		out.println("body");
		out.println("{");
		out.println(" background: #f0f0f0;");
		out.println("font:14px/20px Arial,san-serif;");
		out.println(" color:#555;");
		out.println(" margin :0;");
		out.println("}");
		out.println("</style>");
		/*out.println("<head>");
		out.println("<head>");
		out.println("<head>");
		out.println("<head>");*/

	
		
		
		
		
		out.println("<body>");
		out.println("<right><img src='image/gov1.png'></right><br>");
		
		String name=(String)ses.getAttribute("user");
		out.println("<h align='right'>Welcome User:</h>"+"<font color='green'>"+"["+name+"]"+"</font><br><br>");
		out.print("<a href='Logout'><font color='red'>LOGOUT</font>"+"</a>");
		out.print("<a href='form1.jsp'>Apply fresh passport"+"</a>");
		out.println("<header>");
		out.println("<marquee><font color='blue'>Ration card shall not be accepted as a document of identity or proof of residence at the time of submission of passport application.</font></marquee>");
		out.println("<center><img src='image/gov.jpg'></center>");
		out.print("<p1><font color='orange'>{Over the last couple of months, the government has made the provision for linking Aadhaar card to bank accounts, LPG connections and Voter Id card. The interlinking of Aadhaar with passport issuance process became a reality last year. This move will help individuals get their passport much sooner. Any individual who has a valid Aadhaar card can pace up the passport application process.}</font></p1>");
		
		out.println("<nav>");		
		out.println("<ul>");
		out.print("<a href='welcome'>Apply fresh passport"+"</a>");
		out.print("<h><li><a href='#' ><font color='blue'>Appointment status</font></a></li></h>");
		out.println("<h><li><a href='#' ><font color='blue'>View details</font></a></li></h>");
		out.print("<p2><font color='blue'><h1>Passport authentication based on Aadhaar card</h1> <font color='orange'>Individuals applying for passport can postpone the police verification step in the application process by submitting their Aadhaar card. The Ministry of External Affairs is using Aadhaar card for identification of the passport applicant on the National Crime Records Bureau for verification of the applicant’s criminal record. The passport application process consists of a long police verification step which will be skipped in this case until the passport is issued. The applicant will get the passport in 10 days only on the condition that the applicant gets the police verification once they receive the passport.</font></p2>");
		out.println("</ul>");
		out.println("</nav>");
		out.println("<div id='doc'> ");
		out.println("<div id='content'>");
		out.println("<div id='blueberry'>");
		out.println(" <ul  class='slides'>");
		out.println(" <li><img src='image/passport.jpg'</li>");
		out.println("<li><img src='image/images.png'></li>");
		out.println(" </ul>");
		out.println(" </div>");
		out.println("</div>");
		out.println("</div>");
		
		
		
		
		out.println("</body>");
		out.println("</head>");
		out.println("</html>");
		
		/*RequestDispatcher  rd=request.getRequestDispatcher("welcome.jsp");  
		rd.forward(request, response);*/
		
	}
}