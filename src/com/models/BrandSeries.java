package com.models;

import java.io.Serializable;

public class BrandSeries implements Serializable{
	private int brandSeriesId;//Ʒ��ϵ��
	private String brandSeriesName;//Ʒ����
	private String brandSeriesIntro;//ϵ������
	private Brand brand;//Ʒ��Id�����һ��
	
	
	public BrandSeries() {
		super();
		// TODO Auto-generated constructor stub
	}


	public int getBrandSeriesId() {
		return brandSeriesId;
	}


	public void setBrandSeriesId(int brandSeriesId) {
		this.brandSeriesId = brandSeriesId;
	}


	public String getBrandSeriesName() {
		return brandSeriesName;
	}


	public void setBrandSeriesName(String brandSeriesName) {
		this.brandSeriesName = brandSeriesName;
	}


	public String getBrandSeriesIntro() {
		return brandSeriesIntro;
	}


	public void setBrandSeriesIntro(String brandSeriesIntro) {
		this.brandSeriesIntro = brandSeriesIntro;
	}


	public Brand getBrand() {
		return brand;
	}


	public void setBrand(Brand brand) {
		this.brand = brand;
	}


	@Override
	public String toString() {
		return "BrandSeries [brandSeriesId=" + brandSeriesId
				+ ", brandSeriesName=" + brandSeriesName
				+ ", brandSeriesIntro=" + brandSeriesIntro + ", brand=" + brand
				+ "]";
	}
	
}
