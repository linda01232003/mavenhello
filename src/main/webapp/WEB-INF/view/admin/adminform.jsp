<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/1/7
  Time: 7:44
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
    <title></title>

</head>
<body>
    <div id="main" class="container">
        <div class="row">
            <div class="col-lg-6 col-ms-6 col-sm-6">
                    <h1>xmuserid is <c:out value="${xmuser.id}"></c:out></h1>
                    <c:choose>
                    <c:when test="${null == xmuser}">
                        <form action="${path}/admin/adduser" method="post">
                    </c:when>
                    <c:otherwise>
                        <form action="${path}/admin/updateuser" method="post">
                    </c:otherwise>
                </c:choose>    
                    <input name="xmuser.id" type="hidden" value="${xmuser.id}">
                    <div class="form-group">
                        <label>姓名</label>
                        <input name="xmuser.name" type="text" class="form-control" placeholder="请输入姓名" value="${xmuser.name}">
                    </div>
                    <div class="form-group">
                        <label>年龄</label>
                        <input name="xmuser.age" class="form-control" type="text" placeholder="请输入年龄" value="${xmuser.age}">
                    </div>
                    <div class="form-group">
                        <label>性别</label>
                        <div class="radio-inline">
                            <input name="xmuser.sex" type="radio" value="1" <c:if test="${xmuser != null && xmuser.sex ==1}">checked="checked"</c:if>>男
                            <input name="xmuser.sex" type="radio" value="2" <c:if test="${xmuser != null && xmuser.sex ==2}">checked="checked"</c:if>>女
                        </div>
                    </div>
                    <div class="form-group">
                        <label>备注</label>
                        <input name="xmuser.remark" type="text" class="form-control" placeholder="请输入备注" value="${xmuser.remark}">
                    </div>
                    <div>
                        <button type="submit" class="btn btn-primary">提交</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
