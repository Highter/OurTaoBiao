package com.models;

import java.io.Serializable;
import java.util.Date;
public class User implements Serializable {
	private int userId;//�û�id
	private String userName;//�û���
	private String passWord;//����
	private String MSN;//MSN
	private String qq;//qq
	private String officePhone;//�칫�ҵ绰
	private String familyPhone;//��ͥ�绰
	private String cellPhone;//�ֻ�
	private String email;//����
	private String passTip;//������ʾ
	private String passAnswer;//������ʾ��
	private Date lastLoginTime;//��һ�ε�¼ʱ��
	private float balance;//�ʺ����
	private float consume;//�ۼ�����
	private String level;//��Ա����
	private int role;// ��ɫ
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	


	public User(int userId, String userName, String passWord, String mSN,
			String qq, String officePhone, String familyPhone,
			String cellPhone, String email, String passTip, String passAnswer,
			Date lastLoginTime, float balance, float consume, String level,
			int role) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.passWord = passWord;
		MSN = mSN;
		this.qq = qq;
		this.officePhone = officePhone;
		this.familyPhone = familyPhone;
		this.cellPhone = cellPhone;
		this.email = email;
		this.passTip = passTip;
		this.passAnswer = passAnswer;
		this.lastLoginTime = lastLoginTime;
		this.balance = balance;
		this.consume = consume;
		this.level = level;
		this.role = role;
	}



	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	public String getMSN() {
		return MSN;
	}
	public void setMSN(String mSN) {
		MSN = mSN;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	public String getOfficePhone() {
		return officePhone;
	}
	public void setOfficePhone(String officePhone) {
		this.officePhone = officePhone;
	}
	public String getFamilyPhone() {
		return familyPhone;
	}
	public void setFamilyPhone(String familyPhone) {
		this.familyPhone = familyPhone;
	}
	public String getCellPhone() {
		return cellPhone;
	}
	public void setCellPhone(String cellPhone) {
		this.cellPhone = cellPhone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassTip() {
		return passTip;
	}
	public void setPassTip(String passTip) {
		this.passTip = passTip;
	}
	public String getPassAnswer() {
		return passAnswer;
	}
	public void setPassAnswer(String passAnswer) {
		this.passAnswer = passAnswer;
	}
	public Date getLastLoginTime() {
		return lastLoginTime;
	}
	public void setLastLoginTime(Date lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}
	public float getBalance() {
		return balance;
	}
	public void setBalance(float balance) {
		this.balance = balance;
	}
	public float getConsume() {
		return consume;
	}
	public void setConsume(float consume) {
		this.consume = consume;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}



	public int getRole() {
		return role;
	}



	public void setRole(int role) {
		this.role = role;
	}



	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName
				+ ", passWord=" + passWord + ", MSN=" + MSN + ", qq=" + qq
				+ ", officePhone=" + officePhone + ", familyPhone="
				+ familyPhone + ", cellPhone=" + cellPhone + ", email=" + email
				+ ", passTip=" + passTip + ", passAnswer=" + passAnswer
				+ ", lastLoginTime=" + lastLoginTime + ", balance=" + balance
				+ ", consume=" + consume + ", level=" + level + ", role="
				+ role + "]";
	}

}
