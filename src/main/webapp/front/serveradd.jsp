<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title></title>
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		<script type="text/javascript" src="<%=path%>/js/jquery.min.js" ></script>
		<script type="text/javascript" src="<%=path%>/js/amazeui.min.js"></script>
		<link rel="stylesheet" href="<%=path%>/css/amazeui.min.css" type="text/css" />
		<link rel="stylesheet" href="<%=path%>/css/style.css" type="text/css" />
	</head>
	<body>
		<header data-am-widget="header" class="am-header am-header-default jz">
		      <div class="am-header-left am-header-nav">
		         <a href="javascript:history.back()" class="">
					<i class="am-icon-chevron-left"></i>
				</a>
		      </div>
		      <h1 class="am-header-title">
		          <a href="#title-link" class="">增加服务地址</a>
		      </h1>
        </header>
        <input type="text" class="search" placeholder="请输入小区或大厦名称"/>
        <div class="map"><img src="<%=path%>/images/map.png"/></div>
        <ul class="address">
        	<h1>附近地址</h1>
        	<li>
        		<h2>龙岗区布吉深惠路</h2>
        		<p>深惠路118弄1-25号</p>
        	</li>
        	<li>
        		<h2>龙岗区布吉深惠路</h2>
        		<p>深惠路118弄1-25号</p>
        	</li>
        	<li>
        		<h2>龙岗区布吉深惠路</h2>
        		<p>深惠路118弄1-25号</p>
        	</li>
        </ul>
        <button class="login-btn" type="button">确定</button>
        <div style="height: 49px;"></div>
            <div data-am-widget="navbar" class="am-navbar  gm-foot am-no-layout" id="">
		      <ul class="am-navbar-nav am-cf am-avg-sm-4">
		          <li >
		            <a href="/<%=path%>" >
		                <span class="am-icon-home"></span>
		                <span class="am-navbar-label">首页</span>
		            </a>
		          </li>
		          <li>
		            <a href="<%=path%>/order" class="">
		                <span class="am-icon-th-large"></span>
		                <span class="am-navbar-label">订单</span>
		            </a>
		          </li>
		          <li class="curr">
		            <a href="<%=path%>/tuser" class="curr">
		                <span class="am-icon-user"></span>
		                <span class="am-navbar-label">我的</span>
		            </a>
		          </li>
		          
		      </ul>
		  </div>
	</body>
</html>

