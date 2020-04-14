package stu;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Query {
	public ResultSet querystu(String sid){
		Connection conn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		try{
			conn = Sqlite.conn();
			String sql = "select * from student where sid like ?";
			pstm = conn.prepareStatement(sql);
			pstm.setString(1,"%"+sid+"%");
			rs=pstm.executeQuery();
		}catch (Exception e) {
			e.getStackTrace();
		}
		return rs;
	}
	public ResultSet queryallstu(){
		Connection conn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		try{
			conn = Sqlite.conn();
			String sql = "select * from student";
			pstm = conn.prepareStatement(sql);
			rs=pstm.executeQuery();
		}catch (Exception e) {
			e.getStackTrace();
		}
		return rs;
	}
	public ResultSet queryc(){
		Connection conn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		try{
			conn = Sqlite.conn();
			String sql = "select * from course";
			pstm = conn.prepareStatement(sql);
			rs=pstm.executeQuery();
		}catch (Exception e) {
			e.getStackTrace();
		}
		return rs;
	}
	public ResultSet querycbycname(String cname){
		Connection conn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		try{
			conn = Sqlite.conn();
			String sql = "select * from course where cname like ? ";
			pstm = conn.prepareStatement(sql);
			pstm.setString(1,"%"+cname+"%");
			rs=pstm.executeQuery();
		}catch (Exception e) {
			e.getStackTrace();
		}
		return rs;
	}
	public ResultSet querysc(String sid){
		Connection conn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		try{
			conn = Sqlite.conn();
			if(sid==null || sid.equals("")){
				String sql = "select * from sc_c";
				pstm = conn.prepareStatement(sql);
				rs=pstm.executeQuery();
			}else{
				String sql = "select * from sc_c where sid like ?";
				pstm = conn.prepareStatement(sql);
				pstm.setString(1,"%"+sid+"%");
				rs=pstm.executeQuery();
			}
			
		}catch (Exception e) {
			e.getStackTrace();
		}
		return rs;
	}

}
