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
		<style>
			.menu li{height:86.87px};
		</style>
	</head>
	<body>
            <div class="banner"><img src="images/banner1.png"/></div>
            <ul class="menu">
            	<li>
	            	<div class="am-gallery-item">
						<a href="<%=path%>/order/newOrder?ordertype=1" class="">								
							<img src="<%=path%>/images1/baojie.png" >
							<p>日常保洁</p>
						</a>
					</div>
				</li>
				<li>
					<div class="am-gallery-item">
						<a href="<%=path%>/order/newOrder?ordertype=2" class="">								
							<img src="<%=path%>/images1/chuanghu.png">
							<p>擦玻璃</p>
						</a>	
					</div>
				</li>
				<li>
					<div class="am-gallery-item">
						<a href="<%=path%>/order/newOrder?ordertype=3" class="">								
							<img src="images/icon3.png">
							<p>开荒保洁</p>
						</a>
					</div>
				</li>
				<li>
					<div class="am-gallery-item">
						<a href="<%=path%>/order/newOrder?ordertype=4" class="">								
							<img src="images/3.png" style="margin-top:-1px;">
							<p>空调清洗</p>
						</a>
					</div>
				</li>
				<li>
					<div class="am-gallery-item">
						<a href="<%=path%>/order/newOrder?ordertype=5" class="">								
							<img src="images/4.png" >
							<p>油烟机清洗</p>
						</a>
					</div>
				</li>
				<li >
					<div class="am-gallery-item">
						<a href="<%=path%>/order/newOrder?ordertype=6" class="">								
							<img src="images/5.png" >
							<p>洗衣机清洗</p>
						</a>
					</div>
				</li>
				<li >
					<div class="am-gallery-item">
						<a href="<%=path%>/order/newOrder?ordertype=7" class="">								
							<img src="images/1.png" >
							<p>冰箱清洗</p>
						</a>
					</div>
				</li>
            </ul>
            <!-- 
            <div class="reg2">
            	<a href="reg.html"><img src="images/reg.png"/></a>
            </div>
             -->
            <ul class="brand">
               <li>
               	  <a href="#">
               	  	<div class="brand-left">
               	  		<i class="am-icon-user-plus"></i>
               	  		<div class="text">
               	  			<h2>加盟我们</h2>
               	  			<p>共创大业、共享双赢</p>
               	  		</div>
               	  	</div>
               	  </a>
               	  <a href="#">
               	  	<div class="brand-right">
               	  		<i class="am-icon-edit"></i>
               	  		<div class="text">
               	  			<h2>意见反馈</h2>
               	  			<p>让我们变得更好</p>
               	  		</div>
               	  	</div>
               	  </a>
               </li>	
            </ul>
            <div style="height: 49px;"></div>
            <div data-am-widget="navbar" class="am-navbar  gm-foot am-no-layout" id="">
		      <ul class="am-navbar-nav am-cf am-avg-sm-4">
		          <li class="curr">
		            <a href="/<%=path%>" class="curr">
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
		          <li>
		            <a href="<%=path%>/tuser" class="">
		                <span class="am-icon-user"></span>
		                <span class="am-navbar-label">我的</span>
		            </a>
		          </li>
		          
		      </ul>
		  </div>
	</body>
</html>

