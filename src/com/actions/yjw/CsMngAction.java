package com.actions.yjw;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;


import com.dao.yjw.CsMng.CsMng;
import com.models.User;
import com.opensymphony.xwork2.ActionSupport;


public class CsMngAction extends ActionSupport implements ServletRequestAware{
	
	private HttpServletRequest request;
	private HttpSession session;
	private ServletContext application;
	
	private User user;
	private CsMng cm;
	private int userId;
//	private int role;
	
	//改变角色
	public String change0U(){
		cm.changeTo0(userId);
		List<User> cusList = cm.getAllCS(1);
		session.setAttribute("cusList", cusList);
		return SUCCESS;
	}
	
	//删除客服
	public String dropU(){
		cm.dropCS(userId);
//		System.out.println("删除成功");
		List<User> cusList = cm.getAllCS(1);
		session.setAttribute("cusList", cusList);
		return SUCCESS;
	}
	
	//查看客服信息
	public String lookU(){
		User u = cm.getCSById(userId);
		if(u!=null){
			session.setAttribute("cus", u);
		}
//		System.out.println(u);
		return "lookU";
	}
	
	//显示所有的客服
	public String getAllU(){
		List<User> cusList = cm.getAllCS(1);
		session.setAttribute("cusList", cusList);
		return SUCCESS;
	}
	
	public String execute() throws Exception{
		return SUCCESS;
	}
	
	@Override
	public void setServletRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
		this.request = request;
		this.session = request.getSession();
		this.application = session.getServletContext();
	}
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public CsMng getCm() {
		return cm;
	}

	public void setCm(CsMng cm) {
		this.cm = cm;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	/*public int getRole() {
		return role;
	}

	public void setRole(int role) {
		this.role = role;
	}*/
	
}
