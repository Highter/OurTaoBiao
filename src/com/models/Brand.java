package com.models;

import java.io.Serializable;

public class Brand implements Serializable{
	private int brandId;//Ʒ��ID
	private String brandName;//Ʒ����
	private String brandStory;//Ʒ�ƹ���
	private String brandLogo;//Ʒ��logo
	
	public Brand() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Brand(String brandName, String brandStory, String brandLogo) {
		super();
		this.brandName = brandName;
		this.brandStory = brandStory;
		this.brandLogo = brandLogo;
	}

	public Brand(int brandId, String brandName, String brandStory,
			String brandLogo) {
		super();
		this.brandId = brandId;
		this.brandName = brandName;
		this.brandStory = brandStory;
		this.brandLogo = brandLogo;
	}
	public int getBrandId() {
		return brandId;
	}
	public void setBrandId(int brandId) {
		this.brandId = brandId;
	}
	public String getBrandName() {
		return brandName;
	}
	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}
	public String getBrandStory() {
		return brandStory;
	}
	public void setBrandStory(String brandStory) {
		this.brandStory = brandStory;
	}
	public String getBrandLogo() {
		return brandLogo;
	}
	public void setBrandLogo(String brandLogo) {
		this.brandLogo = brandLogo;
	}
	@Override
	public String toString() {
		return "Brand [brandId=" + brandId + ", brandName=" + brandName
				+ ", brandStory=" + brandStory + ", brandLogo=" + brandLogo
				+ "]";
	}
	
}
