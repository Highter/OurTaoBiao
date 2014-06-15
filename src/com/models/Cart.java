package com.models;

import java.io.Serializable;

public class Cart implements Serializable {
	private int userId;
	private int count;
	private int commodityId;


	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getCommodityId() {
		return commodityId;
	}

	public void setCommodityId(int commodityId) {
		this.commodityId = commodityId;
	}


	public Cart() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Cart(int userId, int count, int commodityId) {
		super();
		this.userId = userId;
		this.count = count;
		this.commodityId = commodityId;
	}

	@Override
	public String toString() {
		return "Cart [userId=" + userId + ", count=" + count + ", commodityId="
				+ commodityId + "]";
	}
	
}
