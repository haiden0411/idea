<%@ page language="java" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:include page="common/header.jsp"></jsp:include>
<header class="navbar navbar-static-top" id="top" role="banner">
    <div class="container">
        <div class="navbar-header" style="text-align: center;">
            <a href="/user" class="navbar-brand">用户管理之快速实现CURD</a>
        </div>
    </div>
</header>
<div id="main" class="container">


















</div>
<jsp:include page="common/footer.jsp"></jsp:include>
