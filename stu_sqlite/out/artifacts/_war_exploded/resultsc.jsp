<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page import="stu.*" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
     <style type="text/css">
 		body{
    		background-image:url(1.jpg);
    		background-size:cover;	
    		font-family:楷体;
    		font-size:20px;
    	}
    	#t2{
    		font-family:楷体;
    		font-size:25px;
    		align:center;
    		border:solid 1px;
    		border-collapse: collapse;
    		width:750px;
    	}
    	tr{
			border-bottom: 1px solid;
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
    	input{
    		height:25px
    	}
 	</style>
    <title>成绩结果页面</title>

  </head>
    <body>
  <div id="r">
    
  <h3>输入学号查找成绩：</h3>
	<form action="resultsc.jsp" method="post">
	学号:<input type="text" name="sid" />
	<input type="submit" value="查找" id="sub"/>
	<input type=button id="sub" value="BACK" onClick="history.go(-1)"/>
	</form></div>
	  <div id="main">
	  <%
  		
  		Query que = new Query();
  		ResultSet rs = null;
  		String sid = request.getParameter("sid");
  		rs = que.querysc(sid);

  %>

  <h3>课程成绩信息:</h3>
 	<table id="t2">
      	<tr>
      	<td>学号：</td>
      	<td>姓名:</td>
      	<td>课程编号:</td>
      	<td>课程名称:</td>
      	<td>课程成绩:</td>
      	</tr>
      	 <%
      	while(rs.next()){
      	 %>
      	<tr>
      	<td><%=rs.getString("sid") %></td>
      	<td><%=rs.getString("sname") %></td>
      	<td><%=rs.getString("cid") %></td>
      	<td><%=rs.getString("cname") %></td>
      	<%
      		if(rs.getString("grade")==null || rs.getString("grade").equals("") ){
      	%><td>暂无成绩</td>
      	<%
          	}else{
      	 %>
      	<td><%=rs.getString("grade") %></td>
  		<% } %>
      	</tr>
      	<%
      	}
      	%>
      </table>
	</div>
  </body>
</html>
