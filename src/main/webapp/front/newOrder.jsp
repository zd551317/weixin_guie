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
<script src="<%=path%>/js/jquery.js"></script>
<link href="<%=path%>/css/css.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="<%=path%>/css/amazeui.min.css" type="text/css" />
<link rel="stylesheet" href="<%=path%>/css/style.css" type="text/css" />
<script type="text/javascript" src="<%=path%>/js/jquery.min.js" ></script>
<script type="text/javascript" src="<%=path%>/js/amazeui.min.js"></script>


<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta name="format-detection" content="telephone=no" />
<title>无标题文档</title>
<style>

.column_box1{ background-color:#fff; padding-left:4%; padding-right:4%; position:relative}
.column_box1 p{ line-height:36px; color:#65646b; font-size:14px; float:left; margin-left:12px;}

/*service服务*/
.service_box{ height:48px; position:relative; margin-top:14px; padding-top:7px;box-sizing:border-box}
.service{width:92%; height:33px; line-height:33px; color:#191919; border:1px solid #d3d3d3; border-radius:3px; box-sizing:border-box; text-align:center; font-size:14px;margin:auto;}
.checkbox{ border:1px solid#01AFF0;}
.add_service{ clear:both; line-height:37px; height:37px; width:20%; margin-left:40%; position:relative; text-align:center;}
/*合计*/
.total_box{padding-top:24px; height:168px; box-sizing:border-box}
.total_box h1{ font-size:12px; text-align:center; line-height:18px; color:#65646b;}
.total_box p{ font-size:22px; color:#c40000; text-align:center; line-height:33px;}
/*address地址*/
.address{ padding-left:4%; position:relative; background-color:#fff; padding-top:9px; padding-bottom:9px; box-sizing:border-box}
.address img{ float:left; margin-top:14px; width:18px; height:auto}
.address_text{ float:left; margin-left:12px;}
.address h1{ font-size:14px; line-height:21px; color:#191919;}
.address h2{ font-size:14px; line-height:18px; color:#65646b;}
.address h3{ font-size:14px; line-height:18px; color:#b2bab8;}
/***********选择服务时间:弹出层**********/
#option_time{ width:100%; height:100%; top:0; right:0; position:absolute; background:#fff;}
.week_box{ height:62px; background-color:#fff; position:relative; margin-bottom:8px;}
.week{ height:62px; width:14.3%; float:left}
.week h1{ line-height:22px; font-size:14px; text-align:center; margin-top:11px;}
.week h2{ line-height:19px; font-size:12px; color:#65646b; text-align:center;}

.blue{ width:60px; position:absolute; left:0; bottom:0; height:2px; background-color:#01aff0;}
.time_box{ margin-bottom:80px;}
.time{ width:20%; float:left; margin-left:4%; margin-top:6px; border:1px solid #ccc; border-radius:3px; text-align:center; line-height:40px; height:40px; color:#b2bab8; box-sizing:border-box;}
.option {
    border: 1px solid #01aff0;
    color:#191919;
    background-image:url(<%=path%>/images1/checkbox.png);
    background-size: 12px 12px;
    background-position: right bottom;
    background-repeat: no-repeat;
}
/*保洁剂弹出层*/
.detergent{ position:absolute; width:100%; height:100%; top:0px; left:0px; z-index:2000; background:#fff;}
.hot_title{height:20px; line-height:20px; color:#65646b; padding-left:14px; box-sizing:border-box; position:relative; font-size:14px; background-color:#f9f9f9;}
.agentia_box{ width:100%; position:relative; float:left}
.agentia{ height:75px; background-color:#fff; position:relative}
.agentia_img{ width:47px; height:47px; margin-left:4%; background-color:#737cd9; float:left; margin-top:14px;}
.agentia_text{ float:left; margin-left:13px;}
.agentia_text h1{ font-size:14px; line-height:18px; color:#191919; margin-top:11px;}
.agentia_text h2{ font-size:12px; line-height:16px; color:#65646b;}
.agentia_text h3{ font-size:14px; line-height:18px; color:#c40000;}
.reduce,.add{ width:20px; height:20px; position:absolute;right:14px;top:27px;}
.amount{ width:20px; height:20px; position:absolute; right:14px; top:27px; color:#191919; line-height:20px; text-align:center}
/*cart底部购物车*/
.cart_box{ position:absolute; bottom:0; left:0; background-color:#f9f9f9; width:100%;}
.cart_title{ padding-left:4%; line-height:33px; color:#191919; position:relative; background-color:#fff;}
.cart_pro{ height:42px;}
.cart_pro h1{ float:left; line-height:42px; margin-left:4%; color:#191919;}
.cart_pro h2{ float:left; line-height:42px; margin-left:20%; color:#c40000; }
.cart_pro img{ float:right; width:20px; height:auto; margin-top:11px;}
.cart_pro p{ float:right; width:25px; height:20px; margin-top:11px; color:#191919; text-align:center}
.cart{ height:47px; position:relative; margin-top:16px; background-color:#fff;}
.cart img{ width:46px; height:46px; position:absolute; left:4%; bottom:17px;}
.sure{ float:right; width:25%; height:47px; background-color:#999; color:white; line-height:47px; text-align:center; font-size:18px;}
.cart p{ color:#c40000; font-size:18px; line-height:47px; float:right; margin-right:6px;}
.cart h1{ color:#191919; font-size:14px; line-height:47px; float:right}
.number{ position:absolute; left:4%; top:-15px; margin-left:34px; height:18px; width:18px; background-color:#c40000; border-radius:50%; line-height:18px; text-align:center; color:white; font-size:12px;}
.margin{ margin-top:16px;}
.confirm_box1{ width:100%; height:61px;position:fixed; left:0; bottom:40px; line-height:61px; text-align:center; font-size:16px; color:#65646b;}
.confirm1{ background-color:#999; color:white; border-radius:3px; width:92%; height:33px; line-height:33px; text-align:center; font-size:16px; margin-left:4%;margin-top:14px;}

.confirm2 {
    background-color: #999;
    color: white;
    border-radius: 3px;
    width: 72%;
    height: 33px;
    line-height: 33px;
    text-align: center;
    position:fixed;
    font-size: 16px;
    bottom:100px;
}

</style>
</head>

<!--header顶部标题-->
<div class="header">
	<c:if test="${ordertype==1}">
		日常保洁
	</c:if>
	<c:if test="${ordertype==2}">
		擦玻璃
	</c:if>
	<c:if test="${ordertype==3}">
		开荒保洁
	</c:if>
	<c:if test="${ordertype==4}">
		空调清洗
	</c:if>
	<c:if test="${ordertype==5}">
		油烟机清洗
	</c:if>
	<c:if test="${ordertype==6}">
		洗衣机清洗
	</c:if>
	<c:if test="${ordertype==7}">
		冰箱清洗
	</c:if>
	
	<div class="header_left"  onclick="window.history.go(-1)"><img src="<%=path%>/images1/return.png"></div>
</div>


<form id="submitForm" action="<%=path%>/order/submitOrder" method="post">
	<input type="hidden" name="form_ordertime" id="form_ordertime" value=""/>
	<input type="hidden" name="form_totalhour" id="form_totalhour" value=""/>
	<input type="hidden" name="form_addressId" id="form_addressId" value="${defaultAddress.id}"/>
	<input type="hidden" name="form_ordertype" id="form_ordertype" value=""/>
	<input type="hidden" name="form_orderstate" id="form_orderstate" value=""/>
	<input type="hidden" name="selNum1" id="selNum1" value="0"/>
	<input type="hidden" name="selNum2" id="selNum2" value="0"/>
</form>


<!--column服务地址-->
<div class="column_box" onclick="document.location='<%=path%>/order/selectAddress?ordertype=${ordertype}';">
	<div class="column_img"><img src="<%=path%>/images1/adrress.png"></div>
    <p id="contactAddress">请选择服务地址</p>
    <div class="next"><img src="<%=path%>/images1/arrow.png"></div>
    <div class="border_bottom"></div>
</div>

<div id="contactNum_div" class="column_box" style="display:none;">
<div class="column_img"><img src="<%=path%>/images/i5.png"></div>
    <p id="contactNum">请选择服务地址</p>
</div>

<div class="margin"></div>

<!--type-->
<div class="column_box" onClick="statement()">
	<div class="border_top"></div>
	<div class="column_img"><img src="<%=path%>/images1/adrress_2.png"></div>
	<p id="orderTypeSel"><c:if test="${ordertype==1}">
		请选择日常保洁总时长
	</c:if>
	<c:if test="${ordertype==2}">
		请选择擦玻璃总时长
	</c:if>
	<c:if test="${ordertype==3}">
		请选择开荒保洁类型与面积
	</c:if>
	<c:if test="${ordertype==4}">
		请选择空调清洗类型与数量
	</c:if>
	<c:if test="${ordertype==5}">
		请选择油烟机清洗数量
	</c:if>
	<c:if test="${ordertype==6}">
		请选择洗衣机清洗数量
	</c:if>
	<c:if test="${ordertype==7}">
		请选择冰箱清洗类型与数量
	</c:if>
	</p>
	<div class="next" id="arr_kongtiao"><img src="<%=path%>/images1/arrow.png"></div>
    <div class="border_bottom"></div>
</div>



<!--选取地址后的服务地址，先隐藏，选取地址后显示-->
<div class="address">
	<div class="border_top"></div>
    <img src="<%=path%>/images1/adrress.png">
    <div class="address_text">
    	<h1>XX小区</h1>
        <h2>XX号楼XX单元101室&nbsp;&nbsp;&nbsp;&nbsp;李欣欣&nbsp;&nbsp;&nbsp;&nbsp;15065421863</h2>
        <h3>120平米，2小时1人，35元/小时/人</h3>
    </div>
    <div class="clearfix"></div>
    <div class="border_bottom"></div>
</div>
<!--column服务时间-->
<div class="margin"></div>
<div class="column_box column_ron">
	<div class="column_img"><img src="<%=path%>/images1/time.png"></div>
    <p id="atext">请选择服务时间</p><span id="btext" style="margin-left:10px; color:#65646b"></span>
    <div class="next"><img src="<%=path%>/images1/arrow.png"></div>
    <div class="border_bottom"></div>
    <div class="border_top"></div>
</div>

<div class="column_box1" >
	<c:if test="${ordertype==1}">
		<p>35元每小时，4小时起步。（不足4小时按4小时计算）</p>
	</c:if>
	<c:if test="${ordertype==2}">
		<p>50元每小时，4小时起步。（不足4小时按4小时计算）</p>
	</c:if>
	<c:if test="${ordertype==3}">
		<p>一般开荒5元/平方<br/>
		精细开荒8元/平方</p>
	</c:if>
	<c:if test="${ordertype==4}">
		<p>空调挂机：120元/台  清洗内容：外观、 室内机的蒸发器、风筒、空气过滤网、面板、中框组件、导风叶片。<br/>
		空调柜机: 150元/台  清洗内容: 外观、 室内机的蒸发器、风筒、空气过滤网、面板、中框组件、导风叶片。</p>
	</c:if>
	<c:if test="${ordertype==5}">
		<p>180元一台（集成灶除外）<br/>
		清洗内容：涡轮、涡壳、油杯、油杯、滤油网、滤油槽、面板</p>
	</c:if>
	<c:if test="${ordertype==6}">
		<p>波轮:140元/台：清洗内容:内桶、波轮、涡盘、密封圈、进水管、滤网、外观<br/>
		80元一台（滚筒免拆洗）
		</p>
	</c:if>
	<c:if test="${ordertype==7}">
		<p>单门120元/台;双门160元/台<br/>
		清洗内容：除冰、内胆、门封条、抽屉、接水盒、外观</p>
	</c:if>
</div>

<div class="address">
	
</div>

<!--confirm提交订单-->
<div class="confirm_box1" style="">
	<div class="confirm1" id="submitDiv" disable="1" >提交订单</div>
</div>


<div data-am-widget="navbar" class="am-navbar  gm-foot am-no-layout" id="">
		      <ul class="am-navbar-nav am-cf am-avg-sm-4">
		          <li >
		            <a href="<%=path%>" class="">
		                <span class="am-icon-home"></span>
		                <span class="am-navbar-label">首页</span>
		            </a>
		          </li>
		          <li class="">
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

<!--免责声明-->
<div class="black" id="black"></div>
<div class="statement" id="statement" style="display:none;">
	<div class="statement_header">
		<c:if test="${ordertype==1}">
			日常保洁
		</c:if>
		<c:if test="${ordertype==2}">
			擦玻璃
		</c:if>
		<c:if test="${ordertype==3}">
			开荒保洁
		</c:if>
		<c:if test="${ordertype==4}">
			请选择空调清洗数量
		</c:if>
		<c:if test="${ordertype==5}">
			请选择油烟机清洗数量
		</c:if>
		<c:if test="${ordertype==6}">
			请选择洗衣机数量与类型
		</c:if>
		<c:if test="${ordertype==7}">
			请选择冰箱清洗数量 
		</c:if>
    	<div class="border_bottom"></div>
    </div>
    <img class="close" onClick="close_sta()" src="<%=path%>/images1/close.png">
    <div class="statement_text" >
    	<c:if test="${ordertype==1}">
			<span style="display:inline;">
	    		<img src="<%=path%>/images1/baojie.png" style="display:inline;" width="30px" height="30px">
	    		时长(4小时起步)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    		<img onclick="numDek3()" src="<%=path%>/images1/reduce.png" width="20px" height="20px" style="display:inline;"/>&nbsp;
	    		<b id="numSel">4</b><b id="numSel">/小时&nbsp;</b>
	    		<img onclick="numAdd3()" src="<%=path%>/images1/add1.png" width="20px" height="20px" style="display:inline;"/>
	    	</span>
		</c:if>
		<c:if test="${ordertype==2}">
			<span style="displa   y:inline;">
	    		<img src="<%=path%>/images1/baojie.png" style="display:inline;" width="30px" height="30px">
	    		时长(4小时起步)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    		<img onclick="numDek3()" src="<%=path%>/images1/reduce.png" width="20px" height="20px" style="display:inline;"/>&nbsp;
	    		<b id="numSel">4</b><b id="numSel">/小时&nbsp;</b>
	    		<img onclick="numAdd3()" src="<%=path%>/images1/add1.png" width="20px" height="20px" style="display:inline;"/>
	    	</span>
		</c:if>
		<c:if test="${ordertype==3}">
			<div>
				<span style="display:inline;">
		    		<img src="<%=path%>/images/icon3.png" style="display:inline;" width="30px" height="30px">
		    		一般开荒&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		    		面积&nbsp;<input type="text" id="kaihuangSQ1" value="" onkeyup="this.value=this.value.replace(/[^0-9-]+/,'');"  style="width:40px;border:1px solid red"/>&nbsp;m²
		    	</span>
	    	</div>
	    	<br/>
	    	<div>
		    	<span style="display:inline;">
		    		<img src="<%=path%>/images/icon3.png" style="display:inline;" width="30px" height="30px">
		    		精细开荒&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		    		面积&nbsp;<input type="text" id="kaihuangSQ2" value="" onkeyup="this.value=this.value.replace(/[^0-9-]+/,'');"  style="width:40px;border:1px solid red" />&nbsp;m²
		    	</span>
	    	</div>
		</c:if>
		<c:if test="${ordertype==4}">
			<div>
				<span style="display:inline;">
		    		<img src="<%=path%>/images/5.png" style="display:inline;" width="30px" height="30px">
		    		挂机:120元/台&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		    		<img onclick="numDek()" src="<%=path%>/images1/reduce.png" width="20px" height="20px" style="display:inline;"/>&nbsp;
		    		<b id="numSel">0</b>&nbsp;
		    		<img onclick="numAdd()" src="<%=path%>/images1/add1.png" width="20px" height="20px" style="display:inline;"/>
		    	</span>
	    	</div>
	    	<div>
		    	<span style="display:inline;">
		    		<img src="<%=path%>/images/5.png" style="display:inline;" width="30px" height="30px">
		    		柜机:150元/台&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		    		<img onclick="numDek1()" src="<%=path%>/images1/reduce.png" width="20px" height="20px" style="display:inline;"/>&nbsp;
		    		<b id="numSel1">0</b>&nbsp;
		    		<img onclick="numAdd1()" src="<%=path%>/images1/add1.png" width="20px" height="20px" style="display:inline;"/>
		    	</span>
	    	</div>
		</c:if>
		<c:if test="${ordertype==5}">
			<span style="display:inline;">
	    		<img src="<%=path%>/images/4.png" style="display:inline;" width="30px" height="30px">
	    		油烟机数量&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    		<img onclick="numDek()" src="<%=path%>/images1/reduce.png" width="20px" height="20px" style="display:inline;"/>&nbsp;
	    		<b id="numSel">0</b>&nbsp;
	    		<img onclick="numAdd()" src="<%=path%>/images1/add1.png" width="20px" height="20px" style="display:inline;"/>
	    	</span>
		</c:if>
		<c:if test="${ordertype==6}">
			<div>
				<span style="display:inline;">
		    		<img src="<%=path%>/images/5.png" style="display:inline;" width="30px" height="30px">
		    		波轮140元/台&nbsp;&nbsp;&nbsp;
		    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		    		<img onclick="numDek()" src="<%=path%>/images1/reduce.png" width="20px" height="20px" style="display:inline;"/>&nbsp;
		    		<b id="numSel">0</b>&nbsp;
		    		<img onclick="numAdd()" src="<%=path%>/images1/add1.png" width="20px" height="20px" style="display:inline;"/>
		    	</span>
	    	</div>
	    	<div>
		    	<span style="display:inline;">
		    		<img src="<%=path%>/images/5.png" style="display:inline;" width="30px" height="30px">
		    		滚筒80元/台&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		    		<img onclick="numDek1()" src="<%=path%>/images1/reduce.png" width="20px" height="20px" style="display:inline;"/>&nbsp;
		    		<b id="numSel1">0</b>&nbsp;
		    		<img onclick="numAdd1()" src="<%=path%>/images1/add1.png" width="20px" height="20px" style="display:inline;"/>
		    	</span>
	    	</div>
		</c:if>
		<c:if test="${ordertype==7}">
			<div>
				<span style="display:inline;">
		    		<img src="<%=path%>/images/5.png" style="display:inline;" width="30px" height="30px">
		    		单门120元/台&nbsp;&nbsp;&nbsp;
		    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		    		<img onclick="numDek()" src="<%=path%>/images1/reduce.png" width="20px" height="20px" style="display:inline;"/>&nbsp;
		    		<b id="numSel">0</b>&nbsp;
		    		<img onclick="numAdd()" src="<%=path%>/images1/add1.png" width="20px" height="20px" style="display:inline;"/>
		    	</span>
	    	</div>
	    	<div>
		    	<span style="display:inline;">
		    		<img src="<%=path%>/images/5.png" style="display:inline;" width="30px" height="30px">
		    		双门160元/台&nbsp;&nbsp;&nbsp;
		    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		    		<img onclick="numDek1()" src="<%=path%>/images1/reduce.png" width="20px" height="20px" style="display:inline;"/>&nbsp;
		    		<b id="numSel1">0</b>&nbsp;
		    		<img onclick="numAdd1()" src="<%=path%>/images1/add1.png" width="20px" height="20px" style="display:inline;"/>
		    	</span>
	    	</div> 
		</c:if>
    
	    <div id="confirmNum" onclick="checkSelNum()" class="confirm2" style=" background-color:#FF7F00">确定选择</div>
    </div>
</div>

<!-------------请选择服务时间：弹出层------------->
<div id="option_time">
	<!--header顶部标题-->
    <div class="header">请选择上门时间 </div>
    <div class="week_box" >
     	<c:forEach items="${datelist}" var="date">
	        <div class="week" >
	        	<span style="display:none;">${date.date}</span>
	            <h1>${date.monthDate}</h1>
	            <h2>
	            	<c:if test="${date.weekend eq 'today'}">
						今天
					</c:if>
					<c:if test="${date.weekend eq 'tomorrow'}">
						明天
					</c:if>
	            	<c:if test="${date.weekend eq '1'}">
						周日
					</c:if>
					<c:if test="${date.weekend eq '2'}">
						周一
					</c:if>
					<c:if test="${date.weekend eq '3'}">
						周二
					</c:if>
					<c:if test="${date.weekend eq '4'}">
						周三
					</c:if>
					<c:if test="${date.weekend eq '5'}">
						周四
					</c:if>
					<c:if test="${date.weekend eq '6'}">
						周五
					</c:if>
					<c:if test="${date.weekend eq '7'}">
						周六
					</c:if>
	            </h2>
	        </div>
	    </c:forEach>
        <div class="blue"></div>
        <div class="border_bottom"></div>
    </div>
    <div class="time_box" id="option_box">
        <div class="time option" >08:00</div>
        <div class="time">08:30</div>
        <div class="time">09:00</div>
        <div class="time">09:30</div>
        <div class="time">10:00</div>
        <div class="time">10:30</div>
        <div class="time">11:00</div>
        <div class="time">11:30</div>
        <div class="time">12:00</div>
        <div class="time">12:30</div>
        <div class="time">13:00</div>
        <div class="time">13:30</div>
        <div class="time">14:00</div>
        <div class="time">14:30</div>
        <div class="time">15:00</div>
        <div class="time">15:30</div>
    </div>
    <!--confirm提交订单时间-->
    <div class="confirm_box1">
        <div id="confirmTime" class="confirm1" style=" background-color:#FF7F00">确定</div>
    </div>	
</div>
<script>


function numDek(){
  var i=$("#numSel").text();
  if(parseInt(i)>=1){
  	$("#numSel").text(parseInt(i)-1);
  }
}
function numAdd(){
  var i=$("#numSel").text();
  $("#numSel").text(parseInt(i)+1);
}

function numDek1(){
	  var i=$("#numSel1").text();
	  if(parseInt(i)>=1){
	  	$("#numSel1").text(parseInt(i)-1);
	  }
	}
function numAdd1(){
  var i=$("#numSel1").text();
  $("#numSel1").text(parseInt(i)+1);
}

function numDek3(){
	  var i=$("#numSel").text();
	  if(parseInt(i)>4){
	  	$("#numSel").text(parseInt(i)-1);
	  }else{
		  alert("4小时起步");
	  }
	}
function numAdd3(){
  var i=$("#numSel").text();
  $("#numSel").text(parseInt(i)+1);
}


function checkSelNum(){
	if(${ordertype}==1){
		var i=$("#numSel").text();
		$("#orderTypeSel").html("时长:"+i+"小时");
		$("#selNum1").val(i);
	}else if(${ordertype}==2){
		var i=$("#numSel").text();
		$("#orderTypeSel").html("时长:"+i+"小时");
		$("#selNum1").val(i);
	}else if(${ordertype}==3){
		var i=$("#kaihuangSQ1").val();
		var j=$("#kaihuangSQ2").val();
		if(i.length>0&&j.length==0){
			$("#orderTypeSel").html("一般开荒:"+i+"m²");
			$("#selNum1").val(i);
		}else if(j.length>0&&i.length==0){
			$("#orderTypeSel").html("精细开荒:"+j+"m²");
			$("#selNum2").val(j);
		}else if(i.length>0&&j.length>0){
			$("#orderTypeSel").html("一般开荒:"+i+"m²"+"&nbsp;"+"精细开荒:"+j+"m²");
			$("#selNum1").val(i);
			$("#selNum2").val(j);
		}else{
			alert("请输入面积");
			return;
		}
	}else if(${ordertype}==4){
		var i=$("#numSel").text();
		var j=$("#numSel1").text();
		if(parseInt(i)==0&&parseInt(j)==0){
			alert("请选择数量");
			return;
		}else if(parseInt(i)>0&&parseInt(j)==0){
	  		$("#orderTypeSel").html("挂机:120元/台"+ "&nbsp;&nbsp;"+"x"+i);
	  		$("#selNum1").val(i);
		}else if(parseInt(i)==0&&parseInt(j)>0){
	  		$("#orderTypeSel").html("柜机:150元/台"+ "&nbsp;&nbsp;"+"x"+j);
			$("#selNum2").val(j);
		}else if(parseInt(i)>0&&parseInt(j)>0){
	  		$("#orderTypeSel").html("挂机:120元/台"+ "&nbsp;&nbsp;"+"x"+i+"&nbsp;&nbsp;"+"柜机:150元/台"+ "&nbsp;&nbsp;"+"x"+j);
	  		$("#selNum1").val(i);
			$("#selNum2").val(j);
		}
	}else if(${ordertype}==5){
		var i=$("#numSel").text();
		if(parseInt(i)==0){
			alert("请选择数量");
		}else{
	  		$("#orderTypeSel").html("油烟机:180元/台"+ "&nbsp;&nbsp;"+"x"+i);
	  		$("#selNum1").val(i);
		}
	}else if(${ordertype}==6){
		var i=$("#numSel").text();
		var j=$("#numSel1").text();
		if(parseInt(i)==0&&parseInt(j)==0){
			alert("请选择数量");
			return;
		}else if(parseInt(i)>0&&parseInt(j)==0){
	  		$("#orderTypeSel").html("波轮:140元/台"+ "&nbsp;&nbsp;"+"x"+i);
	  		$("#selNum1").val(i);
		}else if(parseInt(i)==0&&parseInt(j)>0){
	  		$("#orderTypeSel").html("滚筒:80元/台"+ "&nbsp;&nbsp;"+"x"+j);
			$("#selNum2").val(j);
		}else if(parseInt(i)>0&&parseInt(j)>0){
	  		$("#orderTypeSel").html("波轮:140元/台"+ "&nbsp;&nbsp;"+"x"+i+"&nbsp;&nbsp;"+"滚筒:80元/台"+ "&nbsp;&nbsp;"+"x"+j);
	  		$("#selNum1").val(i);
			$("#selNum2").val(j);
		}
	}else if(${ordertype}==7){
		var i=$("#numSel").text();
		var j=$("#numSel1").text();
		if(parseInt(i)==0&&parseInt(j)==0){
			alert("请选择数量");
			return;
		}else if(parseInt(i)>0&&parseInt(j)==0){
	  		$("#orderTypeSel").html("单门120元/台"+ "&nbsp;&nbsp;"+"x"+i);
	  		$("#selNum1").val(i);
		}else if(parseInt(i)==0&&parseInt(j)>0){
	  		$("#orderTypeSel").html("双门160元/台"+ "&nbsp;&nbsp;"+"x"+j);
			$("#selNum2").val(j);
		}else if(parseInt(i)>0&&parseInt(j)>0){
	  		$("#orderTypeSel").html("单门120元/台"+ "&nbsp;&nbsp;"+"x"+i+"&nbsp;&nbsp;"+"双门160元/台"+ "&nbsp;&nbsp;"+"x"+j);
	  		$("#selNum1").val(i);
			$("#selNum2").val(j);
		}
	}else if(${ordertype}==8){
		
	}
	close_sta();
}


if('${resourflag}'=='selected'){
	$('#contactAddress').text('${defaultAddress.address}');
	$('#contactNum_div').css("display","block");
	$('#contactNum').html('联系人:'+ '&nbsp;&nbsp;' +'${defaultAddress.name}'+'&nbsp;&nbsp;'+'${defaultAddress.phoneNum}' );
	$('#contactNum').css("font-size","14px");
}

if('${resourflag}'=='init'){
	if('${init}'== 1 ){
		$('#contactAddress').text('${defaultAddress.address}');
		$('#contactNum_div').css("display","block");
		$('#contactNum').html('联系人:'+ '&nbsp;&nbsp;' +'${defaultAddress.name}'+'&nbsp;&nbsp;'+'${defaultAddress.phoneNum}' );
		$('#contactNum').css("font-size","14px");
	}
}

$('.week').last().css('width', '14.2%');


//隐藏服务标准
document.getElementById('black').style.display="none";
document.getElementById('statement').style.display="none";


//点击服务类型
function statement(){
	document.getElementById('black').style.display="block";
	document.getElementById('statement').style.display="block";
	}
//点击关闭按钮，关闭服务类型
function close_sta(){
	document.getElementById('black').style.display="none";
	document.getElementById('statement').style.display="none";
	$(".standard").hide();
}
$(".service").click(
	function(){
		$(this).toggleClass("checkbox");
		}
)
//隐藏服务地址
$(".address").hide();
$(".standard").hide();
//点击基础服务
$(".service").eq(0).click(
	function(){
		document.getElementById('black').style.display="block";
		$(".standard").show();
		}
)

//选择时间弹出层
var ar=new Array();
var ar2=new Array();
var ar3=new Array();
var weeks=$(".week");
weeks.each(function() {
    var $this = $(this);
    ar.push($this.children('h2').text());
    ar2.push($this.children('h1').text());
    ar3.push($this.children('span').text());
});



var arr=["8:00","8:30","9:00","9:30","10:00","10:30","11:00","11:30","12:00","12:30","13:00","13:30","14:00","14:30","15:00","15:30"]
var atext=document.getElementById("atext");
var btext=document.getElementById("btext");
var        week=document.getElementsByClassName("week");
var        time=document.getElementsByClassName("time")
//隐藏选择时间
var off=1;
$("#option_time").hide();
$(".column_ron").click(
	function(){
		var strTemp=$("#orderTypeSel").html();
		if(strTemp.indexOf("请选择")!=-1){
			alert(strTemp);
			return;
		}
	$("#option_time").show();
	if(off){
		atext.innerHTML=ar2[0]+"今天";btext.innerHTML="8:00";off=0;
		week[0].click();
		time[0].click();
	}
	})//显示选择时间
$("#confirmTime").click(function(){
	$("#option_time").hide();
	checkSubmitstate();
	
})//隐藏选择时间
//选择几号:点击日期，边框滑动
$(".week:eq(0)").click(function(){$(".blue").animate({left:"0%"});});
$(".week:eq(1)").click(function(){$(".blue").animate({left:"14.3%"})});
$(".week:eq(2)").click(function(){$(".blue").animate({left:"28.6%"});});
$(".week:eq(3)").click(function(){$(".blue").animate({left:"42.9%"})});
$(".week:eq(4)").click(function(){$(".blxue").animate({left:"57.2%"});});
$(".week:eq(5)").click(function(){$(".blue").animate({left:"71.5%"})});
$(".week:eq(6)").click(function(){$(".blue").animate({left:"85.7%"});});
for(i=0;i<week.length;i++){
	week[i].index=i;
	week[i].onclick=function(){
		atext.innerHTML="<p>"+ar2[this.index]+ar[this.index]+"</p>";
		$("#form_ordertime").val(ar3[this.index]);
	}
}

//选择具体时间
var option_box=document.getElementById("option_box");
var time=option_box.getElementsByTagName("div");
var b="";
$(time).click(function(){$(this).addClass("option").siblings().removeClass("option");})
for(x=0;x<time.length;x++){
	time[x].index=x;
	time[x].onclick=function(){
		btext.innerHTML="<span>"+arr[this.index]+"</span>";
		b=this.index;
	}
}

$("#submitDiv").click(function(){
	var disable=$("#submitDiv").attr("disable");	
	if(disable==0){
		var sdate=$("#form_ordertime").val()+"/"+arr[b];
		$("#form_ordertime").val(sdate);
		$("#form_totalhour").val(0);
		$("#form_ordertype").val('${ordertype}');
		$("#form_orderstate").val(3);
		$("#submitForm").submit();
	}
})

function checkSubmitstate(){
	if($("#contactAddress").text().length>1){
		if($("#atext").text().length>1){
			$("#submitDiv").attr("disable",0);
			$("#submitDiv").css("background-color","#FF7F00");
		}
	}
}

</script>
</body>
</html>





























