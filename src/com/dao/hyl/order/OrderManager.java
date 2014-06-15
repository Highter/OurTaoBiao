package com.dao.hyl.order;

import java.util.List;

import com.models.Order;
import com.models.OrderDetail;

public interface OrderManager {
	public List<Order> findAll(int userId);
	public boolean add(Order order);
	public boolean delete(int ID);
	public List<OrderDetail> findAllOD(int orderId);
}
