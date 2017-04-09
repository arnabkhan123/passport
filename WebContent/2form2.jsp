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
   String aa=request.getParameter("father");
String bb=request.getParameter("mother");
String cc=request.getParameter("Residing");
String dd=request.getParameter("year");
String ee=request.getParameter("houseno");
String ff=request.getParameter("villagetown");
String gg=request.getParameter("statedist");
String hh=request.getParameter("district");
String ii=request.getParameter("policestn");
String jj=request.getParameter("pin");
String kk=request.getParameter("mobile");
String ll=request.getParameter("email");


HttpSession ses=request.getSession();
ses.setAttribute("aa",aa);
ses.setAttribute("bb",bb);
ses.setAttribute("cc",cc);
ses.setAttribute("dd",dd);
ses.setAttribute("ee",ee);
ses.setAttribute("ff",ff);
ses.setAttribute("gg",gg);
ses.setAttribute("hh",hh);
ses.setAttribute("ii",ii);
ses.setAttribute("jj",jj);
ses.setAttribute("kk",kk);
ses.setAttribute("ll",ll);

RequestDispatcher rd=request.getRequestDispatcher("form3.jsp");
rd.forward(request, response);

%>
</body>
</html>