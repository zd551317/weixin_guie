package com.javen.model;

import java.util.List;

import com.jfinal.plugin.activerecord.Model;

/**
 * @author Javen
 * 2016年3月20日
 * 订单
 */
public class Order extends Model<Order> {
	private static final long serialVersionUID = 2387542071731521827L;
	public static final Order dao=new Order();
	
	/**
	 * 查询订单
	 * @param attach
	 * @param openId
	 * @return
	 */
	public Order getOrderByAttach(String attach,String openId){
		 return dao.findFirst("select * from orders where openId=? and attach like ? order by time_end desc",openId,"%\"courseId\":"+attach+"%");
	}
	
	
	/**	
	 * 根据订单号查询订单
	 * @param transaction_id
	 * @returnf
	 */
	public Order getOrderByTransactionId(String transaction_id){
		return dao.findFirst("select * from orders where transaction_id=?",transaction_id);
	}
	/**
	 * 根据OpenId查询订单
	 * @param openId
	 * @return
	 */
	public List<Order> getOrderByOpenId(String openId){
		return dao.find("select * from orders where openId=? order by create_time desc" ,openId);
	}

	/**
	 * 订单号
	 * @param out_trade_no
	 * @return
	 */
	public Order getOrderByOut_trade_no(String out_trade_no) {
		return dao.findFirst("select * from orders where out_trade_no=? ",out_trade_no);
	}
	
	/**
	 * 
	 * @param out_trade_no
	 * @return
	 */
	public Order getOrdersPe(String out_trade_no) {
		return dao.findFirst("select * from orders where out_trade_no=? ",out_trade_no);
	}
	
	
	
	
}
