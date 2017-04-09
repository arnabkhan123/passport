<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<% 

HttpSession ses=request.getSession(false);
String a=(String)ses.getAttribute("a");
String b=(String)ses.getAttribute("b");
String c=(String)ses.getAttribute("c");
String d=(String)ses.getAttribute("d");
String e=(String)ses.getAttribute("e");
String f=(String)ses.getAttribute("f");
String g=(String)ses.getAttribute("g");
String h=(String)ses.getAttribute("h");
String i=(String)ses.getAttribute("i");
String j=(String)ses.getAttribute("j");
String k=(String)ses.getAttribute("k");
String l=(String)ses.getAttribute("l");
String m=(String)ses.getAttribute("m");
String n=(String)ses.getAttribute("n");
String o=(String)ses.getAttribute("o");
String p=(String)ses.getAttribute("p");
String q=(String)ses.getAttribute("q");
String aa=(String)ses.getAttribute("aa");
String bb=(String)ses.getAttribute("bb");
String cc=(String)ses.getAttribute("cc");
String dd=(String)ses.getAttribute("dd");
String ee=(String)ses.getAttribute("ee");
String ff=(String)ses.getAttribute("ff");
String gg=(String)ses.getAttribute("gg");
String hh=(String)ses.getAttribute("hh");
String ii=(String)ses.getAttribute("ii");
String jj=(String)ses.getAttribute("jj");
String kk=(String)ses.getAttribute("kk");
String ll=(String)ses.getAttribute("ll");
String rn1=(String)ses.getAttribute("rn1");
String mr=(String)ses.getAttribute("mr");
String rn2=(String)ses.getAttribute("rn2");
String mr2=(String)ses.getAttribute("mr2");
/* String status1=(String)ses.getAttribute("status"); */


String driver="com.mysql.jdbc.Driver";
String url="jdbc:mysql://localhost:3306/company";
String user="root";
String password="1234";
String qry="insert into customerdatabase(af,at,pb,vr,name,surname,cn,dob,pob,state,dist,sex,ms,et,eq,non_ecr,vm,fathername,mothername,residing,year,houseno,village,statecity,district,policestn,pincode,mobileno,emailid,refrn1,mob1,refrn2,mob2) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
try{
	
	Class.forName(driver);
	Connection con=(Connection) DriverManager.getConnection(url,user,password);
	PreparedStatement stmt=(PreparedStatement) con.prepareStatement(qry);
	stmt.setString(1,a);
	stmt.setString(2,b);
	 stmt.setString(3,c);
	stmt.setString(4,d);
	stmt.setString(5,e);
	stmt.setString(6,f); 
	stmt.setString(7,g);
	stmt.setString(8,h);
	stmt.setString(9,i);
	stmt.setString(10,j);
	stmt.setString(11,k);
	stmt.setString(12,l); 
	stmt.setString(13,m);
	stmt.setString(14,n);
	stmt.setString(15,o);
	stmt.setString(16,p);
	stmt.setString(17,q);
	stmt.setString(18,aa); 
	stmt.setString(19,bb); 
	stmt.setString(20,cc);
	stmt.setString(21,dd); 
	stmt.setString(22,ee);
	stmt.setString(23,ff);
	stmt.setString(24,gg);
	stmt.setString(25,hh);
	stmt.setString(26,ii);
	stmt.setString(27,jj); 
	stmt.setString(28,kk);
	stmt.setString(29,ll);
	stmt.setString(30,rn1); 
	stmt.setString(31,mr);
	stmt.setString(32,rn2);
	stmt.setString(33,mr2);
	/* stmt.setString(34,status1); */
	int status=stmt.executeUpdate();
	
	if(status>0)
	{
		System.out.println(status);
		out.print("<b><font color='green'> Successfully....</font></b>");
		//RequestDispatcher rd=request.getRequestDispatcher("Sendmail.jsp");
		//rd.forward(request,response);
	      response.sendRedirect("success1.jsp");
	}
	else{
		out.print("<b><font color='red'>fails.. </font></b>");
		/* RequestDispatcher rd=request.getRequestDispatcher("form1.jsp");
		rd.include(request,response); */
		response.sendRedirect("submitted.jsp");
		
	}
	
}catch(Exception ggg)
{
	ggg.printStackTrace();
	}


%>
</body>
</html>