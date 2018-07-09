/**
 * WxInterceptor.java 2017年12月12日
 *
 * @Copyright 深圳超群高科技有限公司 
 * 广东省深圳市南山区科技园清华信息港C栋608， 中国
 * 保留所有权利。 
 * 
 * 本软件是深圳超群高科技有限公司的机密和专有信息，
 * 您不得披露该保密信息，并只能按照您与深圳超群高科技有限公司签订的许可协议中的条款使用。
 */
package com.javen.common;


import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;

import com.javen.model.TUser;
import com.javen.utils.StringUtils;
import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;
import com.jfinal.core.Controller;
import com.jfinal.kit.PropKit;

/**
 * @描述: 
 * @作者: 刘斐
 * @时间: 2017年12月12日 下午4:07:10
 * @版本: 1.0
 */
public class WxInterceptor implements Interceptor{
	public static boolean test = false;
	@Override
	public void intercept(Invocation inv) {
		try {
			Controller c = inv.getController();
			HttpServletRequest request = c.getRequest();
			String cb = URLEncoder.encode(request.getRequestURL().toString(), "utf-8");
			// setSessionAttr("openId", openId); request.getRequestURL()
			String openId = c.getSessionAttr("openId");
			if(test){
				openId="owi-0uJumlX4oxxaumiaSUljfIRM";
			}
			if (StringUtils.isEmpty(openId)) {
				c.redirect(PropKit.get("domain") + "/toOauth?cb=" + cb,true);
				return;
			}
			TUser tuser = c.getSessionAttr("tuser");
			if(null==tuser){
				tuser  = TUser.dao.findByOpenId(openId);
			}
			if (null == tuser && !request.getRequestURI().contains("/register")) {
				c.redirect(PropKit.get("domain") + "/register?cb=" + cb);
			}if (null == tuser && request.getRequestURI().contains("/register")) {
				return;
			}else if (null == tuser) {
				c.redirect(PropKit.get("domain") + "/register?cb=" + cb);
			} else {
				c.setSessionAttr("tuser", tuser);
			}
			return;
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	}

}
