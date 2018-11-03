<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:include page="../common/header.jsp"></jsp:include>
  <header class="navbar navbar-static-top" id="top" role="banner">
  <div class="container">
    <div class="navbar-header" style="text-align: center;">
      <a href="/" class="navbar-brand">小木学堂JFinal课程案例-用户管理之快速实现CURD</a>
    </div>
  </div>
</header>
<div id="main" class="container">
  <div class="row">
  <div class="col-lg-12 col-sm-12 col-md-12">
  <div class="pull-right"><a href="user/form" class="btn btn-primary">新增用户</a></div>
  <table class="table table-hover table-bordered">
  <thead><th>ID</th><th>姓名</th><th>年龄</th><th>性别</th><th>备注</th><th>操作</th></thead>
   <tbody>
   <c:forEach items="${users }" var="user">
   <tr><td>${user.id }</td><td>${user.name }</td><td>${user.age }</td><td>${user.sex }</td><td>${user.remark }</td><td><a href="user/edit/${user.id }" class="btn btn-primary btn-sm">修改</a><a href="user/del/${user.id }" class="btn btn-danger btn-sm">删除</a></td></tr>
   </c:forEach>
   </tbody>
  </table>
  </div>
  </div>  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
     
</div>
<jsp:include page="../common/footer.jsp"></jsp:include>
