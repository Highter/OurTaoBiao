package com.Junit;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import com.dao.hyl.order.OrderManager;
import com.dao.hyl.order.OrderManagerImpl;
import com.models.Order;

public class mytest {

	@Test
	public void test() {
		fail("Not yet implemented");
	}
	
	@Test
	public void mytest(){
		OrderManager om = new OrderManagerImpl();
		List<Order> list = new ArrayList<Order>();
		list = om.findAll(1);
		System.out.println(list.size()+"   "+list);
	}

}
