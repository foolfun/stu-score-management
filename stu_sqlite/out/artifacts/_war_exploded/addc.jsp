<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page import="stu.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <script type="text/javascript">
    	function check(){
    		var cid = document.getElementsByName("cid")[0].value;
    		var cname= document.getElementsByName("cname")[0].value;
    		if(cname == null || cname == "" || cid == null || cid == ""){
    			alert("请填写完整");
    			return false; 	
    		}
    	}
    
    </script>
    <style type="text/css">
    	table{
    		font-family:楷体;
    		font-size:28px;
    		align:center;
    		width:550px;
    		height:150px;
    		
    	}
    	input{
    		
    		width:85%;
    		height:80%;
    	}
    	hr{
    		width:85%;
    	}
    	.r{
    		text-align:right;
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
    <title>添加课程页面</title>
	
  </head>
  
  <body>
 
  <h2><font color="#0000a0">Welcome</font></h2>
  <div id="main">
  <form action="addc.jsp" method="post" onSubmit="return check()">
  		<table>
      	<tr>
      	<th colspan="2">请在下面录入相关信息<hr/></th>
      	</tr>
      	<tr>
      	<td class="r">课程编号:</td>
      	<td><input type="text" name="cid" /></td>
      	</tr>
      	<tr>
      	<td class="r">课程名称:</td>
      	<td><input type="text" name="cname" /></td>
      	</tr>
      	<tr>
      	<td colspan="2" align="center">
      	<input type="submit" value="提交" class="sub"/>
      	<input type=button class="sub" value="BACK" onClick="history.go(-1)"/>
      	</td>
      	</tr>
      </table>
    </form>
    </div>
     <%
    	String cname = request.getParameter("cname");
    	String cid = request.getParameter("cid");
	  	Student stu = new Student();
	  	if(cid != null && cid.equals("")==false){
		  	stu.setCid(cid);
		  	stu.setCname(cname);
		  	Add ad= new Add();
		  	ad.addCourse(stu); 
	  	}   
     %>
  </body>
  
</html>
