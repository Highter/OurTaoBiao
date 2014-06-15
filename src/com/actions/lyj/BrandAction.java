package com.actions.lyj;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import util.PageController;

import com.dao.lyj.brand.BrandManager;
import com.models.Brand;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;


public class BrandAction extends ActionSupport implements ModelDriven<Brand>, ServletRequestAware {

	 private HttpServletRequest request;
	 private HttpSession session;
	 private ServletContext application;
	 private Brand brand = new Brand();
	 
	 private BrandManager bm; 
	 private String  id;
	 
	 
	 public String init()
	 {
		 setPageBrand(0,8);
		 System.out.println("初始化");
		 return "SUCCESS";
	 }

	public String getId() {

		return id;
	}
	public String preUpdate()
	{
		String id = (String) request.getParameter("id");
		Brand brand = bm.findById(Integer.parseInt(id));
		session.setAttribute("lyj_update", brand);
		System.out.println("Brand"+brand);
		return "preUpdate";
	}
	public void setId(String id) {

		this.id = id;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		System.out.println("处理session");
		this.request = request;
		this.session = request.getSession();
		this.application = session.getServletContext();
		long counter = bm.getCounter();
		int intCounter = (int)counter;
		if(session.getAttribute("lyj_pageControl")==null)
		{
			
			session.setAttribute("lyj_pageControl", new PageController(intCounter,0,8));
			
		}

	}
	
	@Override
	public Brand getModel() {
		System.out.println("getModel");
		return brand;
	}
	
	public void setBm(BrandManager bm) {
		System.out.println("setbm");
		this.bm = bm;
	}
	public BrandManager getBm() {
		return bm;
	}

	public String nextPage()
	{
		PageController pc = (PageController)session.getAttribute("lyj_pageControl");
		pc.setCurrentPage(pc.getNextPage());
		int start = pc.getPageStartRow();
		int size = pc.getPageSize();
		System.out.println("pageSize"+size);
		this.setPageBrand(start, size);
		return "SUCCESS";
		
	}
	public String prePage()
	{

		PageController pc = (PageController)session.getAttribute("lyj_pageControl");
		pc.setCurrentPage(pc.getPreviousPage());
		int start = pc.getPageStartRow();
		int size = pc.getPageSize();
		System.out.println("pageSize"+size);
		this.setPageBrand(start, size);
		return "SUCCESS";
		
	}
	public String fristPage()
	{
		System.out.println("fristPage");
		PageController pc = (PageController) session.getAttribute("lyj_pageControl");
		pc.setCurrentPage(0);
		this.setPageBrand(0, pc.getPageSize());
		return "SUCCESS";
	}
	public String finalPage()
	{
		System.out.println("finalPage");
		PageController pc = (PageController) session.getAttribute("lyj_pageControl");
		pc.setCurrentPage(pc.getPageSize());
		this.setPageBrand(pc.getPageStartRow(), pc.getPageSize());
		return "SUCCESS";
	}
	public void setPageBrand(int start,int size)
	{
		List allBrand = bm.findPage(start, size);
		System.out.println(allBrand);
		session.setAttribute("lyj_allBrand", allBrand);
	}
	public String add()
	{

		//增加了记录，改变了记录总数，所以重新设定PageController、
		{
			long counter = bm.getCounter();
			int intCounter = (int)counter;
			session.setAttribute("lyj_pageControl", new PageController(intCounter,0,8));
		}

		
		setPageBrand(0,8);
		if(this.bm.add(this.brand))
		{
			session.setAttribute("lyj_brandFailMessage", null);
			
			PageController temp = (PageController) session.getAttribute("lyj_pageControl");
			PageController pc = new PageController(temp.getTotalRowsAmount()+1, temp.getCurrentPage(), temp.getPageSize());
			session.setAttribute("lyj_pageControl", pc);
			int start = pc.getPageStartRow();
			int size = pc.getPageSize();
			this.setPageBrand(start, size);
			
			return "SUCCESS";
		}else
		{
			session.setAttribute("lyj_brandFailMessage","品牌名称已经存在");
			return "SUCCESS";
		}
		
	}
	
	public String delete()
	{

		bm.delete(Integer.parseInt(id));
		//删除后更新分页控制器
	
		session.getAttribute("lyj_pageControl");
		
		PageController temp = (PageController)session.getAttribute("lyj_pageControl");
		PageController pc = new PageController(temp.getTotalRowsAmount()-1, temp.getCurrentPage(), temp.getPageSize());
		int start = pc.getPageStartRow();
		int size = pc.getPageSize();
		this.setPageBrand(start, size);
		
		return "SUCCESS";
	}
	
	public String update()
	{
		System.out.println("更新操作");
//		System.out.println("id"+id);
		System.out.println(brand);
		bm.update(brand);
		session.getAttribute("lyj_pageControl");
		
		PageController pc = (PageController)session.getAttribute("lyj_pageControl");
		
		int start = pc.getPageStartRow();
		int size = pc.getPageSize();
//		System.out.println("pageSize"+size);
		this.setPageBrand(start, size);
		return "SUCCESS";
	}
}
