package com.models;

import java.io.Serializable;

public class Picture implements Serializable{
	private int pictureId;//图片id
	private String picPath;//图片路径
	private String picIntro;//图片描述
	private Boolean picDefault;//是否是默认
	private Commodity commodity;//商品Id【多对一】
	public Picture() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getPictureId() {
		return pictureId;
	}
	public void setPictureId(int pictureId) {
		this.pictureId = pictureId;
	}
	public String getPicPath() {
		return picPath;
	}
	public void setPicPath(String picPath) {
		this.picPath = picPath;
	}
	public String getPicIntro() {
		return picIntro;
	}
	public void setPicIntro(String picIntro) {
		this.picIntro = picIntro;
	}
	public Boolean getPicDefault() {
		return picDefault;
	}
	public void setPicDefault(Boolean picDefault) {
		this.picDefault = picDefault;
	}
	public Commodity getCommodity() {
		return commodity;
	}
	public void setCommodity(Commodity commodity) {
		this.commodity = commodity;
	}
	@Override
	public String toString() {
		return "Picture [pictureId=" + pictureId + ", picPath=" + picPath
				+ ", picIntro=" + picIntro + ", picDefault=" + picDefault
				+ ", commodity=" + commodity + "]";
	}
}
