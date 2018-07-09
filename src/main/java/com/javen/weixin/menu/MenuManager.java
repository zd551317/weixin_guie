/**
 * Copyright (c) 2015-2016, Javen Zhou  (javen205@126.com).
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 */
package com.javen.weixin.menu;


import com.jfinal.kit.JsonKit;
import com.jfinal.kit.PropKit;
import com.jfinal.weixin.sdk.api.ApiConfig;
import com.jfinal.weixin.sdk.api.ApiConfigKit;
import com.jfinal.weixin.sdk.api.ApiResult;
import com.jfinal.weixin.sdk.api.MenuApi;

/**
 * 菜单管理器类 
 * @author Javen
 * 2016年5月30日
 */
public class MenuManager  {
	 public static void main(String[] args) { 
		 
		   // 将菜单对象转换成json字符串
		   //有问题：主菜单项多了一个type
		   String jsonMenu = JsonKit.toJson(getTestMenu()).toString();
		   System.out.println(jsonMenu);
		   ApiConfig ac = new ApiConfig();
			
			// 配置微信 API 相关常量
		   ac.setAppId(PropKit.get("appId"));
		   ac.setAppSecret(PropKit.get("appSecret"));
		   ApiConfigKit.putApiConfig(ac);
		   ApiConfigKit.setThreadLocalAppId(PropKit.get("appId"));
		   
		   //创建菜单
	       ApiResult apiResult=MenuApi.createMenu(jsonMenu);
	       System.out.println(apiResult.getJson());
	 }  
	 
	 
	  
	    /** 
	     * 组装菜单数据 
	     *  
	     * @return 
	     */  
	    private static Menu getTestMenu() {  
	        ViewButton btn35 = new ViewButton();  
	        btn35.setName("预约");  
	        btn35.setType("view");  
	        btn35.setUrl("https://doudou.hn.cn/toOauth"); 
	        
	        ViewButton btn33 = new ViewButton();  
	        btn33.setName("在线客服");  
	        btn33.setType("view");  
	        btn33.setUrl("https://doudou.hn.cn");  
	      	       
	        ViewButton btn23 = new ViewButton();  
	        btn23.setName("简介");  
	        btn23.setType("view");  
	        btn23.setUrl("https://doudou.hn.cn"); 
	        
	        ViewButton btn31 = new ViewButton();  
	        btn31.setName("师傅招募");  
	        btn31.setType("view");  
	        btn31.setUrl("https://doudou.hn.cn");  
	        
	        ComButton mainBtn3 = new ComButton();  
	        mainBtn3.setName("关于兜兜");  
	        mainBtn3.setSub_button(new Button[] {  btn23 ,btn31 });  
	  
	        /** 
	         * 这是公众号xiaoqrobot目前的菜单结构，每个一级菜单都有二级菜单项<br> 
	         *  
	         * 在某个一级菜单下没有二级菜单的情况，menu该如何定义呢？<br> 
	         * 比如，第三个一级菜单项不是“更多体验”，而直接是“幽默笑话”，那么menu应该这样定义：<br> 
	         * menu.setButton(new Button[] { mainBtn1, mainBtn2, btn33 }); 
	         */  
	        Menu menu = new Menu();  
	        menu.setButton(new Button[] { btn35, btn33,mainBtn3});  
	        return menu;  
	    }
	    
	    
	    
	    private static Menu getTestMenu1() {  
	  	  
	        ViewButton btn35 = new ViewButton();  
	        btn35.setName("预约");  
	        btn35.setType("view");  
	        btn35.setUrl("https://97b10cbd.ngrok.io/weixin_guide/toOauth"); 
	        
	        ViewButton btn33 = new ViewButton();  
	        btn33.setName("在线客服");  
	        btn33.setType("view");  
	        btn33.setUrl("https://97b10cbd.ngrok.io/weixin_guide");  
	  
	        ViewButton btn23 = new ViewButton();  
	        btn23.setName("简介");  
	        btn23.setType("view");  
	        btn23.setUrl("https://97b10cbd.ngrok.io/weixin_guide"); 
	        
	        ViewButton btn31 = new ViewButton();  
	        btn31.setName("师傅招募");  
	        btn31.setType("view");  
	        btn31.setUrl("https://97b10cbd.ngrok.io/weixin_guide");  
	        
	        ComButton mainBtn3 = new ComButton();  
	        mainBtn3.setName("关于兜兜");  
	        mainBtn3.setSub_button(new Button[] {  btn23 ,btn31 });  
	  
	        /** 
	         * 这是公众号xiaoqrobot目前的菜单结构，每个一级菜单都有二级菜单项<br> 
	         *  
	         * 在某个一级菜单下没有二级菜单的情况，menu该如何定义呢？<br> 
	         * 比如，第三个一级菜单项不是“更多体验”，而直接是“幽默笑话”，那么menu应该这样定义：<br> 
	         * menu.setButton(new Button[] { mainBtn1, mainBtn2, btn33 }); 
	         */  
	        Menu menu = new Menu();  
	        menu.setButton(new Button[] { btn35, btn33,mainBtn3});  
	        return menu;  
	    }
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
}
