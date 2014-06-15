package com.models;

import java.io.Serializable;

public class Power implements Serializable{
	
	//订单模块 4
	private int powerId;//订单权限表ID
	private String looOder;//查看订单
	private String lookOD;//查看订单明细
	private String OhutDown;//关闭订单
	
	//品牌模块 4
	private String addBd;//增加品牌
	private String delBd;//删除品牌
	private String upBd;//更新品牌
	private String looBd;//查看品牌
	
	//品牌系列模块 3
	private String addBdS;//增加品牌系列
	private String delBdS;//删除品牌系列
	private String changeBdS;//更新品牌系列
	
	//商品管理模块 3
	private String addCom;//增加商品
	private String delCom;//删除商品
	private String look_updCom;//查看和修改
	
	//用户模块 3
	private String delU;//删除用户
	private String lookU;//查看用户
	private String changeU;//更改角色
	
	//留言模块 1
	private String delMsg;//删除留言
	
	private User user;//多对一--用户id
	public Power() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getPowerId() {
		return powerId;
	}
	public void setPowerId(int powerId) {
		this.powerId = powerId;
	}
	public String getLooOder() {
		return looOder;
	}
	public void setLooOder(String looOder) {
		this.looOder = looOder;
	}
	public String getLookOD() {
		return lookOD;
	}
	public void setLookOD(String lookOD) {
		this.lookOD = lookOD;
	}
	public String getOhutDown() {
		return OhutDown;
	}
	public void setOhutDown(String ohutDown) {
		OhutDown = ohutDown;
	}
	public String getAddBd() {
		return addBd;
	}
	public void setAddBd(String addBd) {
		this.addBd = addBd;
	}
	public String getDelBd() {
		return delBd;
	}
	public void setDelBd(String delBd) {
		this.delBd = delBd;
	}
	public String getUpBd() {
		return upBd;
	}
	public void setUpBd(String upBd) {
		this.upBd = upBd;
	}
	public String getLooBd() {
		return looBd;
	}
	public void setLooBd(String looBd) {
		this.looBd = looBd;
	}
	public String getAddBdS() {
		return addBdS;
	}
	public void setAddBdS(String addBdS) {
		this.addBdS = addBdS;
	}
	public String getDelBdS() {
		return delBdS;
	}
	public void setDelBdS(String delBdS) {
		this.delBdS = delBdS;
	}
	public String getChangeBdS() {
		return changeBdS;
	}
	public void setChangeBdS(String changeBdS) {
		this.changeBdS = changeBdS;
	}
	public String getAddCom() {
		return addCom;
	}
	public void setAddCom(String addCom) {
		this.addCom = addCom;
	}
	public String getDelCom() {
		return delCom;
	}
	public void setDelCom(String delCom) {
		this.delCom = delCom;
	}
	public String getLook_updCom() {
		return look_updCom;
	}
	public void setLook_updCom(String look_updCom) {
		this.look_updCom = look_updCom;
	}
	public String getDelU() {
		return delU;
	}
	public void setDelU(String delU) {
		this.delU = delU;
	}
	public String getLookU() {
		return lookU;
	}
	public void setLookU(String lookU) {
		this.lookU = lookU;
	}
	public String getChangeU() {
		return changeU;
	}
	public void setChangeU(String changeU) {
		this.changeU = changeU;
	}
	public String getDelMsg() {
		return delMsg;
	}
	public void setDelMsg(String delMsg) {
		this.delMsg = delMsg;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@Override
	public String toString() {
		return "Power [powerId=" + powerId + ", looOder=" + looOder
				+ ", lookOD=" + lookOD + ", OhutDown=" + OhutDown + ", addBd="
				+ addBd + ", delBd=" + delBd + ", upBd=" + upBd + ", looBd="
				+ looBd + ", addBdS=" + addBdS + ", delBdS=" + delBdS
				+ ", changeBdS=" + changeBdS + ", addCom=" + addCom
				+ ", delCom=" + delCom + ", look_updCom=" + look_updCom
				+ ", delU=" + delU + ", lookU=" + lookU + ", changeU="
				+ changeU + ", delMsg=" + delMsg + ", user=" + user + "]";
	}
}
