package stu;
import java.sql.*;

public class Sqlite 
{
	static Connection conn;
    public static Connection conn(){
		try{
			 Class.forName("org.sqlite.JDBC");//��������
			 conn = DriverManager.getConnection("jdbc:sqlite:D://ѧ��ѡ��//stu_cla//stu.db");
			System.out.println("sql connection success!");
		}catch(Exception e){
			System.out.println("�������ݿ�ʧ�ܣ�"+e.getMessage());
		}
		return conn;
	}
}