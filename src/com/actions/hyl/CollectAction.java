package com.actions.hyl;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.dao.hyl.collect.CollectManager;
import com.models.Commodity;
import com.models.CommodityFavorites;
import com.opensymphony.xwork2.ActionSupport;

public class CollectAction extends ActionSupport implements ServletRequestAware {

	private HttpServletRequest request;
	private HttpSession session;
	private ServletContext application;
	
	private int userId;
	private int commodityFavoritesId;//�ղؼ�Id
	private int commodityId;//��ƷID
	
	private CollectManager cm;
	
	
	 //�����û�ID���ó����Ӧ���ղؼУ����ղؼз��뵽session��
	public String execute() throws Exception {
		System.out.println("�ó�userIdΪ:"+userId+"���ղؼ���Ʒ");
		List<CommodityFavorites> list = cm.findAll(userId);
		System.out.println("�ղؼ�list��"+list);
		session.setAttribute("colllist", list);
		return SUCCESS;
	}
	//����commodities�ղ���ƷId��ɾ�����ղ���Ʒ,�ٸ����û�ID�ó��µ��ղؼУ�������session��
	public String Delete(){
		System.out.println("ɾ��commodityFavoritesIdΪ:"+commodityFavoritesId+"���ղؼ���Ʒ");
		cm.delete(commodityFavoritesId);
		List<CommodityFavorites> list = cm.findAll(userId);
		session.setAttribute("colllist", list);
		return SUCCESS;
	}
	//����commodities�ղ���ƷId���������ղ���Ʒ
	public String Look(){
		Commodity c = cm.look(commodityId);
		return SUCCESS;
	}
	
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
		this.session = request.getSession();
		this.application = session.getServletContext();
	}


	
	
	public void setCm(CollectManager cm) {
		this.cm = cm;
	}
	public int getUserId() {
		return userId;
	}


	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getCommodityFavoritesId() {
		return commodityFavoritesId;
	}
	public void setCommodityFavoritesId(int commodityFavoritesId) {
		this.commodityFavoritesId = commodityFavoritesId;
	}
	public int getCommodityId() {
		return commodityId;
	}
	public void setCommodityId(int commodityId) {
		this.commodityId = commodityId;
	}

}
