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
/*address地址*/

.address {
    /* height: 78px; */
    padding-left: 4%;
    padding-right: 4%;
    position: relative;
    /* margin-top: 14px; */
    background-color: #fff;
    padding-top: 9px;
    padding-bottom: 9px;
    border-bottom:1px solid #ddd;
    box-sizing: border-box;
    /* background-color: white; */
}

.address h1{ font-size:16px; line-height:28px; color:#191919;margin-left:30px;}
.address h2{ font-size:13px;  color:#65646b;margin-left:30px;}
.address h3{ font-size:14px; line-height:18px; color:#b2bab8;}
.address p{line-height:41px; position:absolute; right:4%; top:0; background-image:url(images/block.png); background-size:13px 13px; background-position:left center; background-repeat:no-repeat; padding-left:20px;}
.delete {
    width: 20%;
    height: 63px;
    line-height: 63px;
    font-size: 18px;
    text-align: center;
    position: absolute;
    top: 0;
    right: 0;
}
.checkDiv {
    text-align: center;
    position: absolute;
    top: 20px;
    left: 10px;
}

</style>
</head>

<body style="background-color: #f9f9f9;">
<!--header顶部标题-->
<div class="header">服务地址
	<div class="header_left"  onclick="window.history.go(-1)"><img src="<%=path%>/images1/return.png"></div>
    <div class="header_right" id="edit" onClick="onedit()">编辑</div>
</div>

<!--address地址-->
<form id="address" name="address" action="<%=path%>/order/inputAddress">
	<input type="hidden" id="formAddress" name="formAddress" value="">
	<input type="hidden" id="formContact" name="formContact" value="">
	<input type="hidden" id="addressId" name="addressId" value="">
	<input type="hidden" id="ordertype" name="ordertype" value="${ordertype}">
	
	<c:forEach items="${addresss}" var="address">
		<c:if test="${address.defaultVal==1}">
			<div class="address"  onclick="submitAddress(${address.id})">
		</c:if>
		<c:if test="${address.defaultVal!=1}">
			<div class="address" >
		</c:if>
		   <div class="checkDiv">
		   		<c:if test="${address.defaultVal==1}">
		   			<img src="<%=path%>/images/checked.png" width="20px" height="20px" />
				</c:if>
				<c:if test="${address.defaultVal!=1}">
		   			<img src="<%=path%>/images/unchecked.png" width="20px" height="20px" onclick="submitAddress(${address.id})"/>
				</c:if>
		   </div>
		   <h1>${address.address}</h1>
		   <h2>${address.name}&nbsp;&nbsp;${address.phoneNum}</h2>
		   <div class="delete" onclick="deleteItem(this,'${address.id}')"><img  style="display: block;margin-top: 25px;margin-left:40px;width: 15px;" src="<%=path%>/images1/close2.png"/></div>
		</div>
	</c:forEach>
	
</form>


<!--column添加新地址-->
<div class="column_box" style="margin-top:14px;" onclick="document.location='<%=path%>/order/addressAdd?ordertype=${ordertype}';" >
	<div class="border_top"></div>
	<div class="column_img"><img src="<%=path%>/images1/add.png"></div>
    <p>添加新地址</p>
    <div class="next"><img src="<%=path%>/images1/arrow.png"></div>
    <div class="border_bottom"></div>
</div>
<script>
$(".delete").hide();
function submitAddress(id){
	$("#addressId").val(id);
	$("#address").submit();
}

function onedit(){
	var a=document.getElementById('edit').innerText;
	if(a=="编辑"){
		$(".delete").show();
		document.getElementById('edit').innerText="取消"
		}else if(a=="取消"){
			$(".delete").hide();
			document.getElementById('edit').innerText="编辑"
			}
	}
	
function deleteItem(obj,id){
   document.location="<%=path%>/order/deleteAddress?id="+id;   	
}	


</script>
</body>
</html>

