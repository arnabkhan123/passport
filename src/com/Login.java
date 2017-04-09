package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.User;
import db.UserDao;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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
		User u=new User();
		u.setName(request.getParameter("name"));
		u.setPassword(request.getParameter("password"));
		/*u.setMobile_no(request.getParameter("ph"));*/
		
		boolean status=UserDao.validate(u);
		if(status)
		{
			
			RequestDispatcher rd=request.getRequestDispatcher("/home");
			rd.forward(request,response);
		}
		else
		{
			out.print("<font color='red'>Login Fails</font>");
			RequestDispatcher rd=request.getRequestDispatcher("index.html");
			rd.include(request,response);
		
	}
		
		
	}

}
