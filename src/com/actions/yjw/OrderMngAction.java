package com.actions.yjw;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.dao.yjw.OrderMng.OrderMng;
import com.dao.yjw.PowerMng.PowerMngImpl;
import com.models.Order;
import com.models.OrderDetail;
import com.models.Power;
import com.models.User;
import com.opensymphony.xwork2.ActionSupport;

public class OrderMngAction extends ActionSupport implements ServletRequestAware{

	private HttpServletRequest request;
	private HttpSession session;
	private ServletContext application;
	
	private OrderMng orderM;
	private int orderId;
	
	//查看订单明细表
	public String getAllDOr(){
		List<OrderDetail> OrDetails = new ArrayList<OrderDetail>();
		OrDetails = orderM.getOdById(orderId);
		session.setAttribute("OrDetails", OrDetails);
		return "getAllDOr";
	}
	
	//确认发货
	public String makeDeliverOr(){
		orderM.makeDeliver(orderId);
		List<Order> orderMs = orderM.getAllOrder();
		session.setAttribute("orderMs", orderMs);
		return SUCCESS;
	}
	
	//取消交易
	public String consumeOr(){
		orderM.setSMoney(orderId);
		List<Order> orderMs = orderM.getAllOrder();
		session.setAttribute("orderMs", orderMs);
		return SUCCESS;
	}
	//显示所有的订单
	public String getAllOr(){
		List<Order> orderMs = orderM.getAllOrder();
		session.setAttribute("orderMs", orderMs);
		return SUCCESS;
	}
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return SUCCESS;
	}
	@Override
	public void setServletRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
		this.request = request;
		this.session = request.getSession();
		this.application = session.getServletContext();
	}
	public OrderMng getOrderM() {
		return orderM;
	}
	public void setOrderM(OrderMng orderM) {
		this.orderM = orderM;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

}
