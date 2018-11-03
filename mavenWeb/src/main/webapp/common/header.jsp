<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/27
  Time: 1:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="utf-8" %>
<%
    String path = request.getContextPath();
    String bashPath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html lang="en">
<head>
    <base href="<%=bashPath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>胡灯</title>
    <link rel="stylesheet" href="../static/css/bootstrap.min.css">
    <link rel="stylesheet" href="../static/css/style.css">
    <script src="../static/js/jquery-1.11.3.min.js"></script>
    <script src="../static/js/bootstrap.min.js"></script>
</head>
<body>

