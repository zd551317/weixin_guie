package com.javen.controller;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.sound.sampled.AudioFormat;
import javax.sound.sampled.AudioInputStream;
import javax.sound.sampled.AudioSystem;
import javax.sound.sampled.DataLine;
import javax.sound.sampled.SourceDataLine;

import com.javen.model.Order;
import com.jfinal.core.Controller;
import com.jfinal.core.JFinal;
import com.jfinal.plugin.activerecord.Page;

import javazoom.jl.decoder.JavaLayerException;
import javazoom.jl.player.Player;

public class ManageController extends Controller{
	
	public void orderList() {
		String searchType= getPara("form_searchType");
		if(searchType==null||"".equals(searchType)){
			searchType="2";
		}
		String sql = "from orders a left join t_address b on a.addressId=b.id";
		if ("2".equals(searchType)) {
			sql = sql + " where a.orderstate='0' or a.orderstate='1'";
		} else if ("3".equals(searchType)) {
			sql = sql + " where a.orderstate!='0' and a.orderstate!='1'";
		}
		
		sql = sql + " order by a.create_time desc";
		
		//List<Order> orderList = Order.dao.find(sql);
		int pageNumber = 1;   //p为指定跳转的页面  
        if(getParaToInt("form_pageNumber")!=null) {
        	pageNumber=getParaToInt("form_pageNumber");
        } //前端通过pn传参  
        int pageSize=8;          //指定每一页的显示数量  
        Page<Order> list4 = Order.dao.paginate(pageNumber, pageSize,"select *", sql);  //所有订单  
        int x=list4.getTotalPage();  //共展示的页数  
        int y=list4.getPageSize();   //页码的大小  
        int z=list4.getTotalRow();   //数据库中数据总共的条数  
          
        String skip="";  
        for(int q=1;q<=x;q++)  
        {  
            skip=skip+"<a href=\"scjhgl/index?pn="+q+"&ps="+y+"\">"+q+"</a>" ;  //循环把链接输出 1 2 3 ,  &nbsp;&nbsp空格，传ps参数是避免修改pageSize后恢复页面数改变  
        }  
        setAttr("iteration4", list4);     //设置iteration4集合供前端页面获取数据库数据  
        setAttr("pageNumber",pageNumber);   //当前页面号供前端获取  
        setAttr("TotalPage",x);  
        setAttr("PageSize",y);  
        setAttr("TotalRow",z);  
        setAttr("skip",skip);  //数字链接  
		
		
		//setAttr("orderList", orderList);
		setAttr("searchType", searchType);
		render("/back/tables.jsp");
	}
	
	public void manager() {
		
        renderFreeMarker("ddxi.html");    
	}
	
	public void ajaxOrder() {
		Object out_trade_no_temp=JFinal.me().getServletContext().getAttribute("newOrderId");
		if(out_trade_no_temp==null||"0".equals(out_trade_no_temp)){
			setAttr("result",0);//如果是0代表，没有新增订单
			renderJson();
		}else {
			String arr_out_trade_no[] = out_trade_no_temp.toString().split(",");
			//for (String out_trade_no : arr_out_trade_no) {
				setAttr("result",arr_out_trade_no.length);//如果是1代表借成功  
				JFinal.me().getServletContext().setAttribute("newOrderId", null);
				renderJson();
				try {
					playSound();
				} catch (FileNotFoundException e) {
					e.printStackTrace();
				} catch (JavaLayerException e) {
					e.printStackTrace();
				}
			//}
		}
	}
	
	
	public void operationOrder() {
		String type=getPara("operationType");
		String id=getPara("id");
		Order order=Order.dao.getOrderByOut_trade_no(id);
		if("1".equals(type)) {
			order.set("orderstate", 2);
			order.update();
			setAttr("result",0);
		}else if("2".equals(type)){
			order.set("orderstate", 4);
			order.update();
			setAttr("result",0);
		}
		renderJson();
	}
	
	
	 public void playSound() throws FileNotFoundException, JavaLayerException {
	        // TODO Auto-generated method stub
		 ServletContext con = JFinal.me().getServletContext(); // 获取全局域对象 
		 String path = con.getRealPath("newOrder.mp3"); 
		 BufferedInputStream buffer = new BufferedInputStream(new FileInputStream(path));
		 Player player = new Player(buffer);
         player.play();
	    }
	
	
}
