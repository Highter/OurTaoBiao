package com.models;

import java.io.Serializable;

public class OrderDetail implements Serializable{
	private int OrderDetailId;//明细id
	private String commodityName;//商品名字
	private int commodityNum;//商品数量
	private float price;//商品单价
	private Commodity commodity;//商品id【一对一】
	private Order order;//订单id【多对一】
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
