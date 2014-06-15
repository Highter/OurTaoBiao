package com.actions.hyl;

import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.dao.hyl.order.OrderManager;
import com.dao.hyl.user.UserManager;
import com.dao.hyl.user.UserManagerImpl;
import com.models.Order;
import com.models.OrderDetail;
import com.models.User;
import com.opensymphony.xwork2.ActionSupport;

public class OrderAction extends ActionSupport implements ServletRequestAware{
	
	private Order order;
	private OrderManager om;
	private int orderId;
	private int userId;
	private UserManager um ;
	
	private HttpServletRequest request;
	 private HttpSession session;
	 private ServletContext application;

	public String execute() throws Exception {
//		System.out.println("dddddddddd"+userId);
//		System.out.println(um);
//		User user=um.findUserById(userId);
//		System.out.println(user);
//		Order o = new Order();
//		o.setDeliverIf(true);
//		o.setMakeSureIf(true);
//		o.setPayIf(true);
//		o.setPayTime(new Date());
//		o.setSumMoney(3000);
//		o.setUser(user);
//		om.add(o);
	
		List<Order> list=om.findAll(userId);
		session.setAttribute("OrderList", list);
		return SUCCESS;
	}

	
	public String Delete(){
		om.delete(orderId);
		System.out.println("用户的ID!!!!!!!!!!!!!!!"+userId);
		List<Order> list=om.findAll(userId);
		session.setAttribute("OrderList", list);
		return SUCCESS;
	}
	
	//通过订单ID查询订单明细
	public String Look(){
		List<OrderDetail> list= null;
		list=om.findAllOD(orderId);
		System.out.println("订单明细："+list);
		session.setAttribute("OrderDetail", list);
		return "Look";
	}
	
	public void setOrder(Order order) {
		this.order = order;
	}

	public void setOm(OrderManager om) {
		this.om = om;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public int getUserId() {
		return userId;
	}


	public void setUserId(int userId) {
		this.userId = userId;
	}




	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
		this.session = request.getSession();
		this.application = session.getServletContext();
	}




	public void setUm(UserManager um) {
		this.um = um;
	}
	
	
	
}
