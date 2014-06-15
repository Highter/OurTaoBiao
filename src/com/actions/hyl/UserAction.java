package com.actions.hyl;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;

import com.dao.hyl.user.UserManager;
import com.dao.yjw.PowerMng.PowerMngImpl;
import com.models.Power;
import com.models.User;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport implements ServletRequestAware{
	
	 private HttpServletRequest request;
	 private HttpSession session;
	 private ServletContext application;
	 
	 private User user;
	 private UserManager um;
	 private String lastLoginTime;
	 private String myrole;
	 private int userId;
	 private Power ppp;
	 private PowerMngImpl pll;
	 
	 public String login(){
		 //System.out.println(myrole);
		 int role= Integer.parseInt(myrole);
		 User myuser=um.findUserByUsername(user.getUserName());
		 if(role==0&&myuser.getRole()==0){
			 System.out.println("权限0");
			 this.getUserInfo(myuser);
			 return SUCCESS;
		 }else if(role==1&&myuser.getRole()==1){
			 System.out.println("权限1");
			 this.getUserInfo(myuser);
			 return "servicerole";
		 }else if(role==2 && myuser.getRole()==2){
			 System.out.println("权限2");
			 
			 //各种权限
			 //订单
			 ppp.setLookOD("1");
			 ppp.setLooOder("1");
			 ppp.setOhutDown("1");
			 //品牌
			 ppp.setAddBd("1");
			 ppp.setDelBd("1");
			 ppp.setLooBd("1");
			 ppp.setUpBd("1");
			 //品牌系列
			 ppp.setAddBdS("1");
			 ppp.setDelBdS("1");
			 ppp.setChangeBdS("1");
			 //商品
			 ppp.setAddCom("1");
			 ppp.setDelCom("1");
			 ppp.setLook_updCom("1");
			 
			 //用户模块
			 ppp.setDelU("1");
			 ppp.setLookU("1");
			 ppp.setChangeU("1");
			 
			 //留言
			 ppp.setDelMsg("1");
			 
			 this.getUserInfo(myuser);
			 return "managerrole";
		 }
		return "loginfaile";
	 }
	 
	 public void getUserInfo(User myuser){
		 Date date=myuser.getLastLoginTime();
		 SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		 lastLoginTime = sdf.format(date);
		 myuser.setLastLoginTime(new Date());
		 um.update(myuser);
//		 session.setAttribute("lastLoginTime", lastLoginTime);
//		 session.setAttribute("user", myuser);
		 ServletActionContext.getContext().getSession().put("lastLoginTime", lastLoginTime);
		 ServletActionContext.getContext().getSession().put("user", myuser);
		 System.out.println("在session中的lastLoginTime："+session.getAttribute("lastLoginTime")); 
		 System.out.println("在session中的myuser："+session.getAttribute("user"));
		 
		 //修改--获取权限表
		 ppp = pll.getPowerById(myuser.getUserId());
		 session.setAttribute("ppp", ppp);
		 System.out.println("pp:"+ppp);
		 
	 }
	 
	 
	 public String register(){
		 user.setLastLoginTime(new Date());
		 if(um.addUser(user)){
			//session.setAttribute("user", user);
			 ServletActionContext.getContext().getSession().put("user", user);
		 }
		 System.out.println("用户"+user.getUserName()+"注册成功，ID为"+user.getUserId());
		 return SUCCESS;
	 }
	 
	 public String update(){
		 user.setUserId(userId);
		 User myuser = um.findUserById(userId);
		 user.setUserName(myuser.getUserName());
		 user.setPassAnswer(myuser.getPassWord());
		 user.setBalance(myuser.getBalance());
		 user.setConsume(myuser.getConsume());
		 user.setLevel(myuser.getLevel());
		 user.setRole(myuser.getRole());
		 user.setLastLoginTime(myuser.getLastLoginTime());
		 um.update(user);
		 ServletActionContext.getContext().getSession().put("user", user);
		 return "update";
	 }
	 
	 
	public String execute() {
		
		return SUCCESS;
	}


	public void setServletRequest(HttpServletRequest request) {
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


	public void setUm(UserManager um) {
		this.um = um;
	}

	public String getMyrole() {
		return myrole;
	}

	public void setMyrole(String myrole) {
		this.myrole = myrole;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public Power getPpp() {
		return ppp;
	}

	public void setPpp(Power ppp) {
		this.ppp = ppp;
	}

	public PowerMngImpl getPll() {
		return pll;
	}

	public void setPll(PowerMngImpl pll) {
		this.pll = pll;
	}
	
}
