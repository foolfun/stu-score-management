<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <script type="text/javascript">
    	function check(){
    		var id = document.getElementsByName("id")[0].value;
    		var  cname= document.getElementsByName("cname")[0].value;
    		var grade = document.getElementsByName("grade")[0].value;
    		var sname = document.getElementsByName("sname")[0].value;
    		if(sname == null || sname == "" ||cname == null || cname == ""||grade == null || grade == ""||id == null || id == ""){
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
    <title>首页</title>
	
  </head>
  
  <body>
 
  <h2><font color="#0000a0">Welcome</font></h2>
  <div id="main">
  <form action="add" method="post" onSubmit="return check()">
  		<table>
      	<tr>
      	<th colspan="2">请在下面录入相关信息<hr/></th>
      	</tr>
      	<tr>
      	<td class="r">学号:</td>
      	<td><input type="text" name="id" /></td>
      	</tr>
      	<tr>
      	<td class="r">姓名:</td>
      	<td><input type="text" name="sname" /></td>
      	</tr>
      	<tr>
      	<td class="r">课程名称:</td>
      	<td><input type="text" name="cname" /></td>
      	</tr>
      	<tr>
      	<td class="r">选课成绩:</td>
      	<td><input type="text" name="grade" /></td>
      	</tr>
      	<tr>
      	<td colspan="2" align="center">
      	<input type="submit" value="提交" class="sub"/>
      	</td>
      	</tr>
      </table>
    </form>
    </div>
  </body>
  
</html>
