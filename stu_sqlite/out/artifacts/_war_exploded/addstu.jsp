<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page import="stu.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <script type="text/javascript">
    	function check(){
    		var sid = document.getElementsByName("sid")[0].value;
    		var sname = document.getElementsByName("sname")[0].value;
    		if(sname == null || sname == "" ||sid == null || sid == ""){
    			alert("����д����");
    			return false; 	
    		}
    	}
    
    </script>
    <style type="text/css">
    	table{
    		font-family:����;
    		font-size:28px;
    		align:center;
    		width:550px;
    		height:150px;
    		
    	}
    	input{
    		
    		width:85%;
    		height:80%;
    	}
    	.sub{
    		width:80px;
    		height:30px;
    		
    	}
    	#main{
    		padding:50px;
    		position:absolute;
    		top:10%;
    		
    	}
    	body{
    		background-image:url(1.jpg);
    		background-size:cover;
    		
    	}
    </style>
    <title>���ѧ����Ϣҳ��</title>
	
  </head>
  
  <body>
 
  <h2><font color="#0000a0">Welcome</font></h2>
  <div id="main">
  <form action="addstu.jsp" method="post" onSubmit="return check()">
  		<table>
      	<tr>
      	<th colspan="2">��������¼�������Ϣ<hr/></th>
      	</tr>
      	<tr>
      	<td>ѧ��:</td>
      	<td><input type="text" name="sid" /></td>
      	</tr>
      	<tr>
      	<td>����:</td>
      	<td><input type="text" name="sname" /></td>
      	</tr>
      	<tr>
      	<td colspan="2" align="center">
      	<input type="submit" value="�ύ" class="sub"/>
      	<input type=button class="sub" value="BACK" onClick="history.go(-1)"/>
      	</td>
      	</tr>
      </table>
    </form>
    </div>
    <%
    	String sid = request.getParameter("sid");
	  	String sname = request.getParameter("sname");
	  	Student stu = new Student();
	  	if(sid != null && sid.equals("")==false){
		  	stu.setSid(sid);
		  	stu.setSname(sname);
		  	Add ad= new Add();
		  	ad.addStu(stu);    
	  	}
     %>
  </body>
  
</html>
