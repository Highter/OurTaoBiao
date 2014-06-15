package com.actions.lyj;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import util.PageController;


import com.dao.lyj.brand.BrandManager;
import com.dao.lyj.brand.BrandManagerImpl;
import com.dao.lyj.brandseries.BrandSeriesManager;
import com.models.Brand;
import com.models.BrandSeries;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class BrandSeriesAction extends ActionSupport implements ModelDriven<BrandSeries>, ServletRequestAware {
	 private HttpServletRequest request;
	 private HttpSession session;
	 private ServletContext application;
	 private BrandSeries brandseries;

	 private BrandSeriesManager bsm;
	 private BrandManager bma;
	 
	 
	public BrandManager getBma() {
		return bma;
	}
	public void setBma(BrandManager bma) {
		this.bma = bma;
	}
	private String id;
	 
	 private String brandSeriesId;
	 private String brandSeriesName;
	 private String brandSeriesIntro;
	
	 private String brandId;
	 
	 public String getBrandId() {
		return brandId;
	}
	public void setBrandId(String brandId) {
		this.brandId = brandId;
	}
	public String add()
	 {
		 System.out.println("addbrandId"+brandId);
		 Brand bd = new Brand();
		 bd.setBrandId(Integer.parseInt(brandId));
		 BrandSeries bs = new BrandSeries();
		 bs.setBrand(bd);
		 bs.setBrandSeriesIntro(brandSeriesIntro);
		 bs.setBrandSeriesName(brandSeriesName);
		
//		 System.out.println(Integer.parseInt(brandId)+"         转化后的数值");
		
		
		 if(!bma.findByIdA(brandId))//存在问题
		 {
			 session.setAttribute("lyj_addMessage", "该品牌id不存在");
			 return "SUCCESS";
		 }
	    
		if (!bsm.add(bs)) {
		  session.setAttribute("lyj_addMessage", "该品牌系列名字已经存在");
		 }
		else
		{
			session.setAttribute("lyj_addMessage", "");
			
			PageController temp = (PageController) session.getAttribute("lyj_seriesPageControl");
			PageController pc = new PageController(temp.getTotalRowsAmount()+1, temp.getCurrentPage(), temp.getPageSize());
			session.setAttribute("lyj_seriesPageControl", pc);		
			int start = pc.getPageStartRow();
			int size = pc.getPageSize();
			this.setMessage(start, size);
		}


		return "SUCCESS";
	 }
	 public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public BrandSeriesManager getBsm() {
		return bsm;
	 }
	 public void setBsm(BrandSeriesManager bsm) {
		this.bsm = bsm;
	 }
	@Override
	public BrandSeries getModel() {
		System.out.println("获取model");
		return brandseries;
	}
	@Override
	public void setServletRequest(HttpServletRequest request) {
		System.out.println("request");
		this.request = request;
		this.session = request.getSession();
		this.application = session.getServletContext();
		long counter = bsm.getCounter();
		int intCounter = (int)counter;
		if(session.getAttribute("lyj_seriesPageControl")==null)
		{
			session.setAttribute("lyj_seriesPageControl", new PageController(intCounter, 0, 8));
		}
	}
	public String prePage()
	{
		PageController pc = (PageController) session.getAttribute("lyj_seriesPageControl");
		pc.setCurrentPage(pc.getPreviousPage());
		int start = pc.getPageStartRow();
		int size = pc.getPageSize();
		this.setMessage(start, size);
		return "SUCCESS";
	}
	public String nextPage()
	{
		PageController pc = (PageController) session.getAttribute("lyj_seriesPageControl");
		pc.setCurrentPage(pc.getNextPage());
		int start = pc.getPageStartRow();
		int size = pc.getPageSize();
		this.setMessage(start, size);
		return "SUCCESS";
	}
	public String fristPage()
	{
		PageController pc  = (PageController) session.getAttribute("lyj_seriesPageControl");
		pc.setCurrentPage(0);
		this.init();
		return "SUCCESS";
	}
	public String preUpdate()
	{
//		System.out.println("id"+this.id);
		System.out.println("boringpreupdate");
		BrandSeries bs = bsm.findById(Integer.parseInt(id));
		System.out.println(bs);
		session.setAttribute("lyj_boringupdate", bs);
		return "UPDATE";
	}

	public String update()
	{
		System.out.println("更新后的"+brandseries);
//		System.out.println(brandSeriesIntro);
		BrandSeries bs = bsm.findById(Integer.parseInt(brandSeriesId));
		bs.setBrandSeriesIntro(brandSeriesIntro);
		bs.setBrandSeriesName(brandSeriesName);
		bsm.update(bs);
		PageController pc = (PageController) session.getAttribute("lyj_seriesPageControl");
		int start = pc.getPageStartRow();
		int size = pc.getPageSize();
		this.setMessage(start, size);
		return "SUCCESS";
	}
	public String delete()
	{
		System.out.println("id"+this.id);
		System.out.println("delete");
		bsm.delete(Integer.parseInt(id));
		
		//页面控制，数据项减一
		PageController temp = (PageController) session.getAttribute("lyj_seriesPageControl");
		PageController pc = new PageController(temp.getTotalRowsAmount()-1, temp.getCurrentPage(), temp.getPageSize());
		session.setAttribute("lyj_seriesPageControl", pc);	
		
		int start = pc.getPageStartRow();
		int size = pc.getPageSize();
		this.setMessage(start, size);
		return "SUCCESS";
	}
	public String finalPage()
	{
		PageController pc  = (PageController) session.getAttribute("lyj_seriesPageControl");
		pc.setCurrentPage(pc.getTotalPages());
		int start = pc.getPageStartRow();
		int size= pc.getPageSize();
		this.setMessage(start, size);
		return "SUCCESS";
	}
	public String init()
	{
		System.out.println("brand中的init");
		setMessage(0,8);
		return "SUCCESS";
	}
	public void setMessage(int start,int size)
	{
		System.out.println("setMessage");
		List all = bsm.findPage(start, size);
		System.out.println(all);
		session.setAttribute("lyj_bsMessage", all);
		
	}
	public String getBrandSeriesId() {
		return brandSeriesId;
	}
	public void setBrandSeriesId(String brandSeriesId) {
		this.brandSeriesId = brandSeriesId;
	}
	public String getBrandSeriesName() {
		return brandSeriesName;
	}
	public void setBrandSeriesName(String brandSeriesName) {
		this.brandSeriesName = brandSeriesName;
	}
	public String getBrandSeriesIntro() {
		return brandSeriesIntro;
	}
	public void setBrandSeriesIntro(String brandSeriesIntro) {
		this.brandSeriesIntro = brandSeriesIntro;
	}
}
