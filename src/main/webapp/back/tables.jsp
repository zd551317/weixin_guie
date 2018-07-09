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
	<title>Detail Admin - Tables showcase</title>
    
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
    <!-- bootstrap -->
    <link href="<%=path%>/css/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="<%=path%>/css/bootstrap/bootstrap-responsive.css" rel="stylesheet" />
    <link href="<%=path%>/css/bootstrap/bootstrap-overrides.css" type="text/css" rel="stylesheet" />

    <!-- global styles -->
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/layout.css" />
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/elements.css" />
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/icons.css" />

    <!-- libraries -->
    <link href="<%=path%>/css/lib/font-awesome.css" type="text/css" rel="stylesheet" />
    
    <!-- this page specific styles -->
    <link rel="stylesheet" href="<%=path%>/css/compiled/tables.css" type="text/css" media="screen" />

    <!-- open sans font -->
    <link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css' />

    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body style="overflow:hidden;">

    <!-- navbar -->
    <div class="navbar navbar-inverse">
        <div class="navbar-inner">
            <button type="button" class="btn btn-navbar visible-phone" id="menu-toggler">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            
            <a class="brand" href="index.html"><img src="<%=path%>/img/logo.png" /></a>

        </div>
    </div>
    <!-- end navbar -->

    <!-- sidebar -->
    <div id="sidebar-nav">
        <ul id="dashboard-menu">
            <li>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-group"></i>
                    <span>技师</span>
                    <i class="icon-chevron-down"></i>
                </a>
                <ul class="submenu">
                    <li><a href="#">技师列表</a></li>
                </ul>
            </li>
           
            <li class="active">
                <a href="#">
                    <div class="pointer">
                        <div class="arrow"></div>
                        <div class="arrow_border"></div>
                    </div>
                    <i class="icon-th-large"></i>
                    <span>订单列表</span>
                </a>
            </li>
            
        </ul>
    </div>
    <!-- end sidebar -->


	<!-- main container -->
    <div class="content">
        
        <!-- settings changer -->
        <div class="skins-nav">
            <a href="#" class="skin first_nav selected">
                <span class="icon"></span><span class="text">Default</span>
            </a>
            <a href="#" class="skin second_nav" data-file="css/skins/dark.css">
                <span class="icon"></span><span class="text">Dark skin</span>
            </a>
        </div>
        
        <div class="container-fluid">
            <div id="pad-wrapper" style="margin-top:0px;">
                
                <!-- orders table -->
                <div class="table-wrapper orders-table section" style="margin-bottom:0px;">

                    <div class="row-fluid filter-block" style="padding-top:10px;margin-bottom:0px;">
                    	<form id="submitForm" action="<%=path%>/back/orderList" method="post">
                    	<input type="hidden" name="form_searchType" id="form_searchType" value="${searchType}"/>
                    	<input type="hidden" name="form_pageNumber" id="form_pageNumber" value="${pageNumber }"/>
                    	<input type="hidden" name="form_pageSize" id="form_pageSize" value="${pageSize}"/>
	                        <div >
	                        	<div class="btn-group pull-right" >
	                                <button id="search_1" class="glow left large" onclick="query(1)">全部订单</button>
	                                <button id="search_2" class="glow middle large" onclick="query(2)">未处理</button>
	                                <button id="search_3" class="glow right large" onclick="query(3)">已处理</button>
	                            </div>
	                            <!-- 
	                        	<div class="ui-select">
	                                <select>
	                                  <option />未处理
	                                  <option />已处理
	                                  <option />全部订单
	                                </select>
	                            </div>
	                             -->
	                        </div>
                        </form>
                    </div>

                    <div class="row-fluid" id="contentDiv">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th class="span2">
                                    <span class="line"></span>
                                       	交易编号
                                    </th>
                                    <th class="span3">
                                    <span class="line"></span>
                                                                                                           订单日期
                                    </th>
                                    <th class="span3">
                                    <span class="line"></span>
                                                                                                           预约日期
                                    </th>
                                    <th class="span3">
                                        <span class="line"></span>
                                                                                                           客户
                                    </th>
                                    <th class="span3">
                                        <span class="line"></span>
                                                                                                           电话                                    
                                    </th>
                                    <th class="span3">
                                        <span class="line"></span>
                                                                                                           地址
                                    </th>
                                    <th class="span3">
                                        <span class="line"></span>
                                                                                                           订单类型
                                    </th>
                                    <th class="span3">
                                        <span class="line"></span>
                                                                                                           总金额
                                    </th>
                                    <th class="span3">
                                        <span class="line"></span>
                                                                                                          付款状态
                                    </th>
                                    <th class="span3">
                                        <span class="line"></span>
                                                                                                          操作
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <!-- row -->
                                <c:forEach items="${iteration4.list}" var="order">
	                                <tr class="first">
	                                    <td>
	                                        <a href="#">${order.out_trade_no}</a>
	                                    </td>
	                                    <td>
	                                        <fmt:formatDate value="${order.create_time}" pattern="yyyy-MM-dd HH:mm" type="date" dateStyle="long" />
	                                    </td>
	                                    <td>
	                                        <fmt:formatDate value="${order.ordertime}" pattern="yyyy-MM-dd hh:mm" type="date" dateStyle="long" />
	                                    </td>
	                                    <td>
	                                        ${order.name}
	                                    </td>
	                                    <td>
	                                    	${order.phoneNum}
	                                        
	                                    </td>
	                                    <td>
	                                        ${order.address}
	                                    </td>
	                                    <td align="center">
	                                        <c:if test="${order.ordertype==1}">
	                                       	    <span class="label label-success"> 日常保洁</span><br/>
												<span class="label label-info">服务总时长：&nbsp;${order.totolhour}&nbsp;小时</span>
											</c:if>
											<c:if test="${order.ordertype==2}">
												<span class="label label-success">擦玻璃</span><br/>
												<span class="label label-info">服务总时长：&nbsp;${order.totolhour}&nbsp;小时</span>
											</c:if>
											<c:if test="${order.ordertype==3}">
												<span class="label label-success">开荒保洁</span><br/>
												<c:if test="${order.selNum1>0}">
													<span class="label label-info">一般开荒 ${order.selNum1}m²</span><br/>  
												</c:if>
												<c:if test="${order.selNum2>0}">
													<span class="label label-info">精细开荒 ${order.selNum2}m² </span> 
												</c:if>
											</c:if>
											<c:if test="${order.ordertype==4}">
												<span class="label label-success">空调清洗</span><br/>
												<c:if test="${order.selNum1>0}">
													<span class="label label-info">空调挂机 *${order.selNum1}</span><br/>  
												</c:if>
												<c:if test="${order.selNum2>0}">
													<span class="label label-info">空调柜机 *${order.selNum2}</span>  
												</c:if>
											</c:if>
											<c:if test="${order.ordertype==5}">
												<span class="label label-success">油烟机清洗</span><br/>
												<c:if test="${order.selNum1>0}">
													<span class="label label-info">${order.selNum1}台  </span>
												</c:if>
											</c:if>
											<c:if test="${order.ordertype==6}">
												<span class="label label-success">洗衣机清洗</span><br/>
												<c:if test="${order.selNum1>0}">
													<span class="label label-info">波轮 *${order.selNum1}</span><br/>  
												</c:if>
												<c:if test="${order.selNum2>0}">
													<span class="label label-info">滚筒 *${order.selNum2} </span> 
												</c:if>
											</c:if>
											<c:if test="${order.ordertype==7}">
												<span class="label label-success">冰箱清洗</span><br/>
												<c:if test="${order.selNum1>0}">
												<span class="label label-info">单门 *${order.selNum1}</span>  
												</c:if>
												<c:if test="${order.selNum2>0}">
													<span class="label label-info">双门 *${order.selNum2}</span>  
												</c:if>
											</c:if>
	                                    </td>
	                                    <td>
	                                        ${order.total_fee}/元
	                                    </td>
	                                    <td>
	                                        <c:if test="${order.orderstate==0}">
							            		<span class="label">未支付</span>
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
											</c:if>
	                                    </td>
	                                    <td>
	                                    	<c:if test="${order.orderstate==0}">
							            		<span class="label label-success" onclick="operation(1,'${order.out_trade_no}',this);">分配技师</span>
											</c:if>
											<c:if test="${order.orderstate==1}">
											 	<span class="label label-success" onclick="operation(1,'${order.out_trade_no}',this);">分配技师</span>
											</c:if>
											<c:if test="${order.orderstate==2}">
											 	<span class="label label-success" onclick="operation(2,'${order.out_trade_no}',this);">结束订单</span>
											</c:if>
											<c:if test="${order.orderstate==3}">
											 	<span class="label label-success" onclick="operation(2,'${order.out_trade_no}',this);">结束订单</span>
											</c:if>
	                                    </td>
	                                    
	                                </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- end orders table -->
            </div>
        </div>
        
        <!-- fenye -->
        <div  class="pull-right" style="margin-right:100px;font-size:13px;">  
		    <div class="dataTables_paginate paging_simple_numbers" id="dynamic-table_paginate">  
		        <ul >  
		            <li style="display:inline;margin-left:5px;width:60px;"><a href="#" onclick="page(${iteration4.pageNumber>1?iteration4.pageNumber-1:1})">上一页</a></li>  
		                <c:forEach begin="1" end="${iteration4.totalPage}" varStatus="page">  
			                <c:choose>  
			                    <c:when test="${iteration4.pageNumber==page.index}">  
			                        <li style="display:inline;margin-left:5px;width:60px;"><span style="color:darkgray;">${page.index}</span></li>  
			                    </c:when>  
			                    <c:otherwise>  
			                        <li style="display:inline;margin-left:5px;width:60px;"><a href="#" onclick="page(${page.index})">${page.index}</a></li>  
			                    </c:otherwise>  
			                </c:choose>  
		                </c:forEach>  
		            <li style="display:inline;margin-left:5px;width:60px;"><a onclick="page(${iteration4.pageNumber<iteration4.totalPage?iteration4.pageNumber+1:iteration4.totalPage})" href="#">下一页</a></li>  
		        </ul>  
		    </div>
		</div>
    </div>
    <!-- end main container -->
	  



	<!-- scripts -->
    <script src="<%=path%>/js/jquery-latest.js"></script>
    <script src="<%=path%>/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=path%>/js/jquery.min.js" ></script>
    <script src="<%=path%>/js/theme.js"></script>
	<script>
	$(document).ready(function(){//定时
        setInterval(function(){
            $.ajax({
                type:"POST",
                dataType:"",
                url:"<%=path%>/back/ajaxOrder",
                async:false,
                cache:false,
                timeout:30000,
                success:function(data){
	                 var result=data.result;  
	                 if(result==0)  
	                 {  
	                 }else{
	                	 alert("您有"+result+"条新订单");
	                	 query(2);
	                 }
                },
            });
     }, 30000);
    });
	
	$(function(){
		if(${searchType==1}){
			$("#search_2").css("color","darkgray");
			$("#search_3").css("color","darkgray");
			$("#search_1").css("color","blue");
		}else if(${searchType==2}){
			$("#search_1").css("color","darkgray");
			$("#search_3").css("color","darkgray");
			$("#search_2").css("color","blue");
		}else if(${searchType==3}){
			$("#search_2").css("color","darkgray");
			$("#search_1").css("color","darkgray");
			$("#search_3").css("color","blue");
		}
		
		var contentDiv=document.getElementById("contentDiv");
		rec = contentDiv.getBoundingClientRect();
		var height= document.documentElement.clientHeight-rec.top;
		contentDiv.style.height=(height-40)+"px";
		contentDiv.style.overflow="auto";
	});
	
	function query(type){
		$("#form_searchType").val(type);
		$("#form_pageNumber").val(1);
		$("#submitForm").submit();
	}
	
	function page(pageNumber){
		$("#form_pageNumber").val(pageNumber);
		$("#submitForm").submit();
	}
	
	function operation(type,id,obj){
		var str="";
		if(type==1){
			str="确认分配技师?";
		}else if(type==2){
			str="确认结束订单";
		}
		
		if(confirm(str)){
			$.ajax({
	            type:"POST",
	            dataType:"",
	            data:{"operationType":type,"id":id},
	            url:"<%=path%>/back/operationOrder",
	            async:false,
	            cache:false,
	            timeout:30000,
	            success:function(data){
	                 var result=data.result;  
	                 if(result==0)  
	                 {
	                	 if(type==1){
	                		 alert("已分配订单");
	                		//$(obj).parent().prev().text("技师派遣中");
	                	 }else if(type==2){
	                		 alert("已结束订单");
	                		 //$(obj).parent().prev().text("已结束");
	                	 }
	                 }
	            },
	        });
		}
		$("#form_operationType").val(type);
		$("#submitForm").submit();
	}
	
	
	
   </script>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>