package com.javen.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.javen.model.TUser;
import com.jfinal.core.Controller;
import com.jfinal.kit.JsonKit;

/**
 * @author Javen
 * 2016年3月20日
 */
public class TUserController extends Controller {
	public void index(){
		String openId = getSessionAttr("openId");
		System.out.println(openId+"===");
		setAttr("openId", openId);
		render("/front/doudou_member.jsp");
	}
	
}
