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
    	table{
    		font-family:����;
    		font-size:25px;
    		align:center;
    		border:solid 1px;
    		border-collapse: collapse;
    		width:280px;
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
    <title>�γ���Ϣ�޸�ҳ��</title>

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
   	<h3>����γ̺Ų��ҿγ���Ϣ��</h3>
	<form action="updatec.jsp" method="post">
	�γ���:<input type="text" name="cname" />
	<input type="submit" value="����" id="sub"/>
	<input type=button id="sub" value="BACK" onClick="history.go(-1)"/>
	</form>
  </div>
  <div id="main">
  <h3>�γ���Ϣ���£�</h3>
  <form action="updatec" method="post">
 	<table>
 		<tr>
      	<td>�γ̱��:</td>
      	<td>�γ�����:</td>
      	</tr>
      	 <%
      		while(rs.next()){
      	 %>
      	<tr>
      	<td><input type="text" name="cid" value=<%=rs.getString("cid") %> readonly="readonly"/></td>
      	<td><input type="text" name="cname" value=<%=rs.getString("cname") %> /></td>
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