package com.actions.ztw.homePake;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.dao.ztw.commodity.ICommodityDao;
import com.dao.ztw.picture.IPictDao;
import com.models.Commodity;
import com.models.Picture;
import com.opensymphony.xwork2.ActionSupport;

public class HeatCommodityAction extends ActionSupport implements RequestAware,SessionAware,ApplicationAware{
	private ICommodityDao commoDao;
	private IPictDao pictDao;
	private Map<String, Object> application;
	private Map<String, Object> session;
	private Map<String, Object> request;
	
	public String CommoBySaleNum(){
		List<Commodity> commohunmanNum = commoDao.getCommodityBySaleNum(0, 3, "hunmanNum");
		List<Picture> pichunmanNum = new ArrayList<Picture>();
		
		List<Commodity> commoSaleNum = commoDao.getCommodityBySaleNum(0, 3, "saleNum");
		List<Picture> picSaleNum = new ArrayList<Picture>();
		
		List<Commodity> commoSaleDate = commoDao.getCommodityBySaleNum(0, 3, "onSaleTime");
		List<Picture> picSaleDate = new ArrayList<Picture>();
		
		System.out.println("commoNewDate的元素个数："+commoSaleDate.size());
		if(commoSaleDate!=null&&commoSaleDate.size()>0){
			for(Commodity c:commoSaleDate){
				System.out.println("id："+c.getCommodityId());
				Picture p =this.pictDao.getDefaultPict(c.getCommodityId());
				System.out.println(p);
				picSaleDate.add(p);
			}
			this.session.put("commoSaleDate", commoSaleDate);
			this.session.put("picSaleDate", picSaleDate);

		}
		
		if(commohunmanNum!=null&&commohunmanNum.size()>0){
			for(Commodity c:commohunmanNum){
				Picture p =this.pictDao.getDefaultPict(c.getCommodityId());
				pichunmanNum.add(p);
			}
			this.session.put("commohunmanNum", commohunmanNum);
			this.session.put("pichunmanNum", pichunmanNum);
		}
		
		if(commoSaleNum!=null&&commoSaleNum.size()>0){
			for(Commodity c:commoSaleNum){
				Picture p =this.pictDao.getDefaultPict(c.getCommodityId());
				picSaleNum.add(p);
			}
			
			this.session.put("commoSaleNum", commoSaleNum);
			this.session.put("picSaleNum", picSaleNum);
			return SUCCESS;
		}
		return ERROR;
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
	
	public void setPictDao(IPictDao pictDao) {
		this.pictDao = pictDao;
	}

	public void  setCommoDao(ICommodityDao commoDao){
		this.commoDao = commoDao;
	}
}
 