<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

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
    	hr{
    		width:100%;
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
    <title>��ҳ</title>
	
  </head>
  
  <body>
 
  <h2><font color="#0000a0">Welcome</font></h2>
  <div id="main">
  		<table>
      	<tr>
      	<th colspan="2" align="left">��ѡ����Ҫ���еĲ�����<hr/></th>
      	</tr>
      	<tr>
      	<td>ѧ����Ϣ����</td>
      	<td><a href="addstu.jsp" ><button class="sub">���</button></a>
      	<a href="resultstu.jsp" ><button class="sub">��ѯ</button></a>
      	<a href="updatestu.jsp" ><button class="sub">�޸�</button></a></td>
      	</tr>
      	<tr>
      	<td>�γ���Ϣ����</td>
      	<td><a href="addc.jsp" ><button class="sub">���</button></a>
      	<a href="resultc.jsp" ><button class="sub">��ѯ</button></a>
      	<a href="updatec.jsp" ><button class="sub">�޸�</button></a></td>
      	</tr>
      	<tr>
      	<td>ѧ���ɼ�����</td>
      	<td><a href="addsc.jsp" ><button class="sub">���</button></a>
      	<a href="resultsc.jsp" ><button class="sub">��ѯ</button></a>
      	<a href="updatesc.jsp" ><button class="sub">�޸�</button></a></td>
      	</tr>
      </table>
    </div>
  </body>
  
</html>
