package com.models;

import java.io.Serializable;

public class Power implements Serializable{
	
	//����ģ�� 4
	private int powerId;//����Ȩ�ޱ�ID
	private String looOder;//�鿴����
	private String lookOD;//�鿴������ϸ
	private String OhutDown;//�رն���
	
	//Ʒ��ģ�� 4
	private String addBd;//����Ʒ��
	private String delBd;//ɾ��Ʒ��
	private String upBd;//����Ʒ��
	private String looBd;//�鿴Ʒ��
	
	//Ʒ��ϵ��ģ�� 3
	private String addBdS;//����Ʒ��ϵ��
	private String delBdS;//ɾ��Ʒ��ϵ��
	private String changeBdS;//����Ʒ��ϵ��
	
	//��Ʒ����ģ�� 3
	private String addCom;//������Ʒ
	private String delCom;//ɾ����Ʒ
	private String look_updCom;//�鿴���޸�
	
	//�û�ģ�� 3
	private String delU;//ɾ���û�
	private String lookU;//�鿴�û�
	private String changeU;//���Ľ�ɫ
	
	//����ģ�� 1
	private String delMsg;//ɾ������
	
	private User user;//���һ--�û�id
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
