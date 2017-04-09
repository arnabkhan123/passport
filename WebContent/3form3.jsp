<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*,java.util.*"%>
<%@ page import= "javax.servlet.http.HttpSession" %>
<%   
   String rn1=request.getParameter("refname");
String mr=request.getParameter("mobilereference");
String rn2=request.getParameter("refname1");
String mr2=request.getParameter("2mobilereference");
String status=request.getParameter("status");

HttpSession ses=request.getSession();
ses.setAttribute("rn1",rn1);
ses.setAttribute("mr",mr);
ses.setAttribute("rn2",rn2);
ses.setAttribute("mr2",mr2);
ses.setAttribute("status", status);

RequestDispatcher rd=request.getRequestDispatcher("form33.jsp");
rd.forward(request, response);


%>
</body>
</html>