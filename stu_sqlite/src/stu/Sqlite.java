package stu;
import java.sql.*;

public class Sqlite 
{
	static Connection conn;
    public static Connection conn(){
		try{
			 Class.forName("org.sqlite.JDBC");//创建驱动
			 conn = DriverManager.getConnection("jdbc:sqlite:D://学生选课//stu_cla//stu.db");
			System.out.println("sql connection success!");
		}catch(Exception e){
			System.out.println("连接数据库失败："+e.getMessage());
		}
		return conn;
	}
}