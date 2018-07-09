package com.javen.model;

import java.util.Date;
import java.util.List;

import com.jfinal.plugin.activerecord.Model;

public class Address extends Model<Address>{
	private static final long serialVersionUID = 2387542071731521827L;
	public static final Address dao=new Address();
	
	
	/**	
	 * @param transaction_id
	 * @returnf
	 */
	public List<Address> getAllByOpenId(String openId){
		return dao.find("select * from t_address where openId=? order by createTime desc",openId);
	}
	
	public Address getbyId(String addressId){
		return dao.findFirst("select * from t_address where id=? ",addressId);
	}
	
	public Address getDefault(String openId){
		return dao.findFirst("select * from t_address where defaultVal=1 and openId=?",openId);
	}
	
	public void saveAddress(String phoneNum,String name,String address,String openId){
		Address obj=new Address();
		obj.set("address", address);
		obj.set("openId",openId);
		obj.set("name", name);
		obj.set("phoneNum",phoneNum);
		obj.set("createTime", new Date());
		obj.save();
	}

}
