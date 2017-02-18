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
        <div class="row">
            <div class="col-lg-12 col-sm-12 col-md-12">
                <div class="pull-right"><a href="" class="btn btn-primary">新增用户</a> </div>
                <table class="table table-hover table-bordered">
                    <thead><th>ID</th><th>姓名</th><th>手机</th><th>邮箱</th><th>生日</th><th>微信</th><th>行业</th><th>单位名称</th><th>职位</th><th>固话</th><th>单位地址</th><th>擅长领域</th><th>从业时间</th><th>个人简介</th><th>头像</th><th>logo</th></thead>
                    <tbody>
                        <c:forEach items="${vmusercard}" var="vmusercard" >

                        <tr><td>${vmusercard.id}</td><td>${vmusercard.username}</td><td>${vmusercard.mobile}</td><td>${vmusercard.email}</td>
                            <td>${vmusercard.birthday}</td><td>${vmusercard.weixin}</td><td>${vmusercard.industry}</td><td>${vmusercard.corpname}</td>
                            <td>${vmusercard.title}</td><td>${vmusercard.phone}</td><td>${vmusercard.corpaddr}</td><td>${vmusercard.profession}</td>
                            <td>${vmusercard.begintime}</td><td>${vmusercard.indiviualresume}</td>
                            <td><a href="${vmusercard.headimg}">${vmusercard.headimg}</a></td>
                            <td><a href="${vmusercard.corplogo}">${vmusercard.corplogo}</a></td>
                            <td>
                                <%--<a href="<%=path%>/admin/form/${vmusercard.id}" class="btn btn-primary btn-sm">修改</a>--%>
                                <a href=""class="btn btn-primary btn-sm">删除</a>
                            </td></tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>
