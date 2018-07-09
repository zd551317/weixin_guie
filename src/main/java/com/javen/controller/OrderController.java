package com.javen.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletContext;

import com.javen.entity.DateDoudou;
import com.javen.model.Address;
import com.javen.model.Order;
import com.jfinal.core.Controller;
import com.jfinal.core.JFinal;

public class OrderController extends Controller{
	private static long orderNum = 0l;    
    private static String date ; 
	public void index() {
		String openId = getSessionAttr("openId");
		setAttr("openId", openId);
		List<Order> orders=Order.dao.getOrderByOpenId(openId);
		setAttr("orders", orders);
		render("/front/doudou_order.jsp");
	}
	
	public void selectAddress() {
		String openId = getSessionAttr("openId");
		System.out.println(openId+"===");
		setAttr("openId", openId);
		List<Address> addresss=Address.dao.getAllByOpenId(openId);
		if(addresss!=null){
			setAttr("resourflag","selected");
			setAttr("addresss", addresss);
		}
		setAttr("ordertype", getPara("ordertype"));
		render("/front/address.jsp");
	}
	
	public void newOrder() {
		String openId = getSessionAttr("openId");
		setAttr("openId", openId);
		setAttr("ordertype",getPara("ordertype"));
		List<DateDoudou> datelist=getDateList();
		setAttr("datelist",datelist);
		
		Address add=Address.dao.getDefault(openId);
		if(add!=null){
			setAttr("defaultAddress",add);
			setAttr("init",1);
		}
		setAttr("resourflag","init");
		render("/front/newOrder.jsp");
	}
	
	private List<DateDoudou> getDateList(){
		List<DateDoudou> list =new LinkedList();
		Date now=new Date();
		Calendar cal=Calendar.getInstance();
	    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");  
	    SimpleDateFormat sdf1 = new SimpleDateFormat("MM-dd"); 
		DateDoudou today =new DateDoudou();
		today.setDate(sdf.format(now));
		today.setWeekend("today");
		today.setMonthDate(sdf1.format(cal.getTime()));
		list.add(today);
		cal.setTime(now);
		cal.add(Calendar.DATE, 1);
		DateDoudou tomorrow =new DateDoudou();
		tomorrow.setDate(sdf.format(cal.getTime()));
		tomorrow.setWeekend("tomorrow");
		tomorrow.setMonthDate(sdf1.format(cal.getTime()));
		list.add(tomorrow);
		for (int i = 0; i < 5; i++) {
			cal.add(Calendar.DATE, 1);
			DateDoudou day =new DateDoudou();
			day.setDate(sdf.format(cal.getTime()));
			cal.get(Calendar.DAY_OF_WEEK);
			day.setWeekend(cal.get(Calendar.DAY_OF_WEEK)+"");
			day.setMonthDate(sdf1.format(cal.getTime()));
			list.add(day);
		}
		return list;
	} 
	
	public static synchronized String getOrderNo() {    
        String str = new SimpleDateFormat("yyMMddHHmm").format(new Date());    
        if(date==null||!date.equals(str)){    
            date = str;    
            orderNum  = 0l;    
        }    
        orderNum ++;    
        long orderNo = Long.parseLong((date)) * 10000;    
        orderNo += orderNum;;    
        return orderNo+"";    
    }    
	
	public void floor() {
		render("myorder.jsp");
	}
	
	public void addAddress() {
		String phoneNumber=getPara("phoneNumber");
		String address=getPara("address");
		String contactName=getPara("contactName");
		setAttr("address",getPara("address"));
		setAttr("contactName",getPara("contactName"));
		setAttr("phoneNumber",getPara("phoneNumber"));
		String openId = getSessionAttr("openId");
		Address.dao.saveAddress(phoneNumber,contactName,address,openId);
		List<Address> addresss=Address.dao.getAllByOpenId(openId);
		if(addresss.size()==1) {
			Address obj=addresss.get(0);
			obj.set("defaultVal", 1);
			obj.update();
			newOrder();
		}else {
			selectAddress();
		}
		
	}
	
	public void inputAddress(){
		String openId = getSessionAttr("openId");
		System.out.println(openId+"===");
		setAttr("openId", openId);
		setAttr("ordertype",getPara("ordertype"));
		List<DateDoudou> datelist=getDateList();
		setAttr("datelist",datelist);
		setAttr("resourflag","selected");
		//更新默认地址
		Address addDefault= Address.dao.getDefault(openId); 
		addDefault.set("defaultVal", 0);
		addDefault.update();
		
		String addressId=getPara("addressId");
		Address add=Address.dao.getbyId(addressId);
		add.set("defaultVal", 1);
		add.update();
		setAttr("defaultAddress",add);
		render("/front/newOrder.jsp");
	}
	
	
	public void  deleteAddress(){
		String id=getPara("id");
		Address.dao.deleteById(id);
		String openId = getSessionAttr("openId");
		System.out.println(openId+"===");
		setAttr("openId", openId);
		List<Address> addresss=Address.dao.getAllByOpenId(openId);
		setAttr("addresss", addresss);
		setAttr("resourflag","selected");
		render("/front/address.jsp");
	}
	
	
	public void submitOrder() throws ParseException {
		String out_trade_no=getOrderNo();
		String openId=getSessionAttr("openId");
		String ordertime= getPara("form_ordertime");
		String day=ordertime.split("/")[0];
		String hour=ordertime.split("/")[1];  
		SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-dd HH:mm");
		Date date=sdf.parse(day+" "+hour);
		
		String totalhour = getPara("form_totalhour");
		String addressId = getPara("form_addressId");
		Address address=Address.dao.getbyId(addressId);
		setAttr("addresss", address);
		String ordertype = getPara("form_ordertype");
		String orderstate = getPara("form_orderstate");
		String staff_no = "";
		
		String selNum1=getPara("selNum1");
		String selNum2=getPara("selNum2");
		setAttr("selNum1", Integer.parseInt(selNum1));
		setAttr("selNum2", Integer.parseInt(selNum2));
		int total_fee = calTotalFee(Integer.parseInt(ordertype),Integer.parseInt(selNum1),Integer.parseInt(selNum2));
		Date create_time = new Date();
		Order order=new Order();
		order.set("out_trade_no", out_trade_no);
		order.set("appid", "");
		order.set("openId", openId);
		order.set("ordertime", date);
		order.set("totolhour", totalhour);
		order.set("addressId", addressId);
		order.set("ordertype", ordertype);
		order.set("orderstate", 0);
		order.set("selNum1", Integer.parseInt(selNum1));
		order.set("selNum2", Integer.parseInt(selNum2));
		order.set("staff_no", staff_no);
		order.set("transaction_id", "");
		order.set("total_fee", String.valueOf(total_fee));
		order.set("time_end", "");
		order.set("create_time", create_time);
		order.save();
		
		Object out_trade_no_temp=JFinal.me().getServletContext().getAttribute("newOrderId");
		if(out_trade_no_temp==null||"0".equals(out_trade_no_temp)){
			JFinal.me().getServletContext().setAttribute("newOrderId", out_trade_no);
		}else {
			out_trade_no_temp=out_trade_no_temp+","+out_trade_no;
			JFinal.me().getServletContext().setAttribute("newOrderId", out_trade_no_temp);
		}
		
		
		
		setAttr("order", order);
		setAttr("openId", openId);
		render("/front/newOrderFinish.jsp");
	}
	
	/**
	 * 计算总费用
	 */
	public int calTotalFee(int orderType,int num1,int num2) {
		int total_fee=0;
		if(orderType==1){
			total_fee=35*num1;
		}else if(orderType==2) {
			total_fee=50*num1;
		}else if(orderType==3) {
			total_fee=5*num1+8*num2;
		}else if(orderType==4) {
			total_fee=120*num1+150*num2;
		}else if(orderType==5) {
			total_fee=180*num1;
		}else if(orderType==6) {
			total_fee=140*num1+80*num2;
		}else if(orderType==7) {
			total_fee=120*num1+160*num2;
		}
		return total_fee;
	}
	
	public void addressAdd() {
		setAttr("ordertype", getPara("ordertype"));
		render("/front/address_add.jsp");
	}
	
	public void toOrderFinish() {
		String out_trade_no=getPara("out_trade_no");
		Order order=Order.dao.getOrderByOut_trade_no(out_trade_no);
		setAttr("order", order);
		render("/front/newOrderFinish.jsp");
	}
	
	
}
