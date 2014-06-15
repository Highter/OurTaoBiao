package com.actions.ztw.homePake;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.dao.ztw.commodity.ICommodityDao;
import com.dao.ztw.picture.IPictDao;
import com.models.Cart;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class CartAction extends ActionSupport implements RequestAware,SessionAware,ApplicationAware,ModelDriven<Cart>{
	private Map<String, Object> application;
	private Map<String, Object> session;
	private Map<String, Object> request;
	
	private ICommodityDao commoDao;
	private IPictDao pictDao;
	
	private Cart cart = new Cart();
	private List<Cart> cartList;
	public void addCart(){
		boolean flag =false;
		cartList =(List<Cart>)session.get("cartList");
		if(cartList==null){
			 cartList = new ArrayList<Cart>();
		}
		for(Cart c :cartList){
			if(c.getUserId()==cart.getUserId()&&c.getCommodityId()==cart.getCommodityId()){
				c.setCount(cart.getCount()+c.getCount());
				flag = true;
				break;
			}
		}
		if(flag==false){
			cartList.add(cart);
		}
		session.put("cartList", cartList);
		
		
	}
	
	@Override
	public void setApplication(Map<String, Object> application) {
		// TODO Auto-generated method stub
		this.application = application;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		// TODO Auto-generated method stub
		this.session = session;
	}

	@Override
	public void setRequest(Map<String, Object> request) {
		// TODO Auto-generated method stub
		this.request = request;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	@Override
	public Cart getModel() {
		// TODO Auto-generated method stub
		return cart;
	}
	
	public void setCommoDao(ICommodityDao commoDao) {
		this.commoDao = commoDao;
	}

	public void setPictDao(IPictDao pictDao) {
		this.pictDao = pictDao;
	}

}
