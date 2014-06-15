package com.actions.hyl;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.dao.hyl.address.AddressManger;
import com.dao.hyl.user.UserManager;
import com.models.Address;
import com.models.User;
import com.opensymphony.xwork2.ActionSupport;

public class AddressAction extends ActionSupport implements ServletRequestAware {
	 
	 private HttpServletRequest request;
	 private HttpSession session;
	 private ServletContext application;
	 
	 private Address address;
	 private AddressManger am;
	 private UserManager um;
	 private int userId;
	 private int addressid;
	
	 public String add(){
		 System.out.println(address);
		 User user = um.findUserById(userId);
		 address.setUser(user);
		 am.add(address);
		 List<Address> list=am.findAll(user.getUserId());
		 session.setAttribute("addresslist", list);
		 return SUCCESS;
	 }
	
	 public String delete(){
		 am.delete(addressid);
		 List<Address> list=am.findAll(userId);
		 session.setAttribute("addresslist", list);
		 return SUCCESS;
	 }
	 
	 public String update(){
		 Address address = am.findByID(addressid);
		 session.setAttribute("myaddress", address);
		 List<Address> list=am.findAll(userId);
		 session.setAttribute("addresslist", list);
		 return SUCCESS;
	 }

	 public String update2(){
		 address.setAddressId(addressid);
		 User user = um.findUserById(userId);
		 address.setUser(user);
		 am.update(address);
		 List<Address> list=am.findAll(userId);
		 session.setAttribute("addresslist", list);
		 return SUCCESS;
	 }
	 
		public String execute() throws Exception {
			System.out.println(userId);
			List<Address> list=am.findAll(userId);
			session.setAttribute("addresslist", list);
			return SUCCESS;
		}
		
		
	public Address getAddress() {
		return address;
	}


	public void setAddress(Address address) {
		this.address = address;
	}


	public void setAm(AddressManger am) {
		this.am = am;
	}


	public void setUm(UserManager um) {
		this.um = um;
	}


	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
		this.session = request.getSession();
		this.application = session.getServletContext();
	}


	public void setUserId(int userId) {
		this.userId = userId;
	}

	public void setAddressid(int addressid) {
		this.addressid = addressid;
	}
	
	
}
