package stu;

import java.sql.Connection;
import java.sql.PreparedStatement;


public class Update {
	public void updateStu(String[] sid,String[] sname){
		Connection conn = null;
		PreparedStatement pstm = null;
		try{
			conn = Sqlite.conn();
			String sql = "update student set sname=? where sid=?";
			pstm = conn.prepareStatement(sql);
			for(int i=0;i<sid.length;i++){
				pstm.setString(1,sname[i]);
				//System.out.print(sname[i]);
				pstm.setString(2,sid[i]);	
				pstm.executeUpdate();
			}

		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updateSC(String[] grade,String[] sid,String[] cid){
			Connection conn = null;
			PreparedStatement pstm = null;
			try{
				conn = Sqlite.conn();
				String sql = "update sc set grade=? where sid=? and cid=?";
				pstm = conn.prepareStatement(sql);
				for(int i=0;i<cid.length;i++){
					pstm.setString(1,grade[i]);
					System.out.print(grade[i]);
					pstm.setString(2,sid[i]);
					pstm.setString(3,cid[i]);	
					pstm.executeUpdate();
				}
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
	public void updateCourse(String[] cname,String[] cid){
		Connection conn = null;
		PreparedStatement pstm = null;
		try{
			conn = Sqlite.conn();
			String sql = "update course set cname=? where cid=?";
			pstm = conn.prepareStatement(sql);
			for(int i=0;i<cid.length;i++){
				pstm.setString(1,cname[i]);
				//System.out.print(cname[i]);
				pstm.setString(2,cid[i]);			
				pstm.executeUpdate();
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}
