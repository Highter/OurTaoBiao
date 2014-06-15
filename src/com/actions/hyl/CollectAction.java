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
	private int commodityFavoritesId;//收藏夹Id
	private int commodityId;//商品ID
	
	private CollectManager cm;
	
	
	 //根据用户ID，拿出相对应的收藏夹，将收藏夹放入到session中
	public String execute() throws Exception {
		System.out.println("拿出userId为:"+userId+"的收藏夹商品");
		List<CommodityFavorites> list = cm.findAll(userId);
		System.out.println("收藏夹list："+list);
		session.setAttribute("colllist", list);
		return SUCCESS;
	}
	//根据commodities收藏商品Id，删除该收藏商品,再根据用户ID拿出新的收藏夹，并放入session中
	public String Delete(){
		System.out.println("删除commodityFavoritesId为:"+commodityFavoritesId+"的收藏夹商品");
		cm.delete(commodityFavoritesId);
		List<CommodityFavorites> list = cm.findAll(userId);
		session.setAttribute("colllist", list);
		return SUCCESS;
	}
	//根据commodities收藏商品Id，游览该收藏商品
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
