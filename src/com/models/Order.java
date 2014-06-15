package com.models;

import java.io.Serializable;
import java.util.Date;

public class Order implements Serializable {
	private int OrderId ;//订单id
	private Date payTime;//下单时间
	private float sumMoney;//订单总额
	private Boolean payIf;//是否
	private Boolean deliverIf;//是否发货
	private Boolean makeSureIf;//是否确认
	private User user;//用户id【多对一】
	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getOrderId() {
		return OrderId;
	}
	public void setOrderId(int orderId) {
		OrderId = orderId;
	}
	public Date getPayTime() {
		return payTime;
	}
	public void setPayTime(Date payTime) {
		this.payTime = payTime;
	}
	public float getSumMoney() {
		return sumMoney;
	}
	public void setSumMoney(float sumMoney) {
		this.sumMoney = sumMoney;
	}
	public Boolean getPayIf() {
		return payIf;
	}
	public void setPayIf(Boolean payIf) {
		this.payIf = payIf;
	}
	public Boolean getDeliverIf() {
		return deliverIf;
	}
	public void setDeliverIf(Boolean deliverIf) {
		this.deliverIf = deliverIf;
	}
	public Boolean getMakeSureIf() {
		return makeSureIf;
	}
	public void setMakeSureIf(Boolean makeSureIf) {
		this.makeSureIf = makeSureIf;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@Override
	public String toString() {
		return "Order [OrderId=" + OrderId + ", payTime=" + payTime
				+ ", sumMoney=" + sumMoney + ", payIf=" + payIf
				+ ", deliverIf=" + deliverIf + ", makeSureIf=" + makeSureIf
				+ ", user=" + user + "]";
	}
	
}
