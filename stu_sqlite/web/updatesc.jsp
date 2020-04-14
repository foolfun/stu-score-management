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
    <title>成绩修改页面</title>

  </head>
    <body>
  <div id="r">
    
  <h3>输入学号查找成绩：</h3>
	<form action="updatesc.jsp" method="post">
	学号:<input type="text" name="sid" />
	<input type="submit" value="查找" id="sub"/>
	<input type=button id="sub" value="BACK" onClick="history.go(-1)"/>
	</form></div>
	  <div id="main">
	  <%
  		Query que = new Query();
  		ResultSet rs = null;
  		ResultSet rs1 = null;
  		String sid = request.getParameter("sid");
  		if(sid==null || sid.equals("")){
  			rs = que.querysc(sid);
  		}else{
  			rs = que.querysc(sid);
  			rs1 = que.querystu(sid);
  		while(rs1.next()){
	    %>
	  	学号：<%=rs1.getString("sid") %>
	 	姓名：<%=rs1.getString("sname") %>
	  <%
    	 }
  	}

  %>

  <h3>课程成绩信息:</h3>
  <form action="updatesc" method="post">
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
      	<td><input type="text" name="sid" value=<%=rs.getString("sid") %> readonly="readonly"/></td>
     	<td><%=rs.getString("sname") %></td>
      	<td><input type="text" name="cid" value=<%=rs.getString("cid") %> readonly="readonly"/></td>
      	<td><%=rs.getString("cname") %></td>

      	<%
      		if(rs.getString("grade")==null || rs.getString("grade").equals("") ){
      	%><td><input type="text" name="grade" value=暂无成绩 /></td>
      	<%
          	}else{
      	 %>
      	<td><input type="text" name="grade" value=<%=rs.getString("grade") %> /></td>
  		<% } %>
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
