/**
 * WxPageController.java 2017年12月12日
 *
 * @Copyright 深圳超群高科技有限公司 
 * 广东省深圳市南山区科技园清华信息港C栋608， 中国
 * 保留所有权利。 
 * 
 * 本软件是深圳超群高科技有限公司的机密和专有信息，
 * 您不得披露该保密信息，并只能按照您与深圳超群高科技有限公司签订的许可协议中的条款使用。
 */
package com.javen.controller;

import com.javen.common.WxInterceptor;
import com.jfinal.aop.Before;
import com.jfinal.core.Controller;

/**
 * @描述: 
 * @作者: 刘斐
 * @时间: 2017年12月12日 下午4:51:22
 * @版本: 1.0
 */
@Before(WxInterceptor.class)
public class WxPageController extends Controller{
	public void index(){
		render("index.html");
	}
		
	public void cleaningIndex(){
		render("cleaningIndex.html");
	}
	
	public void floor(){
		render("floor.html");
	}
	
	
	public void recharge(){
		render("recharge.html");
	}
	
	public void myorder(){
		render("myorder.html");
	}
	
	public void indexCenter(){
		render("indexCenter.html");
	}
	
}
