package com.dao.hyl.order;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import sun.reflect.generics.tree.Tree;

import com.dao.hyl.address.AddressManger;
import com.models.Address;
import com.models.Order;
import com.models.OrderDetail;
import com.models.User;

public class OrderManagerImpl extends HibernateDaoSupport implements OrderManager {

	public List<Order> findAll(int userID) {
		List<Order> list = null;
		String hql = "from Order  where user.userId=?";
		HibernateTemplate ht=this.getHibernateTemplate();
		list = ht.find(hql, new Object[]{userID});
//		list = ht.find(hql,userID);
		return list;
	}
	
	@Override
	public boolean add(Order order) {
		this.getHibernateTemplate().save(order);
		return true;
	}
//	public static void main(String[] args) {
//		OrderManager om = null;
//		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
//		om = (OrderManager) ac.getBean("OrderManager");
//		
//		Order o = new Order();
//		o.setDeliverIf(true);
//		o.setMakeSureIf(true);
//		o.setPayIf(true);
//		o.setPayTime(new Date());
//		o.setSumMoney(3000);
//		User u = new User();
//		u.setUserId(1);
//		o.setUser(u);
//		om.add(o);
//		List<Order> list = new ArrayList<Order>();
//		list = om.findAll(1);
//		System.out.println(list.size()+"   "+list);
//
//	}
//

	@Override
	public boolean delete(int ID) {
		HibernateTemplate ht=this.getHibernateTemplate();
		Order o = ht.get(Order.class, ID);
		ht.delete(o);
		return true;
	}

	@Override
	public List<OrderDetail> findAllOD(int orderId) {
		List<OrderDetail> list = null;
		String hql = "from OrderDetail where order.OrderId=?";
		list = this.getHibernateTemplate().find(hql,orderId);
		System.out.println("订单明细list的大小"+list.size());
		System.out.println(list);
		return list;
	}

	
}
