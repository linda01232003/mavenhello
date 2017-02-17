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
    <form class="vm_form" enctype="multipart/form-data" action="${path}/vmuser/adduserinf" method="post">
        <label>姓名<span class="vm_form_star">*</span></label>
        <input name="xmusercard.username" type="text" />
        <div class="vm_line"></div>

        <label>手机<span class="vm_form_star">*</span></label>
        <input name="xmusercard.mobile" type="text" />
        <div class="vm_line"></div>

        <label>邮箱<span class="vm_form_star">*</span></label>
        <input name="xmusercard.mobile" type="text" />
        <div class="vm_line"></div>

        <label>生日</label>
        <input name="xmusercard.mobile" type="text" />
        <div class="vm_line"></div>

        <label>微信<span class="vm_form_star">*</span></label>
        <input name="xmusercard.weixin" type="text" />
        <div class="vm_line"></div>

        <label>从事行业<span class="vm_form_star">*</span></label>
        <input name="xmusercard.industry" type="text" />
        <div class="vm_line"></div>

        <label>公司名称<span class="vm_form_star">*</span></label>
        <input name="xmusercard.corpname" type="text" />
        <div class="vm_line"></div>

        <label>职务<span class="vm_form_star">*</span></label>
        <input name="xmusercard.title" type="text" />
        <div class="vm_line"></div>

        <label>固话<span class="vm_form_star">*</span></label>
        <input name="xmusercard.phone" type="text" />
        <div class="vm_line"></div>

        <label>单位地址</label>
        <input name="xmusercard.corpaddr" type="text" />
        <div class="vm_line"></div>

        <label>擅长领域<span class="vm_form_star">*</span></label>
        <input name="xmusercard.profession" type="text" />
        <div class="vm_line"></div>

        <label>从业时间<span class="vm_form_star">*</span></label>
        <input name="xmusercard.begintime" type="text" />
        <div class="vm_line"></div>

        <label>职业技能<span class="vm_form_star">*</span></label>
        <input name="xmusercard.professionskill" type="text" />
        <div class="vm_line"></div>

        <label>个人简介<span class="vm_form_star">*</span></label>
        <textarea name="xmusercard.indiviualresume" rows="8" cols="3"></textarea>
        <div class="vm_line"></div>

        <label>个人头像<span class="vm_form_star">*</span></label>
        <div class="vm_from_img">
            <input type="file" class="form-control" name="headimg"/>
        </div>

        <label>公司logo<span class="vm_form_star">*</span></label>
        <div class="vm_from_img">
            <input type="file" class="form-control" name="corplogo"/>
        </div>


        <input type="submit" value="提交"/>
    </form>
</div>
<div class="vm_footer"></div>
</body>
</html>
