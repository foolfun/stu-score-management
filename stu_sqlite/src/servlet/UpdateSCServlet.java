package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import stu.Update;

public class UpdateSCServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String[] grade = request.getParameterValues("grade");
		String[] sid = request.getParameterValues("sid");
		String[] cid = request.getParameterValues("cid");
 		Update up = new Update();
 		up.updateSC(grade,sid,cid);
	  	response.sendRedirect("updatesc.jsp");
	}	
}
