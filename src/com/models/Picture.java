package com.models;

import java.io.Serializable;

public class Picture implements Serializable{
	private int pictureId;//ͼƬid
	private String picPath;//ͼƬ·��
	private String picIntro;//ͼƬ����
	private Boolean picDefault;//�Ƿ���Ĭ��
	private Commodity commodity;//��ƷId�����һ��
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
