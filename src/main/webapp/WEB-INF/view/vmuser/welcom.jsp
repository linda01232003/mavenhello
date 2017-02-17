<%--
  Created by IntelliJ IDEA.
  User: Oliverlee
  Date: 2017/2/16
  Time: 15:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<%
    String path = request.getContextPath();//http://localhost:8080/
%>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <title></title>
    <link rel="stylesheet" href="<%=path%>/css/mui.min.css"/>
    <link rel="stylesheet" href="<%=path%>/css/vmcomm.css"/>
</head>
<body>
<div class="vm_header">
    <h1 class="mui-title vm_header_title">V名片</h1>
</div>
<div class="vm_content">
    <h1>名片投递成功啦！</h1>
    <a href="${headimgurl}">${headimgurl}</a>
    <br>
    <h1>Corplogo:${corplogo}</h1>
</div>
<div class="vm_footer"></div>
</body>
</html>

