<%@ page import="com.model.Stu" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/10/11 0011
  Time: 下午 9:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <title>查询结果</title>
    <script src="/js/jquery.js"></script>
</head>
<%
    request.getPart("list")

%>
<body>
<div id="r">
    <h3>输入学号查找学生信息：</h3>
    <form action="updatec.jsp" method="post">
        课程名:<input type="text" name="cname" />
        <input type="submit" value="查找" id="sub"/>
        <input type=button id="sub" value="BACK" onClick="history.go(-1)"/>
    </form>
</div>
<div id="main">
    <h3>课程信息如下：</h3>
    <form action="updatec" method="post">
        <table>
            <tr>
                <td>课程编号:</td>
                <td>课程名称:</td>
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

