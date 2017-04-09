package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sms.SendSms;
import controller.User;
import db.UserDao;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
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
		u.setAge(request.getParameter("age"));
		u.setSex(request.getParameter("sex"));
		u.setAddress(request.getParameter("address"));
		u.setDob(request.getParameter("dob"));
		u.setPassword(request.getParameter("password"));
		u.setMobile_no(request.getParameter("mobile"));
		u.setGmail(request.getParameter("email"));
		
		 String m=u.getMobile_no();
		int status=UserDao.save(u);
		if(status>0)
		{
			out.print("<font color='green'>Register Success</font>");
		     SendSms.mob=m;
		     SendSms.sendMessage();
			RequestDispatcher rd=request.getRequestDispatcher("index.html");
			rd.include(request,response);
			}
		else
		{
			out.print("<font color='red'>Register Fails</font>");
			RequestDispatcher rd=request.getRequestDispatcher("register.html");
			rd.include(request,response);
			
		}
		
		
		
		
		
	}

}
