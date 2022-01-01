package com.AhmedOutri;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
//import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
//import javax.swing.text.html.HTMLDocument.HTMLReader.PreAction;

public class StudentDao {

	private static final String constring = "jdbc:mysql://localhost:3306/studemtjsp";
	private static final String username = "root";
	private static final String password = "";

	public static Connection getConnection() {
		Connection conn= null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			 conn = DriverManager.getConnection(constring, username, password);
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return conn;
	}
	
	
	
	
	
	
	public static int save(Student s) {
		int status=0;
		try {
			Connection conn=getConnection();
			PreparedStatement ps=conn.prepareStatement(
			"INSERT INTO'studentable'(name,password,email,gender,country)VALUES(?,?,?,?,?)");
			ps.setString(1,s.getName());	
			ps.setString(2,s.getPassword());	
			ps.setString(3,s.getEmail());	
			ps.setString(4,s.getGender());	
			ps.setString(5,s.getContry());	
			status=ps.executeUpdate();	
		} catch(Exception e){System.out.println(e);}
		return status;
		
	}
	
	
	
	
	
	
	
	public static int update(Student s) {
		int status=0;
		try {
			Connection conn=getConnection();
			PreparedStatement ps=conn.prepareStatement(
			"UPDATE `studenttable` SET name=?,password=?,email=?,gender=?,country=? where id=?");
			ps.setString(1,s.getName());	
			ps.setString(2,s.getPassword());	
			ps.setString(3,s.getEmail());	
			ps.setString(4,s.getGender());	
			ps.setString(5,s.getContry());
			ps.setInt(6,s.getId());
			status=ps.executeUpdate();	
		} catch(Exception e){System.out.println(e);}
		return status;
		
	}
	
	
	
	
	
	
	public static int delete(Student s) {
		int status=0;
		try {
			Connection conn=getConnection();
			PreparedStatement ps=conn.prepareStatement(
			"DELETE FROM `studenttable` WHERE id=?");
			ps.setInt(1,s.getId());
			status=ps.executeUpdate();	
		} catch(Exception e){System.out.println(e);}
		return status;
		
	}
	
	
	
	
	
	
	
	public static List<Student> getAllRecords() {
		List<Student> list=new ArrayList<Student>();
		try {
			Connection conn=getConnection();
			PreparedStatement ps=conn.prepareStatement("SELECT * FROM `studenttable`");
			ResultSet rs=ps.executeQuery();
			while (rs.next()) { 
				Student s= new Student();
				s.setName(rs.getString("name"));	
				s.setPassword(rs.getString("password"));	
				s.setEmail(rs.getString("email"));	
				s.setGender(rs.getString("gender"));	
				s.setContry(rs.getString("contry"));
				s.setId(rs.getInt("id"));
				list.add(s);
		}
		} catch(Exception e){System.out.println(e);}
		return list;
		
	}
	

	
	
	
	
	public static Student getRecordByld(int id) {
		Student s=null;
		try {
			Connection conn=getConnection();
			PreparedStatement ps=conn.prepareStatement("SELECT * FROM `studenttable` where id=?");
			ResultSet rs=ps.executeQuery();
			while (rs.next()) { 
				s= new Student();
				s.setName(rs.getString("name"));	
				s.setPassword(rs.getString("password"));	
				s.setEmail(rs.getString("email"));	
				s.setGender(rs.getString("gender"));	
				s.setContry(rs.getString("contry"));
				s.setId(rs.getInt("id"));
		}
		} catch(Exception e){System.out.println(e);}
		return s;
		
	}
	
	
	
	
	
	
	
}
