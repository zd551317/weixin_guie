<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<script type="text/javascript" src="js/jquery.min.js" ></script>
		<script type="text/javascript" src="js/amazeui.min.js"></script>
		<link rel="stylesheet" href="css/amazeui.min.css" type="text/css" />
		<link rel="stylesheet" href="css/style.css" type="text/css" />
	</head>
	<body>
		  <header data-am-widget="header" class="am-header am-header-default jz">
		      <div class="am-header-left am-header-nav">
		         <a href="javascript:history.back()" class="">
					<i class="am-icon-chevron-left"></i>
				</a>
		      </div>
		      <h1 class="am-header-title">
		          <a href="#title-link" class="">个人中心</a>
		      </h1>
            </header>
            <div class="wo">
            	<img src="images/tx.png" />
            	<p><a href="">White <i class="am-icon-angle-right"></i></a></p>
            </div>
            <ul class="member">
            	<li>
            		<a href="money.html">
            			<h2>100</h2>
            			<p>余额</p>
            		</a>
            	</li>
            	<li>
            		<a href="">
            			<h2>50</h2>
            			<p>积分</p>
            		</a>
            	</li>
            	<li>
            		<a href="">
            			<h2>2</h2>
            			<p>优惠券</p>
            		</a>
            	</li>
            </ul>
            <ul class="nav">
            	<li>
            		<a href="money.html">
            			<img src="images/i1.png" />
            			<span>钱包</span>
            			<i class="am-icon-angle-right"></i>
            		</a>
            	</li>
            	<li>
            		<a href="front/address.jsp">
            			<img src="images/i2.png" />
            			<span>服务地址</span>
            			<i class="am-icon-angle-right"></i>
            		</a>
            	</li>
            </ul>
            <ul class="nav">
            	<li>
            		<a href="suggest.html">
            			<img src="images/i3.png" />
            			<span>意见反馈</span>
            			<i class="am-icon-angle-right"></i>
            		</a>
            	</li>
            	<li>
            		<a href="about.html">
            			<img src="images/i4.png" />
            			<span>关于我们</span>
            			<i class="am-icon-angle-right"></i>
            		</a>
            	</li>
            	<li>
            		<a href="tel:123456">
            			<img src="images/i5.png" />
            			<span>呼叫客服</span>
            			<i class="am-icon-angle-right"></i>
            			<em>400-123-456</em>
            		</a>
            	</li>
 
            </ul>
            <div style="height: 49px;"></div>
            <div data-am-widget="navbar" class="am-navbar  gm-foot am-no-layout" id="">
		      <ul class="am-navbar-nav am-cf am-avg-sm-4">
		          <li >
		            <a href="<%=path%>" class="curr">
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
		            <a href="<%=path%>/tuser" class="">
		                <span class="am-icon-user"></span>
		                <span class="am-navbar-label">我的</span>
		            </a>
		          </li>
		      </ul>
		  </div>
	</body>
</html>
