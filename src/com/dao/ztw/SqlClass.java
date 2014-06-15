package com.dao.ztw;

import java.util.Date;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.common.HibernateSessionFactory;
import com.models.Address;
import com.models.Brand;
import com.models.BrandSeries;
import com.models.Commodity;
import com.models.CommodityFavorites;
import com.models.Message;
import com.models.Order;
import com.models.OrderDetail;
import com.models.Picture;
import com.models.User;

public class SqlClass {

	
	public static void addCommodity(){
		Session session = null;
		Transaction tx = null;
		
		try {
			//品牌
			Brand brand1 = new Brand();
			brand1.setBrandName("天梭");
			brand1.setBrandStory("这背后有个凄凉的故事...");
			brand1.setBrandLogo("天梭无敌");
			
			Brand brand2 = new Brand();
			brand2.setBrandName("雷达");
			brand2.setBrandStory("这是一个关于【雷达】的故事");
			brand2.setBrandLogo("雷达万岁");
			
			//系列
//			BrandSeries series1 = new BrandSeries();
//			series1.setBrandSeriesName("天梭Tissot 力洛克系列");
//			series1.setBrandSeriesIntro("适合身材瘦小的女生..");
//			series1.setBrand(brand1);
			
//			BrandSeries series2 = new BrandSeries();
//			series2.setBrandSeriesName("力洛克系列 ");
//			series2.setBrandSeriesIntro("适合各种上层社会人士");
//			series2.setBrand(brand1);
			
//			BrandSeries series3 = new BrandSeries();
//			series3.setBrandSeriesName("天梭Tissot 天慕系列	");
//			series3.setBrandSeriesIntro("展现出男人的魅力");
//			series3.setBrand(brand1);
			
//			BrandSeries series4 = new BrandSeries();
//			series4.setBrandSeriesName("天梭力洛克系列");
//			series4.setBrandSeriesIntro("富贵的象征");
//			series4.setBrand(brand2);
			
			BrandSeries series5 = new BrandSeries();
			series5.setBrandSeriesName("天梭娉驰100系列");
			series5.setBrandSeriesIntro("最受女生欢迎的表");
			series5.setBrand(brand1);
			
			BrandSeries series4 = new BrandSeries();
			series4.setBrandSeriesName("雷达高贵系列");
			series4.setBrandSeriesIntro("富贵的象征");
			series4.setBrand(brand2);
			
//			BrandSeries series6 = new BrandSeries();
//			series6.setBrandSeriesName("雷达运动系列");
//			series6.setBrandSeriesIntro("名符其实");
//			series6.setBrand(brand2);
//			
//			BrandSeries series7 = new BrandSeries();
//			series7.setBrandSeriesName("精时力Kienzle");
//			series7.setBrandSeriesIntro("精时力.....");
			 
//			private int commodityId;
//			private String commodityName;//商品名字
//			private String proPlace;//产地
//			private String brandName;//品牌名字
//			private String brandSeriesName;//品牌系列名字
//			private String model;//型号
//			private String style;//款式
//			private String size;//尺寸
//			private String thickness;//厚度
//			private String chip;//机芯
//			private String chipCategory;//机芯类别
//			private String watchCase;//表壳
//			private String dial;//表盘 
//			private String cover;//表面
//			private String watchband;//表带
//			private String waterproof;//防水
//			private String function;//功能;
//			private String pack;//包装
//			private float originalCost;//原价
//			private float specialCost;//特价
//			private Date onSaleTime;//上架时间
//			private long hunmanNum;//人气
//			private int saleNum;//销售量
//			private String remarks;//备注
//			private Brand brands;
			
			Commodity comH1 = new Commodity();
			comH1.setCommodityName("天梭-手表8");
			comH1.setBrands(brand1);
			comH1.setBrandName(brand1.getBrandName());
			comH1.setBrandSeries(series5);
			comH1.setBrandSeriesName(series5.getBrandSeriesName());
			comH1.setOriginalCost(7640);
			comH1.setChip("机械表8 ");
			comH1.setDial("银色 8");
			comH1.setWatchband("钢链带5");
			comH1.setWaterproof("防水5");
			comH1.setRemarks("被誉为世上最性感的运动腕表");
			comH1.setOnSaleTime(new Date());
			comH1.setHunmanNum(2246);
			comH1.setSaleNum(1429);
			comH1.setModel("T41.1.483.33");
			comH1.setSize("39毫米");
			comH1.setThickness("7mm");
//			comH1.setChipCategory("ETA2824-1-2");
			comH1.setWatchCase("精钢抛光");
			comH1.setCover("蓝宝石水晶玻璃 ");
			comH1.setFunction("日历");
			comH1.setPack("包装盒、相关文件、说明书、保修卡");
			comH1.setSpecialCost(6590);
			
			
			Commodity comH2 = new Commodity();
			comH2.setCommodityName("雷达-手表8");
			comH2.setBrands(brand2);
			comH2.setBrandName(brand2.getBrandName());
			comH2.setBrandSeries(series4);
			comH2.setBrandSeriesName(series4.getBrandSeriesName());
			comH2.setOriginalCost(6022);
			comH2.setChip("机械表 8");
			comH2.setDial("银色 8");
			comH2.setWatchband("精钢8 ");
			comH2.setWaterproof("防水8");
			comH2.setRemarks("贵族欧式风格 隽永典雅8");
			comH2.setOnSaleTime(new Date());
			comH2.setHunmanNum(3235);
			comH2.setSaleNum(2222);
			comH2.setModel("V73091237790");
			comH2.setSize("39毫米");
			comH2.setThickness("7mm");
//			comH2.setChipCategory("ETA2824-1-2");
			comH2.setWatchCase("小秒盘7");
			comH2.setCover("矿物质玻璃 ");
			comH2.setFunction("日历");
			comH2.setPack("包装盒、相关文件、说明书、保修卡");
			comH2.setSpecialCost(3990);
			
			Commodity comH3 = new Commodity();
			comH3.setCommodityName("天梭-手表9");
			comH3.setBrands(brand1);
			comH3.setBrandName(brand1.getBrandName());
			comH3.setBrandSeries(series5);
			comH3.setBrandSeriesName(series5.getBrandSeriesName());
			comH3.setOriginalCost(2640);
			comH3.setChip("机械表9 ");
			comH3.setDial("银色9");
			comH3.setWatchband("钢链带9");
			comH3.setWaterproof("防水9");
			comH3.setRemarks("被誉为世上最性感的运动腕表");
			comH3.setOnSaleTime(new Date());
			comH3.setHunmanNum(6246);
			comH3.setSaleNum(5429);
			comH3.setModel("T41.1.483.33");
			comH3.setSize("39毫米");
			comH3.setThickness("7mm");
//			comH1.setChipCategory("ETA2824-1-2");
			comH3.setWatchCase("精钢抛光");
			comH3.setCover("蓝宝石水晶玻璃 ");
			comH3.setFunction("日历");
			comH3.setPack("包装盒、相关文件、说明书、保修卡");
			comH3.setSpecialCost(1590);
			
			
			Commodity comH4 = new Commodity();
			comH4.setCommodityName("雷达-手表9");
			comH4.setBrands(brand2);
			comH4.setBrandName(brand2.getBrandName());
			comH4.setBrandSeries(series4);
			comH4.setBrandSeriesName(series4.getBrandSeriesName());
			comH4.setOriginalCost(9022);
			comH4.setChip("机械表 9");
			comH4.setDial("银色 9");
			comH4.setWatchband("精钢9 ");
			comH4.setWaterproof("防水9");
			comH4.setRemarks("贵族欧式风格 隽永典雅9");
			comH4.setOnSaleTime(new Date());
			comH4.setHunmanNum(9235);
			comH4.setSaleNum(222);
			comH4.setModel("V73091237790");
			comH4.setSize("39毫米");
			comH4.setThickness("7mm");
//			comH2.setChipCategory("ETA2824-1-2");
			comH4.setWatchCase("小秒盘9");
			comH4.setCover("矿物质玻璃 ");
			comH4.setFunction("日历");
			comH4.setPack("包装盒、相关文件、说明书、保修卡");
			comH4.setSpecialCost(8990);
			
			//图片
			Picture pic1 = new Picture();
			pic1.setPicPath("pic/15.jpg");
			pic1.setPicIntro("这是 [天梭-手表] 的默认相片.....");
			pic1.setPicDefault(true);
			pic1.setCommodity(comH1);
			
			Picture pic2 = new Picture();
			pic2.setPicPath("pic/15.jpg");
			pic2.setPicIntro("这是 [天梭-手表] 的相片之一.....");
			pic2.setPicDefault(false);
			pic2.setCommodity(comH1);
			
			Picture pic3 = new Picture();
			pic3.setPicPath("pic/16.jpg");
			pic3.setPicIntro("这是 [雷达-手表] 的默认相片.....");
			pic3.setPicDefault(true);
			pic3.setCommodity(comH2);
			
			Picture pic4 = new Picture();
			pic4.setPicPath("pic/15.jpg");
			pic4.setPicIntro("这是 [天梭-手表] 的默认相片.....");
			pic4.setPicDefault(true);
			pic4.setCommodity(comH3);
			
			Picture pic5 = new Picture();
			pic5.setPicPath("pic/15.jpg");
			pic5.setPicIntro("这是 [天梭-手表] 的相片之一.....");
			pic5.setPicDefault(false);
			pic5.setCommodity(comH3);
			
			Picture pic6 = new Picture();
			pic6.setPicPath("pic/16.jpg");
			pic6.setPicIntro("这是 [雷达-手表] 的默认相片.....");
			pic6.setPicDefault(true);
			pic6.setCommodity(comH4);
			
			//用户和收藏夹
//			CommodityFavorites commodityFavorites1 = new CommodityFavorites();
//			
//			User user1 = new User();
//			user1.setUserName("yjw1");
//			commodityFavorites1.setUser(user1);
//			
//			commodityFavorites1.setCommodities(comH1);
//			commodityFavorites1.setCommodityName(comH1.getCommodityName());
//			commodityFavorites1.setComFavoPrice(comH1.getSpecialCost());
			
			//留言表
//			Message msg1 = new Message();
//			msg1.setSubject("关于黄宝石的..");
//			msg1.setType("1");
//			msg1.setContext("黄宝石真的很好...");
//			
//			Message msg2 = new Message();
//			msg2.setSubject("关于红宝石的..");
//			msg2.setType("1");
//			msg2.setContext("红宝石真的很好...");
//			
//			msg1.setUser(user1);
//			msg2.setUser(user1);
//			//收货地址
//			Address address1 = new Address();
//			address1.setReceiverName("yjw1");
//			address1.setProvice("广东省");
//			address1.setCity("江门市");
//			address1.setSection("蓬江区");
//			
//			Address address2 = new Address();
//			address2.setReceiverName("yjw2");
//			address2.setProvice("广东省");
//			address2.setCity("广州市");
//			address2.setSection("白云区");
//			
//			address1.setUser(user1);
//			address2.setUser(user1);
//			
//			//用户订单
//			Order order1 = new Order();
//			order1.setPayTime(new Date());
//			order1.setUser(user1);
//			
//			Order order2 = new Order();
//			order2.setPayTime(new Date());
//			order2.setUser(user1);
//			
//			//订单明细
//			OrderDetail orderDetail1 = new OrderDetail();
//			orderDetail1.setCommodity(comH1);
//			orderDetail1.setCommodityName(comH1.getCommodityName());
//			orderDetail1.setPrice(comH1.getOriginalCost());
//			orderDetail1.setCommodityNum(2);
//			
//			OrderDetail orderDetail2 = new OrderDetail();
//			orderDetail2.setCommodity(comH2);
//			orderDetail2.setCommodityName(comH2.getCommodityName());
//			orderDetail2.setPrice(comH2.getOriginalCost());
//			orderDetail2.setCommodityNum(3);
//			
//			orderDetail1.setOrder(order1);
//			orderDetail2.setOrder(order1);
//			order1.setSumMoney(orderDetail1.getPrice()*orderDetail1.getCommodityNum()
//					+orderDetail2.getPrice()*orderDetail2.getCommodityNum());
			
			session = HibernateSessionFactory.getSession();
			tx = session.beginTransaction();
//			session.save(series1);
//			session.save(series2);
//			session.save(series3);
//			session.save(series4);
//			session.save(series5);
			session.save(comH1);
			session.save(comH2);
			session.save(comH3);
			session.save(comH4);
			session.save(pic1);
			session.save(pic2);
			session.save(pic3);
			session.save(pic4);
			session.save(pic5);
			session.save(pic6);
//			session.save(commodityFavorites1);
//			session.save(user1);
//			session.save(msg1);
//			session.save(msg2);
//			session.save(address1);
//			session.save(address2);
//			session.save(order1);
//			session.save(order2);
//			session.save(orderDetail1);
//			session.save(orderDetail2);
			tx.commit();
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			HibernateSessionFactory.closeSession();
		}
	}
	public static void main(String[] args) {
		addCommodity();
	}

}
