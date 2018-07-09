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
<script src="<%=path%>/js/jquery.js"></script>
<link href="<%=path%>/css/css.css" rel="stylesheet" type="text/css">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta name="format-detection" content="telephone=no" />
<meta charset="utf-8">
<title>无标题文档</title>
<style>
/*地址输入框*/
.column_box input{ line-height:46px; color:#191919; font-size:14px; float:left; margin-left:12px;}
</style>
</head>

<body style="background-color: #f9f9f9;">
<!--header顶部标题-->
<div class="header">添加服务地址
	<div class="header_left" onclick="window.history.go(-1)"><img src="<%=path%>/images1/return.png"></div>
</div>
<!--column搜索小区-->

<form id="address" name="address" action="<%=path%>/order/addAddress" method="post">
<input type="hidden" name="ordertype" id="ordertype" value="${ordertype}"/>
<div class="column_box" onclick="document.location='serveradd.jsp';">
	<div class="border_top"></div>
	<div class="column_img"><img src="<%=path%>/images1/adrress.png"></div>
    <p>搜索小区</p>
    <div class="next"><img src="<%=path%>/images1/arrow.png"></div>
    <div class="border_bottom"></div>
</div>
<!--column详细地址-->
<div class="column_box">
	<div class="column_img"><img src="<%=path%>/images1/adrress_2.png"></div>
    <input name="address" id="addressInput" placeholder="详细地址，如xx号楼xx单元xx室"></input>
    <div class="border_bottom"></div>
</div>
<!--acreage面积-->

<!--column联系人-->
<div class="column_box">
	<div class="column_img"><img src="<%=path%>/images1/people.png"></div>
    <input name="contactName" id="contactName" placeholder="联系人"></input>
    <div class="border_bottom"></div>
</div>
<!--column电话-->
<div class="column_box">
	<div class="column_img"><img src="<%=path%>/images1/phone.png"></div>
    <input name="phoneNumber" id="phoneNumber" placeholder="联系电话" type="number"></input>
    <div class="border_bottom"></div>
</div>
<!--confirm确认添加-->
	<div class="confirm" onclick="submitAddress(this)">确认添加</div>
</form>
<script>

function submitAddress(obj){
	if($("#addressInput").val().length<1){
		alert("请输入地址");
		$("#addressInput").focus();
		return;
	}else if($("#contactName").val().length<1){
		alert("请输入联系人");
		$("#contactName").focus();
		return;
	}else if($("#phoneNumber").val().length<1){
		alert("请输入联系电话");
		$("#phoneNumber").focus();
		return;
	}
	
	$("#address").submit();
}


var i=0;
var x=0;
$(".area_box").click(function(){//点击下拉列表
	
	if(i==0){$(".area_box").animate({height:'187px'});i=1}else{$(".area_box").animate({height:'32px'}); i=0}//显示隐藏选项
	})
$(".box").click(function(){//点击选项：切换背景颜色
	$(this).css("background-color","#CCCCCC").siblings().css("background-color","#fff");
	$(".chenge").html($(this).html());//点击选项：替换文本
	})	
</script>
</body>
</html>
