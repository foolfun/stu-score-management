package servlet;

import java.io.File;
import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import stu.*;
import com.alibaba.fastjson.JSONObject;
public class AddServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
	  	String sname = request.getParameter("sname");
	  	String cname = request.getParameter("cname");
	  	String grade = request.getParameter("grade");
	  	String filename ="d://stu//student.txt";
	  	File file = new File(filename);
	  	String content = "{\"id\":\""+id+"\",\"sname\":\""+sname+"\",\"cname\":\""+cname+"\",\"grade\":\""+grade+"\"}";
	  	File_txt fi = new File_txt();
	  	
	  	/*Map<String,String[]> getMap = request.getParameterMap();
	  	System.out.println(getMap.toString());*/
	  	fi.filein(filename,content);
	  	response.sendRedirect("query.jsp");
		
	}
	
}
