package com.actions.lyj;

import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.hibernate.Session;

import util.PageController;

import com.dao.lyj.brand.BrandManager;
import com.dao.lyj.brandseries.BrandSeriesManager;
import com.dao.lyj.commodity.CommodityManager;
import com.models.Brand;
import com.models.BrandSeries;
import com.models.Commodity;
import com.opensymphony.xwork2.ActionSupport;

public class CommodityAction extends ActionSupport implements  ServletRequestAware {
	private HttpServletRequest request;
	private HttpSession session;
	private ServletContext application;
	private CommodityManager cm;
	private BrandSeriesManager bsm;
	private BrandManager bm;
	private String id;
	
	private String commodityId;
	private String commodityName;//商品名字
	private String proPlace;//产地
	private String brandName;//品牌名字
	private String brandSeriesName;//品牌系列名字
	private String model;//型号
	private String style;//款式
	private String size;//尺寸
	private String thickness;//厚度
	private String chip;//机芯
	private String chipCategory;//机芯类别
	private String watchCase;//表壳
	private String dial;//表盘 
	private String cover;//表面
	private String watchband;//表带
	private String waterproof;//防水
	private String function;//功能;
	private String pack;//包装
	private String originalCost;//原价
	private String specialCost;//特价
	private String onSaleTime;//上架时间
	private String hunmanNum;//人气
	private String saleNum;//销售量
	private String remarks;//备注
	
	
	public  String add()
	{
		System.out.println("add");
	
		BrandSeries brands = bsm.findByName(brandSeriesName);
		if(brands==null)
		{
			session.setAttribute("lyj_addcomerror", "品牌系列不存在");
			return "SUCCESS";
		}
		
		Brand branda = bm.findByName(brandName);
		if(branda==null)
		{
			session.setAttribute("lyj_addcomerror", "该品牌不存在");
			return "SUCCESS";
		}
		
		Commodity com = new Commodity();
		
		int a = branda.getBrandId();
		int b = brands.getBrandSeriesId();
		
		//同一个session中只能有同一个di的一个对象
		
		branda = null;
		brands =null;
		
		Session dif = cm.different();
		Brand tempa = (Brand) dif.get(Brand.class, a);
		BrandSeries tempb = (BrandSeries) dif.get(BrandSeries.class, b);
		com.setBrands(tempa);
		com.setBrandSeries(tempb);
		
	
		
		com.setBrandName(brandName);
		com.setBrandSeriesName(brandSeriesName);
		com.setChipCategory(chipCategory);
		com.setCommodityName(commodityName);
		com.setCover(cover);
		com.setDial(dial);
		com.setDial(dial);
		com.setFunction(function);
		com.setModel(model);
		com.setPack(pack);
		com.setProPlace(proPlace);
		com.setRemarks(remarks);
		com.setSize(size);
		com.setStyle(style);
		com.setWatchband(watchband);
		com.setWatchCase(watchCase);
		com.setWaterproof(waterproof);
		com.setChip(chip);
		
		
		com.setHunmanNum(0);
		com.setOnSaleTime(new Date());
		com.setSaleNum(0);
		
		
		try {
			com.setSpecialCost(Float.parseFloat(specialCost));
			com.setOriginalCost(Float.parseFloat(originalCost));
		} catch (NumberFormatException e) {
			session.setAttribute("lyj_addcomerror", "数值异常");
			return "SUCCESS";
		}
		
		try {
			cm.add(com);
		} catch (Exception e) {
			
			session.setAttribute("lyj_addcomerror", "某些字段超过限制");
			return "SUCCESS";
		}
		
		//添加后更新页面
		PageController temp  = (PageController) session.getAttribute("lyj_commodityPageControl");
		PageController pc = new PageController(temp.getTotalRowsAmount()+1, temp.getCurrentPage(), temp.getPageSize());
		session.setAttribute("lyj_commodityPageControl", pc);
		int start = pc.getPageStartRow();
		int size = pc.getPageSize();
		this.setPageMessage(start, size);
		return "SUCCESS";
	}	
	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
		this.session = request.getSession();
		this.application = session.getServletContext();
		long counter = cm.getCounter();
		int intcounter=(int)counter;
		if(session.getAttribute("lyj_commodityPageControl")==null)
		{
			session.setAttribute("lyj_commodityPageControl", new PageController(intcounter, 0, 6));
		}
	}
	
	public String delete()
	{
		System.out.println("delete");
		cm.delete(Integer.parseInt(id));
		PageController temp = (PageController) session.getAttribute("lyj_commodityPageControl");
		PageController pc = new PageController(temp.getTotalRowsAmount()-1, temp.getCurrentPage(), temp.getPageSize());
		session.setAttribute("lyj_commodityPageControl", pc);
		int start = pc.getPageStartRow();
		int size = pc.getPageSize();
		this.setPageMessage(start, size);
		return "SUCCESS";
	}
	public String preUpdate()
	{
		System.out.println("preUpdate");
		Commodity com =cm.findById(Integer.parseInt(id));
		session.setAttribute("lyj_updateMessage", com);
		return "UPDATE";
	}
	public String update()
	{
		System.out.println("update");
		Commodity com = (Commodity) session.getAttribute("lyj_updateMessage");
		
		com.setBrandName(brandName);
		com.setBrandSeriesName(brandSeriesName);
		com.setChipCategory(chipCategory);
		com.setCommodityName(commodityName);
		com.setCover(cover);
		com.setDial(dial);
		com.setDial(dial);
		com.setFunction(function);
		com.setModel(model);
		com.setPack(pack);
		com.setProPlace(proPlace);
		com.setRemarks(remarks);
		com.setSize(size);
		com.setStyle(style);
		com.setWatchband(watchband);
		com.setWatchCase(watchCase);
		com.setWaterproof(waterproof);
		com.setChip(chip);
		cm.update(com);
		
		
		PageController pc = (PageController) session.getAttribute("lyj_commodityPageControl");
		int start  = pc.getPageStartRow();
		int size  = pc.getPageSize();
		this.setPageMessage(start, size);
		
		return "SUCCESS";
	}
	public String prePage()
	{
		System.out.println("prePage");
		PageController pc = (PageController) session.getAttribute("lyj_commodityPageControl");
		pc.setCurrentPage(pc.getPreviousPage());
		int start = pc.getPageStartRow();
		int size = pc.getPageSize();
		this.setPageMessage(start, size);
		return "SUCCESS";
	}
	public String nextPage()
	{
		System.out.println("nextPage");
		PageController pc = (PageController) session.getAttribute("lyj_commodityPageControl");
		pc.setCurrentPage(pc.getNextPage());
		int start = pc.getPageStartRow();
		int size = pc.getPageSize();
		this.setPageMessage(start, size);
		return "SUCCESS";
	}
	public String fristPage()
	{
		System.out.println("fristPage");
		PageController pc = (PageController) session.getAttribute("lyj_commodityPageControl");
		pc.setCurrentPage(0);
		int start = pc.getPageStartRow();
		int size = pc.getPageSize();
		this.setPageMessage(start, size);
		return "SUCCESS";
	}
	public String finalPage()
	{
		System.out.println("finalPage");
		PageController pc = (PageController) session.getAttribute("lyj_commodityPageControl");
		pc.setCurrentPage(pc.getTotalPages());
		int start = pc.getPageStartRow();
		int size = pc.getPageSize();
		this.setPageMessage(start, size);
		return "SUCCESS";
	}
	public String init()
	{
		System.out.println("init");
		this.setPageMessage(0, 6);
		return "SUCCESS";
	}
	public void setPageMessage(int start,int size)
	{
		List page = cm.findPage(start, size);
		System.out.println(page);
		session.setAttribute("lyj_commodityPageMessage", page);
	}
	public CommodityManager getCm() {
		return cm;
	}

	public void setCm(CommodityManager cm) {
		this.cm = cm;
	}
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}



	public String getCommodityId() {
		return commodityId;
	}



	public void setCommodityId(String commodityId) {
		this.commodityId = commodityId;
	}



	public String getCommodityName() {
		return commodityName;
	}



	public void setCommodityName(String commodityName) {
		this.commodityName = commodityName;
	}



	public String getProPlace() {
		return proPlace;
	}



	public void setProPlace(String proPlace) {
		this.proPlace = proPlace;
	}



	public String getBrandName() {
		return brandName;
	}



	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}



	public String getBrandSeriesName() {
		return brandSeriesName;
	}



	public void setBrandSeriesName(String brandSeriesName) {
		this.brandSeriesName = brandSeriesName;
	}



	public String getModel() {
		return model;
	}



	public void setModel(String model) {
		this.model = model;
	}



	public String getStyle() {
		return style;
	}



	public void setStyle(String style) {
		this.style = style;
	}



	public String getSize() {
		return size;
	}



	public void setSize(String size) {
		this.size = size;
	}



	public String getThickness() {
		return thickness;
	}



	public void setThickness(String thickness) {
		this.thickness = thickness;
	}



	public String getChip() {
		return chip;
	}



	public void setChip(String chip) {
		this.chip = chip;
	}



	public String getChipCategory() {
		return chipCategory;
	}



	public void setChipCategory(String chipCategory) {
		this.chipCategory = chipCategory;
	}



	public String getWatchCase() {
		return watchCase;
	}



	public void setWatchCase(String watchCase) {
		this.watchCase = watchCase;
	}



	public String getDial() {
		return dial;
	}



	public void setDial(String dial) {
		this.dial = dial;
	}



	public String getCover() {
		return cover;
	}



	public void setCover(String cover) {
		this.cover = cover;
	}



	public String getWatchband() {
		return watchband;
	}



	public void setWatchband(String watchband) {
		this.watchband = watchband;
	}



	public String getWaterproof() {
		return waterproof;
	}



	public void setWaterproof(String waterproof) {
		this.waterproof = waterproof;
	}



	public String getFunction() {
		return function;
	}



	public void setFunction(String function) {
		this.function = function;
	}



	public String getPack() {
		return pack;
	}



	public void setPack(String pack) {
		this.pack = pack;
	}



	public String getOriginalCost() {
		return originalCost;
	}



	public void setOriginalCost(String originalCost) {
		this.originalCost = originalCost;
	}



	public String getSpecialCost() {
		return specialCost;
	}



	public void setSpecialCost(String specialCost) {
		this.specialCost = specialCost;
	}



	public String getOnSaleTime() {
		return onSaleTime;
	}



	public void setOnSaleTime(String onSaleTime) {
		this.onSaleTime = onSaleTime;
	}



	public String getHunmanNum() {
		return hunmanNum;
	}



	public void setHunmanNum(String hunmanNum) {
		this.hunmanNum = hunmanNum;
	}



	public String getSaleNum() {
		return saleNum;
	}



	public void setSaleNum(String saleNum) {
		this.saleNum = saleNum;
	}



	public String getRemarks() {
		return remarks;
	}



	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public BrandSeriesManager getBsm() {
		return bsm;
	}
	public void setBsm(BrandSeriesManager bsm) {
		this.bsm = bsm;
	}
	public BrandManager getBm() {
		return bm;
	}
	public void setBm(BrandManager bm) {
		this.bm = bm;
	}
	
	
}
