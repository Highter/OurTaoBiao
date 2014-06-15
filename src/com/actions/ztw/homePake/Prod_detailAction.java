package com.actions.ztw.homePake;

import java.util.Map;

import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.dao.ztw.commodity.ICommodityDao;
import com.dao.ztw.picture.IPictDao;
import com.models.Commodity;
import com.models.Picture;
import com.opensymphony.xwork2.ActionSupport;

public class Prod_detailAction extends ActionSupport implements RequestAware,SessionAware,ApplicationAware{
	private Map<String, Object> application;
	private Map<String, Object> session;
	private Map<String, Object> request;
	
	private ICommodityDao commoDao;
	private IPictDao pictDao;
	
	private int commodityId;

	public String detail(){
		 Commodity comm =commoDao.getCommById(commodityId);
		 if(comm!=null){
			Picture pic = pictDao.getDefaultPict(commodityId);
			this.session.put("comm", comm);
			this.session.put("pic", pic);
			return SUCCESS;
		 }
		
		return ERROR;
	}
	
	public void setCommodityId(int commodityId) {
		this.commodityId = commodityId;
	}
	
	public void setCommoDao(ICommodityDao commoDao) {
		this.commoDao = commoDao;
	}

	public void setPictDao(IPictDao pictDao) {
		this.pictDao = pictDao;
	}

	@Override
	public void setApplication(Map<String, Object> application) {
		// TODO Auto-generated method stub
		this.application = application;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		// TODO Auto-generated method stub
		this.session = session;
	}

	@Override
	public void setRequest(Map<String, Object> request) {
		// TODO Auto-generated method stub
		this.request = request;
	}

}
