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
   String a=request.getParameter("apply");
String b=request.getParameter("typeofapp");
String c=request.getParameter("booklet");
String d=request.getParameter("minor");
String e=request.getParameter("gname");//ghghg
String f=request.getParameter("sname");
String g=request.getParameter("cname");
String h=request.getParameter("date");
String i=request.getParameter("pob");
String j=request.getParameter("state");
String k=request.getParameter("district");
String l=request.getParameter("sex");
String m=request.getParameter("marital");
String n=request.getParameter("citizen");
String o=request.getParameter("education");
String p=request.getParameter("non-ecr");
String q=request.getParameter("mark");

HttpSession ses=request.getSession();
ses.setAttribute("a",a);
ses.setAttribute("b",b);
ses.setAttribute("c",c);
ses.setAttribute("d",d);
ses.setAttribute("e",e);
ses.setAttribute("f",f);
ses.setAttribute("g",g);
ses.setAttribute("h",h);
ses.setAttribute("i",i);
ses.setAttribute("j",j);
ses.setAttribute("k",k);
ses.setAttribute("l",l);
ses.setAttribute("m",m);
ses.setAttribute("n",n);
ses.setAttribute("o",o);
ses.setAttribute("p",p);
ses.setAttribute("q",q);

RequestDispatcher rd=request.getRequestDispatcher("form2.jsp");
rd.forward(request, response);


%>










</body>
</html>