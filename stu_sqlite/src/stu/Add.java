package stu;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class Add {
	public void addStu(Student stu){
		Connection conn = null;
		PreparedStatement pstm = null;
		try{
			conn = Sqlite.conn();
			String sql = "insert into student values(?,?)";
			pstm = conn.prepareStatement(sql);
			pstm.setString(1,stu.getSid());
			pstm.setString(2,stu.getSname());			
			pstm.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void addSC(Student stu){
		Connection conn = null;
		PreparedStatement pstm = null;
		try{
			conn = Sqlite.conn();
			String sql = "insert into sc values(?,?,?)";
			pstm = conn.prepareStatement(sql);
			pstm.setString(1,stu.getSid());
			pstm.setString(2,stu.getCid());	
			pstm.setString(3,stu.getGrade());	
			pstm.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void addCourse(Student stu){
		Connection conn = null;
		PreparedStatement pstm = null;
		try{
			conn = Sqlite.conn();
			String sql = "insert into course values(?,?)";
			pstm = conn.prepareStatement(sql);
			pstm.setString(1,stu.getCid());
			pstm.setString(2,stu.getCname());			
			pstm.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}
