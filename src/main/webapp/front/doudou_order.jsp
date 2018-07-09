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
		          <a href="#title-link" class="">订单</a>
		      </h1>
           </header>
            <ul class="order">
            
            	<c:forEach items="${orders}" var="order">
            		<li>
	            		<h2><i></i>
	            			<a href="<%=path%>/order/toOrderFinish?&out_trade_no=${order.out_trade_no}">
	            			<span>
	            			<c:if test="${order.ordertype==1}">
								日常保洁
							</c:if>
							<c:if test="${order.ordertype==2}">
								擦玻璃
							</c:if>
							<c:if test="${order.ordertype==3}">
								开荒保洁
							</c:if>
							<c:if test="${order.ordertype==4}">
								空调清洗
							</c:if>
							<c:if test="${order.ordertype==5}">
								油烟机清洗
							</c:if>
							<c:if test="${order.ordertype==6}">
								洗衣机清洗
							</c:if>
							<c:if test="${order.ordertype==7}">
								冰箱清洗
							</c:if>
							(${order.out_trade_no})
	            			</span>
	            			</a>
	            		<b><c:if test="${order.orderstate==0}">
			            		待支付
							</c:if>
							<c:if test="${order.orderstate==1}">
							 	已支付
							</c:if>
							<c:if test="${order.orderstate==2}">
							 	技师派遣中
							</c:if>
							<c:if test="${order.orderstate==3}">
							 	服务中
							</c:if>
							<c:if test="${order.orderstate==4}">
							 	已结束
							</c:if></b></h2>
	            		<p><img src="images/add.png"/><span>地址:${order.address}</span></p>
	            		<p style="border-bottom: 1px solid #ddd;">
	            			<img src="images/time.png"/>
	            			<span style="border-bottom: 0;">
	            				预约时间：&nbsp;
	            				<fmt:formatDate value="${order.ordertime}" pattern="yyyy-MM-dd hh:mm" type="date" dateStyle="long" /> 
	            			</span>
	            		</p>
	            		<p style="border-bottom: 1px solid #ddd;">
	            			<img src="images1/index_gray.png"/>
	            			<span style="border-bottom: 0;">
	            				<c:if test="${order.ordertype==1}">
									服务总时长：&nbsp;${order.totolhour}&nbsp;小时
								</c:if>
								<c:if test="${order.ordertype==2}">
									服务总时长：&nbsp;${order.totolhour}&nbsp;小时
								</c:if>
								<c:if test="${order.ordertype==3}">
									<c:if test="${order.selNum1>0}">
										一般开荒 ${order.selNum1}m²  
									</c:if>
									<c:if test="${order.selNum2>0}">
										精细开荒 ${order.selNum2}m²  
									</c:if>
								</c:if>
								<c:if test="${order.ordertype==4}">
									<c:if test="${order.selNum1>0}">
										空调挂机 *${order.selNum1}  
									</c:if>
									<c:if test="${order.selNum2>0}">
										空调柜机 *${order.selNum2}  
									</c:if>
								</c:if>
								<c:if test="${order.ordertype==5}">
									<c:if test="${order.selNum1>0}">
										${order.selNum1}台  
									</c:if>
								</c:if>
								<c:if test="${order.ordertype==6}">
									<c:if test="${order.selNum1>0}">
										波轮 *${order.selNum1}  
									</c:if>
									<c:if test="${order.selNum2>0}">
										滚筒 *${order.selNum2}  
									</c:if>
								</c:if>
								<c:if test="${order.ordertype==7}">
									<c:if test="${order.selNum1>0}">
										单门 *${order.selNum1}  
									</c:if>
									<c:if test="${order.selNum2>0}">
										双门 *${order.selNum2}  
									</c:if>
								</c:if>
	            			</span>
	            		</p>
	            		<h3>
	            			<span>金额&nbsp;${order.total_fee}元</span>
	            			<a href="" class="current">立即支付</a>
	            			<a href="">取消订单</a>
	            		</h3>
	            	</li>
            	</c:forEach>
            </ul>
            <div style="height: 49px;"></div>
            <div data-am-widget="navbar" class="am-navbar  gm-foot am-no-layout" id="">
		      <ul class="am-navbar-nav am-cf am-avg-sm-4">
		          <li >
		            <a href="<%=path%>/" class="">
		                <span class="am-icon-home"></span>
		                <span class="am-navbar-label">首页</span>
		            </a>
		          </li>
		          <li class="curr">
		            <a href="<%=path%>/order" class="curr">
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
