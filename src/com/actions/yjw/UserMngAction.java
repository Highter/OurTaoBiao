package com.actions.yjw;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.dao.yjw.UserMng.UserMng;
import com.models.User;
import com.opensymphony.xwork2.ActionSupport;

public class UserMngAction extends ActionSupport implements ServletRequestAware{
	 
	private HttpServletRequest request;
	private HttpSession session;
	private ServletContext application;
	
	private User user;
	private UserMng userM;
	private int userId;
	
	//改变角色
	public String changeTo1(){
		userM.changeTo1(userId);
		List<User> userMList = userM.getAllUser(0);
		session.setAttribute("userMList", userMList);
		return SUCCESS;
	}
	//删除用户
	public String drop0(){
		userM.dropUser(userId);
		List<User> userMList = userM.getAllUser(0);
		session.setAttribute("userMList", userMList);
		return SUCCESS;
	}
	//查看用户信息
	public String look0(){
		User user = userM.getUserById(userId);
		if(user != null){
			session.setAttribute("user1", user);
		}
		return "look1";
	}
	//查看所有的用户
	public String getAll0(){
		List<User> userMList = userM.getAllUser(0);
		session.setAttribute("userMList", userMList);
		return SUCCESS;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return super.execute();
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

	public UserMng getUserM() {
		return userM;
	}

	public void setUserM(UserMng userM) {
		this.userM = userM;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}
}
