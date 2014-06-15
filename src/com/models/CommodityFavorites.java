package com.models;

import java.io.Serializable;

public class CommodityFavorites implements Serializable{

	private int commodityFavoritesId;//收藏Id
	private Commodity commodities;//收藏商品Id
	private String commodityName;//收藏商品名字
	private float comFavoPrice;//收藏商品价格
	private User user;
	public CommodityFavorites() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getCommodityFavoritesId() {
		return commodityFavoritesId;
	}
	public void setCommodityFavoritesId(int commodityFavoritesId) {
		this.commodityFavoritesId = commodityFavoritesId;
	}
	public Commodity getCommodities() {
		return commodities;
	}
	public void setCommodities(Commodity commodities) {
		this.commodities = commodities;
	}
	public String getCommodityName() {
		return commodityName;
	}
	public void setCommodityName(String commodityName) {
		this.commodityName = commodityName;
	}
	public float getComFavoPrice() {
		return comFavoPrice;
	}
	public void setComFavoPrice(float comFavoPrice) {
		this.comFavoPrice = comFavoPrice;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@Override
	public String toString() {
		return "CommodityFavorites [commodityFavoritesId="
				+ commodityFavoritesId + ", commodities=" + commodities
				+ ", commodityName=" + commodityName + ", comFavoPrice="
				+ comFavoPrice + ", user=" + user + "]";
	}
	
}
