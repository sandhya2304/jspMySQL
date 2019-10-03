package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.User;

public class UserDao 
{
	
	public static Connection getCon()
	{
		Connection con = null;
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db1","root","root");
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return con;	
	}
	
	public static int deleteUser(User user)
	{
		int done = 0;
		try
		{
			Connection con = getCon();
			PreparedStatement ps= con.prepareStatement("delete from register where id=?");
			ps.setInt(1,user.getId());
			done = ps.executeUpdate();
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return done;
		
	}
	
	
	public static int insertUser(User user)
	{
		int status = 0;
		
		try
		{
			Connection con = getCon();
			PreparedStatement ps= con.prepareStatement("insert into register values(?,?,?,?,?,?)");
			ps.setInt(1,user.getId());
			ps.setString(2, user.getName());
			ps.setString(3, user.getPassword());
			ps.setString(4, user.getEmail());
			ps.setString(5, user.getSex());
			ps.setString(6, user.getCountry());
			status = ps.executeUpdate();
			
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return status;		
	}
	
	
	public static int updateUser(User user)
	{
		int status = 0;
		
		try
		{
			Connection con = getCon();
			PreparedStatement ps= con.prepareStatement("update register set name=?,password=?,email=?,sex=?,country=? where id=?");
			
			ps.setString(1, user.getName());
			ps.setString(2, user.getPassword());
			ps.setString(3, user.getEmail());
			ps.setString(4, user.getSex());
			ps.setString(5, user.getCountry());
			ps.setInt(6,user.getId());
			status = ps.executeUpdate();
			
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return status;
			
	}
	
	
	
	
	public static List<User> showAll()
	{
		List<User> users = new ArrayList<User>();
		
		try
		{
		Connection con= getCon();
		PreparedStatement ps = con.prepareStatement("select * from register");
		ResultSet rs= ps.executeQuery();
		while(rs.next())
		{
			User user = new User();
			user.setId(rs.getInt("id"));
			user.setName(rs.getString("name"));
			user.setPassword(rs.getString("password"));
			user.setEmail(rs.getString("email"));
			user.setSex(rs.getString("sex"));
			user.setCountry(rs.getString("country"));
			users.add(user);
			
		}	
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return users;
		
	}
	
	
	public static User findById(int id)
	{
		User user = new User();
		
		try
		{
		Connection con= getCon();
		PreparedStatement ps = con.prepareStatement("select * from register where id=?");
		ps.setInt(1,id);
		ResultSet rs= ps.executeQuery();
		while(rs.next())
		{
			user.setId(rs.getInt("id"));
			user.setName(rs.getString("name"));
			user.setPassword(rs.getString("password"));
			user.setEmail(rs.getString("email"));
			user.setSex(rs.getString("sex"));
			user.setCountry(rs.getString("country"));
			
		}	
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return user;
		
	}
	
	
	
	

}
