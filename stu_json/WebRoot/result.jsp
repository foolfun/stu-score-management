<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page import="stu.*" %>
<%@ page import="java.io.*" %>
<%@ page import="org.json.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
      <style type="text/css">
    	table{
    		font-family:����;
    		font-size:25px;
    		align:center;
    		width:650px;
    		margin-left:100px;
    		border-collapse:collapse;
    		border:solid 1px;
    		
    	}
    	tr,td{
    		border:solid 1px;
    		text-align: center;
    	}
    	input{
    		width:95%;
    		height:80%;
    	}
    	hr{
    		align:right;
    		width:96%;
    	}
    	#sub{
    		width:60px;
    		height:30px;
    	}
    	#main{
    		padding:50px;
    		postion:absolut;
    		right:150px;
    	}
    	body{
    		background-image:url(1.jpg);
    		background-size:cover;
    		
    	}
    </style>
    
    <title>��ҳ</title>
	
  </head>
  
  <body>
  <a href="query.jsp" ><button id="sub">back</button></a>
					   <div id="main"></div>
					  	<table>
					  		<tr>
					      	<th colspan="4">���ҵ�����Ϣ����</th>
					      	</tr>
					      	 <tr>
                    	    <td>ѧ��</td>
                    	    <td>����</td>
					      	<td>�γ�����</td>
					      	<td>ѡ�γɼ�</td>
					      	</tr>
  <%
  		String id = request.getParameter("id");
  		   try {
            BufferedReader br = new BufferedReader(new FileReader("d://stu//student.txt"));// ��ȡԭʼjson�ļ�  
            String s = null;
            String[] arr = new String[4];
            arr[2]="";
            arr[3]="";
            int count=0;
            while ((s = br.readLine()) != null){  
               
                	JSONObject dataJson = new JSONObject(s);// ����һ������ԭʼjson����json����   
                    String sid = dataJson.getString("id");// ��ȡ��������ֶ�ֵ  
                    String sname = dataJson.getString("sname");
                    String cname = dataJson.getString("cname");
                    String grade = dataJson.getString("grade");           
                    if(sid.equals(id)){                    	
                    	%>	
					      	<tr>
					      	<td><%=sid %></td>
					      	<td><%=sname %></td>
					      	<td><%=cname %></td>
					      	<td><%=grade %></td>
					      	</tr>
                    	<%
                    	}
                } 
            }catch (JSONException e) {  
                    // TODO Auto-generated catch block  
                    e.printStackTrace();  
                }
                
           
   %>
   

      </table>
  </body>
</html>
