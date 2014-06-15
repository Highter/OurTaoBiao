package com.models;

import java.io.Serializable;
import java.util.Date;

public class Address implements Serializable{
	
	private int addressId;//�ջ���ַid
	private String receiverName;//�ջ���
	private String provice;//ʡ
	private String city;//����
	private String section;//��
	private String address;//��ϸ��ַ
	private String email;//����
	private String telephone;//�绰
	private String cellphone;//�ֻ�
	private Date delliverTime;//����ͻ�ʱ��
	private Boolean addDefault;//�Ƿ�ΪĬ��
	private User user;
	public Address() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getAddressId() {
		return addressId;
	}
	public void setAddressId(int addressId) {
		this.addressId = addressId;
	}
	public String getReceiverName() {
		return receiverName;
	}
	public void setReceiverName(String receiverName) {
		this.receiverName = receiverName;
	}
	public String getProvice() {
		return provice;
	}
	public void setProvice(String provice) {
		this.provice = provice;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getSection() {
		return section;
	}
	public void setSection(String section) {
		this.section = section;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getCellphone() {
		return cellphone;
	}
	public void setCellphone(String cellphone) {
		this.cellphone = cellphone;
	}
	public Date getDelliverTime() {
		return delliverTime;
	}
	public void setDelliverTime(Date delliverTime) {
		this.delliverTime = delliverTime;
	}
	public Boolean getAddDefault() {
		return addDefault;
	}
	public void setAddDefault(Boolean addDefault) {
		this.addDefault = addDefault;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@Override
	public String toString() {
		return "Address [addressId=" + addressId + ", receiverName="
				+ receiverName + ", provice=" + provice + ", city=" + city
				+ ", section=" + section + ", address=" + address + ", email="
				+ email + ", telephone=" + telephone + ", cellphone="
				+ cellphone + ", delliverTime=" + delliverTime
				+ ", addDefault=" + addDefault + ", user=" + user + "]";
	}
	
}
