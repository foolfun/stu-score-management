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
    		font-family:����;
    		font-size:20px;
    	}
    	#t2{
    		font-family:����;
    		font-size:25px;
    		align:center;
    		border:solid 1px;
    		border-collapse: collapse;
    		width:450px;
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
    <title>�γ̲�ѯ���ҳ��</title>

  </head>
  <%
  		Query que = new Query();
  		ResultSet rs = null;
  		String cname = request.getParameter("cname");
  		if(cname==null || cname.equals("")){
  			rs = que.queryc();
  		}else{
  			rs = que.querycbycname(cname);
  		}
   %>
    <body>
   	<div id="r">
   	<h3>������γ̺Ų��ҿγ���Ϣ��</h3>
	<form action="resultc.jsp" method="post">
	�γ���:<input type="text" name="cname" />
	<input type="submit" value="����" id="sub"/>
	<input type=button id="sub" value="BACK" onClick="history.go(-1)"/>
	</form>
  </div>
  <div id="main">
  <h3>�γ���Ϣ���£�</h3>
 	<table id="t2">
 		<tr>
      	<td>�γ̱��:</td>
      	<td>�γ�����:</td>
      	</tr>
      	 <%
      		while(rs.next()){
      	 %>
      	<tr>
      	<td><%=rs.getString("cid") %></td>
      	<td><%=rs.getString("cname") %></td>
      	</tr>
      	<%
      	}
      	 %>
      </table>
	</div>
  </body>
</html>
