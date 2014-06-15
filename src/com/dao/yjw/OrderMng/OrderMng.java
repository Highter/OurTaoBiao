package com.dao.yjw.OrderMng;

import java.util.List;

import com.models.Order;
import com.models.OrderDetail;

public interface OrderMng {
	//�鿴������ϸ
	public List<OrderDetail> getOdById(int orderId);
	//�鿴���еĶ���
	public List<Order> getAllOrder(); 
	//ȷ�Ϸ���
	public boolean makeDeliver(int orderId);
	//�رն���(���ý�ǮΪ����)
	public void setSMoney(int orderId);
	
	public Order getOrderById(int orderId);
}
