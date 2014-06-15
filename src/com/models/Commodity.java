package com.models;

import java.io.Serializable;
import java.util.Date;

public class Commodity implements Serializable{
	private int commodityId;
	private String commodityName;//商品名字
	private String proPlace;//产地
	private String brandName;//品牌名字
	private String brandSeriesName;//品牌系列名字
	private String model;//型号
	private String style;//款式
	private String size;//尺寸
	private String thickness;//厚度
	private String chip;//机芯
	private String chipCategory;//机芯类别
	private String watchCase;//表壳
	private String dial;//表盘 
	private String cover;//表面
	private String watchband;//表带
	private String waterproof;//防水
	private String function;//功能;
	private String pack;//包装
	private float originalCost;//原价
	private float specialCost;//特价
	private Date onSaleTime;//上架时间
	private long hunmanNum;//人气
	private int saleNum;//销售量
	private String remarks;//备注
	private Brand brands;
	private BrandSeries brandSeries;
	public Commodity() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getCommodityId() {
		return commodityId;
	}
	public void setCommodityId(int commodityId) {
		this.commodityId = commodityId;
	}
	public String getCommodityName() {
		return commodityName;
	}
	public void setCommodityName(String commodityName) {
		this.commodityName = commodityName;
	}
	public String getProPlace() {
		return proPlace;
	}
	public void setProPlace(String proPlace) {
		this.proPlace = proPlace;
	}
	
	public String getBrandName() {
		return brandName;
	}
	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}
	public String getBrandSeriesName() {
		return brandSeriesName;
	}
	public void setBrandSeriesName(String brandSeriesName) {
		this.brandSeriesName = brandSeriesName;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getStyle() {
		return style;
	}
	public void setStyle(String style) {
		this.style = style;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getThickness() {
		return thickness;
	}
	public void setThickness(String thickness) {
		this.thickness = thickness;
	}
	public String getChip() {
		return chip;
	}
	public void setChip(String chip) {
		this.chip = chip;
	}
	public String getChipCategory() {
		return chipCategory;
	}
	public void setChipCategory(String chipCategory) {
		this.chipCategory = chipCategory;
	}
	public String getWatchCase() {
		return watchCase;
	}
	public void setWatchCase(String watchCase) {
		this.watchCase = watchCase;
	}
	public String getDial() {
		return dial;
	}
	public void setDial(String dial) {
		this.dial = dial;
	}
	public String getCover() {
		return cover;
	}
	public void setCover(String cover) {
		this.cover = cover;
	}
	public String getWatchband() {
		return watchband;
	}
	public void setWatchband(String watchband) {
		this.watchband = watchband;
	}
	public String getWaterproof() {
		return waterproof;
	}
	public void setWaterproof(String waterproof) {
		this.waterproof = waterproof;
	}
	public String getFunction() {
		return function;
	}
	public void setFunction(String function) {
		this.function = function;
	}
	public String getPack() {
		return pack;
	}
	public void setPack(String pack) {
		this.pack = pack;
	}
	public float getOriginalCost() {
		return originalCost;
	}
	public void setOriginalCost(float originalCost) {
		this.originalCost = originalCost;
	}
	public float getSpecialCost() {
		return specialCost;
	}
	public void setSpecialCost(float specialCost) {
		this.specialCost = specialCost;
	}
	public Date getOnSaleTime() {
		return onSaleTime;
	}
	public void setOnSaleTime(Date onSaleTime) {
		this.onSaleTime = onSaleTime;
	}
	public long getHunmanNum() {
		return hunmanNum;
	}
	public void setHunmanNum(long hunmanNum) {
		this.hunmanNum = hunmanNum;
	}
	public int getSaleNum() {
		return saleNum;
	}
	public void setSaleNum(int saleNum) {
		this.saleNum = saleNum;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public Brand getBrands() {
		return brands;
	}
	public void setBrands(Brand brands) {
		this.brands = brands;
	}
	public BrandSeries getBrandSeries() {
		return brandSeries;
	}
	public void setBrandSeries(BrandSeries brandSeries) {
		this.brandSeries = brandSeries;
	}
	@Override
	public String toString() {
		return "Commodity [commodityId=" + commodityId + ", commodityName="
				+ commodityName + ", proPlace=" + proPlace + ", brandName="
				+ brandName + ", brandSeriesName=" + brandSeriesName
				+ ", model=" + model + ", style=" + style + ", size=" + size
				+ ", thickness=" + thickness + ", chip=" + chip
				+ ", chipCategory=" + chipCategory + ", watchCase=" + watchCase
				+ ", dial=" + dial + ", cover=" + cover + ", watchband="
				+ watchband + ", waterproof=" + waterproof + ", function="
				+ function + ", pack=" + pack + ", originalCost="
				+ originalCost + ", specialCost=" + specialCost
				+ ", onSaleTime=" + onSaleTime + ", hunmanNum=" + hunmanNum
				+ ", saleNum=" + saleNum + ", remarks=" + remarks + ", brands="
				+ brands + ", brandSeries=" + brandSeries + "]";
	}
	
}
