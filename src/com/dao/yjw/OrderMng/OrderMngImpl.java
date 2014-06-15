package com.dao.yjw.OrderMng;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;


import com.models.Order;
import com.models.OrderDetail;

public class OrderMngImpl extends HibernateDaoSupport implements OrderMng{

	@Override
	public List<OrderDetail> getOdById(int orderId) {
		// TODO Auto-generated method stub
		List<OrderDetail> ods = new ArrayList<OrderDetail>();
		String hql = "from OrderDetail where order.OrderId=?";
		ods = this.getHibernateTemplate().find(hql,orderId);
		return ods; 
	}

	@Override
	public List<Order> getAllOrder() {
		// TODO Auto-generated method stub
		String hql = "from Order";
		List<Order> orders = new ArrayList<Order>();
		orders = this.getHibernateTemplate().find(hql);
		return orders;
	}

	@Override
	public boolean makeDeliver(int orderId) {
		// TODO Auto-generated method stub
		Order order = this.getHibernateTemplate().get(Order.class, orderId);
		if(order != null){
			order.setDeliverIf(true);
			this.getHibernateTemplate().update(order);
			return true;
		}else{
			return false;
		}
	}

	@Override
	public void setSMoney(int orderId) {
		// TODO Auto-generated method stub
		Order order = this.getHibernateTemplate().get(Order.class, orderId);
		if(order != null){
			order.setSumMoney(-1);
			this.getHibernateTemplate().update(order);
		}
	}

	@Override
	public Order getOrderById(int orderId) {
		// TODO Auto-generated method stub
		Order order = this.getHibernateTemplate().get(Order.class, orderId);
		if(order != null){
			this.getHibernateTemplate().update(order);
			return order;
		}else{
			return null;
		}
	}
	
	/*public static void main(String[] args) {
		
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		OrderMng or = (OrderMng)ac.getBean("OrderMngImpl");
//		System.out.println(or.getAllOrder());
		System.out.println(or.getOdById(1));
	}*/

}
