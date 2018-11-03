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
      <a href="/" class="navbar-brand">用户管理之快速实现CURD</a>
    </div>
  </div>
</header>
<div id="main" class="container">
  <div class="row">
   <div class="col-lg-6 col-ms-6 col-sm-6">
   <form action="${user==null?'user/submit':'user/update' }"  method="post">
   <input type="hidden" name="user.id" value="${user.id }">
   	<div class="form-group">
   	<label>姓名</label>
   	<input name="user.name" value="${user.name }" type="text" class="form-control" placeholder="请输入姓名">
   	</div>
   	<div class="form-group">
   	<label>年龄</label>
   	<input  name="user.age" value="${user.age }"  type="text" class="form-control" placeholder="请输入年龄">
   	</div>
   	<div class="form-group">
   	<label>性别</label>
   	<div class="radio-inline">
   	<input type="radio"  name="user.sex" <c:if test="${user!=null && user.sex==1 }"> checked="checked"</c:if> value="1"> 男
   	</div>
   	<div class="radio-inline">
   	<input type="radio"   name="user.sex" <c:if test="${user!=null && user.sex==2 }"> checked="checked"</c:if>  value="2"> 女
   	</div>
   	</div>
   	<div class="form-group">
   	<label>备注</label>
   	<textarea  name="user.remark"   style="height:70px;" class="form-control" placeholder="请输入备注信息"　>${user.remark }</textarea>
   	</div>
   	<div style="text-align: center">
   	<button type="submit" class="btn btn-primary" style="width:120px;">提  交</button>
   	</div>
   </form>
   </div>
   </div>
 
 
 
 
 
 
 
 
 
 
 
 
 
     
</div>
<jsp:include page="../common/footer.jsp"></jsp:include>
