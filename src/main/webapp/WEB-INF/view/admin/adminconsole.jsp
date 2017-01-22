<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/1/6
  Time: 7:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<%
    String path = request.getContextPath(); //http://localhost:8080/
    String basePath = request.getScheme()+"://" + request.getServerName();
%>
<html>
<head>
    <title>AdminConsole</title>
    <%--<link rel="stylesheet" href="bootstrap.min.css">--%>
    <link rel="stylesheet" href="<%=path%>/css/bootstrap.min.css"/>
    <%--<link rel="stylesheet" href="/my.css"/>--%>
    <%--<script src="https://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>--%>
    <script src="../js/bootstrap.min.js"></script>
</head>
<body>
    <div id="main" class="container">
        <div>
            <h1>path is <%=path%></h1>
        </div>
        <div class="row">
            <div class="col-lg-12 col-sm-12 col-md-12">
                <div class="pull-right"><a href="/admin/form/0" class="btn btn-primary">新增用户</a> </div>
                <table class="table table-hover table-bordered">
                    <thead><th>ID</th><th>姓名</th><th>性别</th><th>年龄</th><th>备注</th><th>操作</th></thead>
                    <tbody>
                        <c:forEach items="${xmuser}" var="xmuser" >

                        <tr><td>${xmuser.id}</td><td>${xmuser.name}</td><td>${xmuser.sex}</td><td>${xmuser.age}</td><td>${xmuser.remark}</td><td><a href="<%=path%>/admin/form/${xmuser.id}" class="btn btn-primary btn-sm">修改</a><a href="<%=path%>/admin/delUser/${xmuser.id}"class="btn btn-primary btn-sm">删除</a></td></tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>
