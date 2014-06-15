package com.actions.yjw;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.dao.yjw.PowerMng.PowerMngImpl;
import com.models.Power;
import com.opensymphony.xwork2.ActionSupport;

public class PowerMngAction extends ActionSupport implements ServletRequestAware{
	
	private HttpServletRequest request;
	private HttpSession session;
	private ServletContext application;
	
	private PowerMngImpl pmi;
	private int powerId;
	private int userId;
	private String looOder;
	private String lookOD;
	private String OhutDown;
	private Power power;
	
	//设置所有人的权限
	public String setAllValues(){
		pmi.setAllPower(looOder, lookOD, OhutDown);
		return "setValues";
	}
	
	//根据界面传来的权限值来设置权限
	public String setValues(){
		if(pmi.setPower(powerId, looOder, lookOD, OhutDown,userId)){
			return "setValues";
		}else{
			return "setFail";
		}
		
	}
	//跳转到增加权限的页面
	public String addValues(){
		power = pmi.getPowerById(userId);
		session.setAttribute("power", power);
		return "addValues";
	}
	
	@Override
	public void setServletRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
		this.request = request;
		this.session = request.getSession();
		this.application = session.getServletContext();
	}
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return SUCCESS;
	}

	public PowerMngImpl getPmi() {
		return pmi;
	}

	public void setPmi(PowerMngImpl pmi) {
		this.pmi = pmi;
	}

	public int getPowerId() {
		return powerId;
	}

	public void setPowerId(int powerId) {
		this.powerId = powerId;
	}
	
	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
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
	public Power getPower() {
		return power;
	}
	public void setPower(Power power) {
		this.power = power;
	}
	
}
