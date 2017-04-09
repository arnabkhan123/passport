package db;

import java.sql.DriverManager;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.*;
import java.sql.*;

import controller.User;

public class UserDao {

	static String url="jdbc:mysql://localhost:3306/company";
	static String user="root";
	static String password="1234";
	public static int save(User u) {
		// TODO Auto-generated method stub
		int status=0;
		String qry="insert into user3(name,age,sex,address,dob,password,mobile_no,email) values(?,?,?,?,?,?,?,?)";
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=(Connection) DriverManager.getConnection(url,user,password);
			PreparedStatement stmt=(PreparedStatement) con.prepareStatement(qry);
			stmt.setString(1,u.getName());
			stmt.setString(2,u.getAge());
			stmt.setString(3,u.getSex());
			stmt.setString(4,u.getAddress());
			stmt.setString(5,u.getDob()); 
			stmt.setString(6,u.getPassword()); 
			stmt.setString(7,u.getMobile_no());
			stmt.setString(8, u.getGmail());
			
			status=stmt.executeUpdate();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}
	public static boolean validate(User u)
	{
		// TODO Auto-generated method stub
		boolean status=false;
		String qry="select * from user3 where name=? and password=?";
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=(Connection) DriverManager.getConnection(url,user,password);
			PreparedStatement stmt=(PreparedStatement) con.prepareStatement(qry);
			stmt.setString(1,u.getName());
			stmt.setString(2,u.getPassword());
	
			ResultSet rs=(ResultSet) stmt.executeQuery();
			status=rs.next();
		}
		catch(Exception e)
		{
			e.printStackTrace();
			
		}
		
		return status;
	}



	}


