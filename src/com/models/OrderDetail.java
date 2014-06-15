package com.models;

import java.io.Serializable;

public class OrderDetail implements Serializable{
	private int OrderDetailId;//��ϸid
	private String commodityName;//��Ʒ����
	private int commodityNum;//��Ʒ����
	private float price;//��Ʒ����
	private Commodity commodity;//��Ʒid��һ��һ��
	private Order order;//����id�����һ��
	public OrderDetail() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getOrderDetailId() {
		return OrderDetailId;
	}
	public void setOrderDetailId(int orderDetailId) {
		OrderDetailId = orderDetailId;
	}
	public String getCommodityName() {
		return commodityName;
	}
	public void setCommodityName(String commodityName) {
		this.commodityName = commodityName;
	}
	public int getCommodityNum() {
		return commodityNum;
	}
	public void setCommodityNum(int commodityNum) {
		this.commodityNum = commodityNum;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public Commodity getCommodity() {
		return commodity;
	}
	public void setCommodity(Commodity commodity) {
		this.commodity = commodity;
	}
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	@Override
	public String toString() {
		return "OrderDetail [OrderDetailId=" + OrderDetailId
				+ ", commodityName=" + commodityName + ", commodityNum="
				+ commodityNum + ", price=" + price + ", commodity="
				+ commodity + ", order=" + order + "]";
	}
	
}
