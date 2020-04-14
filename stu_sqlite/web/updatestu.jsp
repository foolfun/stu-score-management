<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page import="stu.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
      <style type="text/css">
    	#t2{
    		font-family:楷体;
    		font-size:25px;
    		align:center;
    		border:solid 1px;
    		border-collapse: collapse;
    		width:250px;
    	}
    	tr{
		border-bottom: 1px solid;
		}
    	.r{
    		text-align:center;
    	}
    	#sub{
    		width:60px;
    		height:30px;
    	}
    	#main{
    		padding-left:150px;
    		float: left;
    	}
    	#r{
    		float: left;
    	}
    	body{
    		background-image:url(1.jpg);
    		background-size:cover;
    		
    	}
    </style>
    
    <title>学生信息修改页面</title>
	
  </head>
  
  <body>
  <%	 
  		Query que = new Query(); 
  		ResultSet rs = null; 
  		String sid = request.getParameter("sid"); 
  		if(sid==null || sid.equals("")){ 
  			rs = que.queryallstu(); 
  		}else{ 
  			rs =que.querystu(sid);
  		} 		 
  %>
   
   
   <div id="r">
   	<h3>输入学号查找学生信息：</h3>
	<form action="updatestu.jsp" method="post">
	学号:<input type="text" name="sid" />
	<input type="submit" value="查找" id="sub"/>
	<input type=button id="sub" value="BACK" onClick="history.go(-1)"/>
	</form>
	</div>
	 <div id="main">
	<h3>查找到的信息如下:</h3>
	<form action="updatestu" method="post">
  	<table id="t2">
      	<tr>
      	<td>学号:</td>
      	<td>姓名:</td>
      	</tr>
      	<%
      		while(rs.next()){
      	 %>
      	<tr>
      	<td><input type="text" name="sid" value=<%=rs.getString("sid") %> readonly="readonly" /></td>
      	<td><input type="text" name="sname" value=<%=rs.getString("sname") %> /></td>
      	</tr>
		<%
			}
		 %>
      </table>
      <input type="submit" value="SAVE" />
      </form>
   </div>
  </body>
</html>
