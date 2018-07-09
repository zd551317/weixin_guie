package com.javen.controller;

import java.util.Date;
import java.util.List;

import com.javen.model.Idea;
import com.javen.model.Order;
import com.javen.model.Stock;
import com.javen.model.TUser;
import com.javen.utils.EmailUtils;
import com.javen.utils.EmailUtils.MailData;
import com.javen.utils.WebUtils;
import com.javen.vo.AjaxResult;
import com.jfinal.core.Controller;
import com.jfinal.kit.JsonKit;
import com.jfinal.kit.PropKit;
import com.jfinal.kit.StrKit;
import com.jfinal.weixin.sdk.api.SnsAccessTokenApi;
import com.jfinal.weixin.sdk.api.SnsApi;

/**
 * @author Javen
 * 2016年1月13日
 */
public class IndexController extends Controller{
	private AjaxResult result = new AjaxResult();
	
	//跳转到授权页面
	public void toOauth(){
		String calbackUrl=PropKit.get("domain")+"/oauth";
		String url=SnsAccessTokenApi.getAuthorizeURL(PropKit.get("appId"), calbackUrl, "111",false);
		System.out.println(url);
		redirect(url);
	}
	//pc扫描登陆
	public void toWebOauth(){
		String calbackUrl=PropKit.get("domain")+"/oauth/webCallBack";
		String url=SnsAccessTokenApi.getQrConnectURL(PropKit.get("webAppId"), calbackUrl,"666");
		redirect(url);
	}
	
	public void index() {
		String openId = getSessionAttr("openId");
		System.out.println(openId+"===");
		setAttr("openId", openId);
		render("doudou_index.jsp");
	}
	
	public void member() {
		String openId = getSessionAttr("openId");
		System.out.println(openId+"===");
		setAttr("openId", openId);
		render("doudou_member.jsp");
	}
	
	/**
	 * 登录页
	 */
	public void login() {
		//判断是否绑定账号，如果绑定了就直接跳到首页
		String openId = getSessionAttr("openId");
		if (StrKit.isBlank(openId)) {
			TUser tuser=getSessionAttr("tuser");
			if (null!=tuser) {
				openId=tuser.getStr("openId");
				setSessionAttr("openId", openId);
			}
		}
		System.out.println("login openId:"+openId);
		TUser tUser = TUser.dao.findByOpenId(openId);
		System.out.println(JsonKit.toJson(tUser));
		if (null!=tUser) {
			String remember = tUser.get("remember");
			if (Integer.parseInt(remember)==1) {
				tUser.set("lastLoginDate", new Date()).set("openId", openId).update();
				forwardAction("/");
				return;
			}
		}
		List<Order> orders=Order.dao.getOrderByOpenId(openId);
		setAttr("orders", orders);
		render("orders.jsp");
	}
	
	
	public void saveOrder() {
		String out_trade_no="";
		String appid="";
		String openId="";
		String ordertime="";
		String totolhour="";
		String address="";
		String ordertype="";
		String orderstate="";
		String transaction_id="";
		String staff_no="";
		String total_fee="";
		String time_end="";
		Order order=new Order();
		order.set("out_trade_no", out_trade_no);
		order.set("appid", appid);
		order.set("openId", openId);
		order.set("ordertime", ordertime);
		order.set("totolhour", totolhour);
		order.set("address", address);
		order.set("ordertype", ordertype);
		order.set("orderstate", orderstate);
		order.set("staff_no", staff_no);
		order.set("transaction_id", transaction_id);
		order.set("total_fee", total_fee);
		order.set("time_end", time_end);
		order.save();
	}
	
	
	/**
	 * 注册页
	 */
	public void register() {
		render("register.jsp");
//		render("mobile_register.jsp");
	}
	/**
	 * 用户协议
	 */
	public void secret() {
		render("secret.jsp");
	}
	/**
	 * 忘记密码
	 */
	public void forget() {
		render("forget.jsp");
	}
	
	public void idea(){
		render("idea.jsp");
	}
	
	/**
	 * 验证码
	 */
	public void image_code() {
		renderCaptcha();
	}
	
	public void translate(){
		render("translate.jsp");
	}
	
	
	public void ajax(){
		String name = getPara("name");
		String city=getPara("city");
		System.out.println(name+" "+city);
		result.success(JsonKit.toJson(new StringBuffer().append(city).append(city).toString()));
		renderJson(result);
	}
	
	public void ordertest(){
		Order order = Order.dao.getOrderByAttach("1", "o_pncspFgfKKELTAASxI9ogDMv-k");
		renderJson(order);
	}
	
	public void orderId(){
		Order order = Order.dao.getOrderByTransactionId("4004932001201604114749884540");
		renderJson(order);
	}
	
	public void emailTest(){
		boolean isSuccess=EmailUtils.sendMail(MailData.New()
				.subject("Javen")
				.content("test")
				.to("572839485@qq.com") );
		
		if (isSuccess) {
			renderText("发送成功");
		}else {
			renderText("发送XXXX");
		}
	}
	
	public void sendAsynMail(){
		WebUtils.sendAsynMail("572839485@qq.com", "这个是我的项目", "Javen send sendAsynMail");
		renderText("发送中....");
	}
	
	public void stockTest(){
//		renderText(Stock.dao.reduce("5")+"");
		Stock.dao.setAllStockCount(2);
	}
	
	public void ideaTest(){
		Idea idea=new Idea();
		idea.set("account", "572839485");
		idea.set("contact", "weixin");
		idea.set("context", "中文车费");
		renderText(idea.save()+" ");
	}
	
}
