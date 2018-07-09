<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="<%=path%>/js/jquery.js"></script>
<link href="<%=path%>/css/css.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="<%=path%>/css/amazeui.min.css" type="text/css" />
<link rel="stylesheet" href="<%=path%>/css/style.css" type="text/css" />
<script type="text/javascript" src="<%=path%>/js/jquery.min.js" ></script>
<script type="text/javascript" src="<%=path%>/js/amazeui.min.js"></script>




<script type="text/javascript" src="<%=path %>/static/weui/lib/jquery-2.1.4.js"></script>
<script type='text/javascript' src="<%=path %>/static/weui/js/jquery-weui.js"></script>
<!-- layer -->
<script src="<%=path %>/static/layer/layer.js"></script>
<script type="text/javascript" src="http://res.wx.qq.com/open/js/jweixin-1.1.0.js"></script>




<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta name="format-detection" content="telephone=no" />
<meta charset="utf-8">
<title>无标题文档</title>
<style>
.move_box{ width:100%; clear:both; position:relative; left:0; overflow:hidden}
.move{ width:200%; clear:both; position:relative; left:0; }
/*服务流程or订单详情*/
.information,.evaluate{ height:41px; width:50%; line-height:41px; color:#65646b; text-align:center; float:left; font-size:14px;}
.blue_block{ width:50%; height:2px; background-color:#01aff0; position:absolute; left:0; bottom:0;}
/*服务流程*/
.service_box{  background-color:#fff; position:relative; width:50%; float:left}
.blue{z-index:999; width:14px; height:14px; position:absolute; left:4%; top:20px; background-color:#a5dcfa; border-radius:50%; padding-top:2px; padding-left:2px; box-sizing:border-box}
.blue div{z-index:999; height:10px; width:10px; background-color:#01aff0; border-radius:50%;}
.blue p{ position:absolute; width:2px; height:52px; background-color:#ccc; left:50%; margin-left:-1px; top:-50px;}
.gray{ width:14px; height:14px; position:absolute; z-index:0; left:4%; top:20px; padding-top:1px; padding-left:1px; box-sizing:border-box}
.gray div{ height:12px; width:12px; background-color:#ccc; border-radius:50%;}
.gray p{ position:absolute; width:2px; height:59px; background-color:#ccc; left:50%; margin-left:-1px; top:-50px;}
.service{ height:60px; padding-top:11px; box-sizing:border-box; position:relative; box-sizing:border-box; background:#fff;}
.service h1{ line-height:18px; color:#191919; font-size:14px; margin-left:11%;}
.service h2{ line-height:16px; color:#65646b; font-size:12px; margin-left:11%}
.service > p{ line-height:42px; color:#65646b; font-size:12px; position:absolute; top:0; right:4%;}
/*订单详情*/
.order_box{ width:50%; float:left}
.order_title{ height:39px; line-height:39px; font-size:14px; color:#65646b; padding-left:4%; box-sizing:border-box}
.order{ height:42px; background-color:#fff; position:relative; padding-left:4%; padding-right:4%; padding-top:9px; box-sizing:border-box}
.order_line{ height:26px;}
.order_line h1{ line-height:26px; font-size:14px; color:#191919; float:left}
.order_line p{ line-height:26px; font-size:14px; color:#EA5858; float:right}
/*订单信息*/
.order_msg{ background-color:#fff; position:relative; padding-left:4%; padding-right:4%; padding-top:9px; padding-bottom:9px; box-sizing:border-box}
.msg_line h1{ line-height:26px; font-size:14px; color:#65646b; float:left; width:20%;}
.msg_line p{ line-height:26px; font-size:14px; color:#191919; float:left; width:78%;}
/*底部按钮*/
.evaluate_btn,.share_btn{ background-color:#FF7F00; color:white; border-radius:3px;  height:33px; line-height:33px; text-align:center; font-size:16px; margin-top:14px; }
.share_btn{ background-color:#fff; border:1px solid #ccc; color:#65646b;}
/*分享框*/
.black{ z-index:3}
.share_box{ width:100%; height:126px; background-color:#fff; position:fixed; left:0; bottom:0; z-index:4}
.share_title{ position:relative; height:41px; line-height:41px; color:#65646b; text-align:center; font-size:14px;}
.share_title img{ width:9px; height:9px; position:absolute; left:4%; top:14px;}
.share,.share1{ width:50%; float:left}
.share img,.share1 img{margin-top:15px; width:33px; height:auto}
.share img{float:right; margin-right:22%;} 
.share1 img{float:left; margin-left:22%;}
.share p,.share1 p{ position:relative; bottom:0; font-size:12px; color:#65646b; line-height:36px;}
.share p{ clear:right; text-align:right; right:22%; margin-right:-5px;}
.share1 p{ clear:left; text-align:left; left:22%; margin-left:-2px;}
/*取消规则*/
.cancel_box{ z-index:4}
.cancel_title{ line-height:33px; height:33px; color:#01aff0; border-bottom:1px solid #01aff0; padding-left:14px;}
.cancel_text{ padding-left:14px; padding-right:14px; margin-top:4px; height:224px;}
.cancel_text h1{ font-size:14px; line-height:18px; color:#01aff0;}
.cancel_text p{ font-size:12px; line-height:15px; color:#65646b;}
.cancel{ height:24px;}
.cancel p{ float:left; line-height:24px; color:#191919; font-size:12px; margin-left:14px;}
.cancel input{ float:right; margin-right:14px; margin-top:5px;}
</style>
</head>

<body style="background-color: #f9f9f9;">
<!--header顶部标题-->
<div class="header">订单详情
	<div class="header_left" onclick="window.history.go(-1)"><img src="<%=path%>/images1/return.png"></div>
</div>
<!--服务流程or订单详情-->
<div style="position:relative; height:42px;">
    <div class="information">订单详情</div>
    <div class="evaluate" style="color:#01aff0">服务流程</div>
    <div class="blue_block"></div>
    <div class="border_bottom"></div>
</div>

<!--服务流程-->
<div class="move_box">
<div class="move">

<!--订单详情-->
<div class="order_box">
    <!--订单信息-->
    <div class="order_msg">
        <div class="border_top"></div>
        <div class="msg_line">
            <h1>订单号</h1>
            <p>${order.out_trade_no}</p>
            <div class="clearfix"></div>
        </div>
        <div class="msg_line">
            <h1>服务时间</h1>
            <p>${order.ordertime}</p>
            <div class="clearfix"></div>
        </div>
      
        <div class="msg_line">
            <h1>服务地点</h1>
            <p>${addresss.address}</p>
            <div class="clearfix"></div>
        </div>
         <c:if test="${order.ordertype==1}">
			<div class="msg_line">
            	<h1>服务内容</h1>
	            <p>
	            	日常保洁
	            </p>
	            <div class="clearfix"></div>
	        </div>
	        <div class="msg_line">
	            <h1>预约时间</h1>
	            <p>${order.totolhour}小时</p>
	            <div class="clearfix"></div>
	        </div>
		</c:if>
		<c:if test="${order.ordertype==2}">
			<div class="msg_line">
            	<h1>服务内容</h1>
	            <p>
	            	擦玻璃
	            </p>
	            <div class="clearfix"></div>
	        </div>
	        <div class="msg_line">
	            <h1>预约时间</h1>
	            <p>${order.totolhour}小时</p>
	            <div class="clearfix"></div>
	        </div>
		</c:if>
		<c:if test="${order.ordertype==3}">
			<div class="msg_line">
            	<h1>服务内容</h1>
	            <p>开荒保洁</p>
	            <div class="clearfix"></div>
	        </div>
	        
	        <c:if test="${order.selNum1>0}">
		        <div class="msg_line">
		            <h1>一般开荒</h1>
		            <p>${order.selNum1} m² (5元/m²)</p>
		            <div class="clearfix"></div>
		        </div>
	        </c:if>
	        
	        <c:if test="${order.selNum2>0}">
		        <div class="msg_line">
		            <h1>精细开荒</h1>
		            <p>${order.selNum2} m² (8元/m²)</p>
		            <div class="clearfix"></div>
		        </div>
	        </c:if>
		</c:if>
		<c:if test="${order.ordertype==4}">
			<div class="msg_line">
            	<h1>服务内容</h1>
	            <p>空调清洗</p>
	            <div class="clearfix"></div>
	        </div>
	        <c:if test="${order.selNum1>0}">
		        <div class="msg_line">
		            <h1>空调挂机</h1>
		            <p>${order.selNum1} 台 (120元/台)</p>
		            <div class="clearfix"></div>
		        </div>
	        </c:if>
	        <c:if test="${order.selNum2>0}">
		        <div class="msg_line">
		            <h1>空调柜机</h1>
		            <p>${order.selNum2} 台 (150元/台)</p>
		            <div class="clearfix"></div>
		        </div>
	        </c:if>
		</c:if>
		<c:if test="${order.ordertype==5}">
			<div class="msg_line">
            	<h1>服务内容</h1>
	            <p>油烟机清洗</p>
	            <div class="clearfix"></div>
	        </div>
	        <div class="msg_line">
	            <h1>数量</h1>
	            <p>${order.selNum1} 台  180元/台（集成灶除外）</p>
	            <div class="clearfix"></div>
	        </div>
		</c:if>
		<c:if test="${order.ordertype==6}">
			<div class="msg_line">
            	<h1>服务内容</h1>
	            <p>洗衣机清洗</p>
	            <div class="clearfix"></div>
	        </div>
	        <c:if test="${order.selNum1>0}">
		        <div class="msg_line">
		            <h1>波轮</h1>
		            <p>${order.selNum1} 台 (140元/台)</p>
		            <div class="clearfix"></div>
		        </div>
	        </c:if>
	        <c:if test="${order.selNum2>0}">
		        <div class="msg_line">
		            <h1>滚筒</h1>
		            <p>${order.selNum2} 台 (80元/台)</p>
		            <div class="clearfix"></div>
		        </div>
	        </c:if>
		</c:if>
		<c:if test="${order.ordertype==7}">
			<div class="msg_line">
            	<h1>服务内容</h1>
	            <p>冰箱清洗</p>
	            <div class="clearfix"></div>
	        </div>
	        <c:if test="${order.selNum1>0}">
		        <div class="msg_line">
		            <h1>单门冰箱</h1>
		            <p>${order.selNum1} 台 (120元/台)</p>
		            <div class="clearfix"></div>
		        </div>
	        </c:if>
	        <c:if test="${order.selNum2>0}">
		        <div class="msg_line">
		            <h1>双门冰箱</h1>
		            <p>${order.selNum2} 台 (160元/台)</p>
		            <div class="clearfix"></div>
		        </div>
	        </c:if>
		</c:if>
			
        <div class="msg_line">
            <h1>价格</h1>
            <p>${order.total_fee}元</p>
            <div class="clearfix"></div>
        </div>
        <div class="msg_line">
            <h1>订单状态</h1>
            <p>
            	<c:if test="${order.orderstate==0}">
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
				</c:if>
            </p>
            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
        <div class="border_bottom"></div>
    </div>
</div>

<div class="service_box">
    <!--服务流程（上）-->
    <div class="service" >
    	<div id="state_div4">
    		<div></div>
    	</div>
        <h1>技师结束</h1>
        <h2>技师已服务结束</h2>
        <p>2015-12-30&nbsp;&nbsp;&nbsp;&nbsp;18:30:25</p>
    </div>
    <!--服务流程（中）-->
    <div class="service" >
    	<div id="state_div3" >
       	  	<div></div>
            <p></p>
      	</div>
        <h1>技师已上门</h1>
        <h2>技师已开始服务</h2>
        <p>2015-12-30&nbsp;&nbsp;&nbsp;&nbsp;16:30:25</p>
    </div>    
    <!--服务流程（中）-->
    <div class="service" >
    	<div  id="state_div2">
       	  	<div></div>
            <p></p>
      	</div>
        <h1>技师已出发</h1>
        <h2>技师已前往你的住处</h2>
        <p>2015-12-30&nbsp;&nbsp;&nbsp;&nbsp;16:30:25</p>
    </div>
    <!--服务流程（下）-->
    <div class="service" >
    	<div  id="state_div1">
       		<div></div>
            <p></p>
      	</div>
        <h1>已支付</h1>
        <h2>等待技师上门服务</h2>
        <p>2015-12-30&nbsp;&nbsp;&nbsp;&nbsp;10:30:25</p>
    </div>
      <div class="service" >
    	<div  id="state_div0">
       		<div></div>
            <p></p>
      	</div>
        <h1>未支付</h1>
        <h2>请尽快进行支付</h2>
        <p>2015-12-30&nbsp;&nbsp;&nbsp;&nbsp;10:30:25</p>
    </div>
    <div class="border_bottom"></div>
</div>

</div>
</div>
<!--底部按钮-->
<div class="confirm_box">
	<div class="evaluate_btn" onclick="wxpay();">立即支付</div>
</div>


<script>

if(${order.orderstate}==0){
   $("#state_div0").addClass("blue");
   $("#state_div1").addClass("gray");
   $("#state_div2").addClass("gray");
   $("#state_div3").addClass("gray");
   $("#state_div4").addClass("gray");
}else if(${order.orderstate}==1){
	   $("#state_div0").addClass("gray");
	   $("#state_div1").addClass("blue");
	   $("#state_div2").addClass("gray");
	   $("#state_div3").addClass("gray");
	   $("#state_div4").addClass("gray");
}else if(${order.orderstate}==2){
	   $("#state_div0").addClass("gray");
	   $("#state_div1").addClass("gray");
	   $("#state_div2").addClass("blue");
	   $("#state_div3").addClass("gray");
	   $("#state_div4").addClass("gray");
}else if(${order.orderstate}==3){
	   $("#state_div0").addClass("gray");
	   $("#state_div1").addClass("gray");
	   $("#state_div2").addClass("gray");
	   $("#state_div3").addClass("blue");
	   $("#state_div4").addClass("gray");
}




//点击服务流程，蓝色滑块向左移动，切换到服务流程页
$(".information").click(
	function(){
		$(".blue_block").animate({left:'0%'});
		$(".move").animate({left:'0%'});
		}
)
//点击订单详情，蓝色滑块向右移动，切换到订单详情页
$(".evaluate").click(
	function(){
		$(".blue_block").animate({left:'50%'});
		$(".move").animate({left:'-100%'});
		}
)
//隐藏黑色半透明背景和分享页
$(".black").hide();
$(".share_box").hide();
//点击分享按钮，弹出分享页
$(".share_btn").click(
	function(){
		$(".black").show();
		$(".share_box").show();
		}
)
//点击分享页左上角的关闭按钮
$(".close_share").click(
	function(){
		$(".black").hide();
		$(".share_box").hide();
		}
)


/* 微信支付 */
function wxpay(){
	//测试时修改为自己的openId 如果不修改会出现【下单账号与支付账号不一致】的提示 这里最好授权获取
	var openId="${openId}";
	var total_fee=${order.total_fee};
	$.post("<%=path %>/pay",
	    {
	      openId:openId,
	      total_fee:total_fee,
	    },
	    function(res){
	    	$.hideLoading();
	    	if (res.code == 0) {
	    		var data=$.parseJSON(res.data);
	    		
	    		if (typeof WeixinJSBridge == "undefined"){
	    			if( document.addEventListener ){
	    				document.addEventListener('WeixinJSBridgeReady', onBridgeReady(data), false);
	    			}else if (document.attachEvent){
	    				document.attachEvent('WeixinJSBridgeReady', onBridgeReady(data)); 
	    				document.attachEvent('onWeixinJSBridgeReady', onBridgeReady(data));
	    			}
	    		}else{
	    			onBridgeReady(data);
	    		}
	    	}else{
	    		if (res.code == 2) {
	    			layer.alert(res.message) ;
	    		}else{
	    			layer.msg("参数错误："+res.message, {shift: 6});
	    		}
	    	}
	    }); 
	
}

function onBridgeReady(json){
	WeixinJSBridge.invoke(
		'getBrandWCPayRequest', 
		json,
		function(res){
			// 使用以上方式判断前端返回,微信团队郑重提示：res.err_msg将在用户支付成功后返回    ok，但并不保证它绝对可靠。
			if(res.err_msg == "get_brand_wcpay_request:ok" ) {
				layer.msg("支付成功", {shift: 6});
				
				self.location="<%=path %>/course/getOrderCourseById?id=${course.id }+&openId=${openId} ";
				
			}else{
				layer.msg("支付失败", {shift: 6});
			}
		}
	); 
}


//隐藏取消规则
$(".cancel_box").hide();
</script>
</body>
</html>

