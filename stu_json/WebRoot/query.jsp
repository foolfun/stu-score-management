<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

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
    	#sub{
    		width:60px;
    		height:30px;
    	}
    	#main{
    	 	margin:45px
    	}
    	input{
    		height:25px
    	}
 	</style>
    <title>��ѯҳ��</title>

  </head>
  
  <body>
  <a href="index.jsp" ><button id="sub">back</button></a>
  
  <div id="main">
  <h3>������ѧ�Ų��ҳɼ���</h3>
	<form action="result.jsp" method="post">
	ѧ��:<input type="text" name="id" />
	<input type="submit" value="����" id="sub"/>
	</form>
	</div>
  </body>
</html>
