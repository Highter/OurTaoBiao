package com.dao.yjw.OrderMng;

import java.util.List;

import com.models.Order;
import com.models.OrderDetail;

public interface OrderMng {
	//查看订单明细
	public List<OrderDetail> getOdById(int orderId);
	//查看所有的订单
	public List<Order> getAllOrder(); 
	//确认发货
	public boolean makeDeliver(int orderId);
	//关闭订单(设置金钱为负的)
	public void setSMoney(int orderId);
	
	public Order getOrderById(int orderId);
}
