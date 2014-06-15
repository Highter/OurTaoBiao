/*package com.dao;

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
			brand1.setBrandName("劳力士");
			brand1.setBrandStory("这背后有个凄凉的故事...");
			brand1.setBrandLogo("劳力士无敌");
			
			Brand brand2 = new Brand();
			brand2.setBrandName("雷达");
			brand2.setBrandStory("这是一个关于【雷达】的故事");
			brand2.setBrandLogo("雷达万岁");
			
			//系列
			BrandSeries series1 = new BrandSeries();
			series1.setBrandSeriesName("迷你型系列");
			series1.setBrandSeriesIntro("适合身材瘦小的女生..");
			series1.setBrand(brand1);
			
			BrandSeries series2 = new BrandSeries();
			series2.setBrandSeriesName("黄金系列");
			series2.setBrandSeriesIntro("适合各种上层社会人士");
			series2.setBrand(brand1);
			
			BrandSeries series3 = new BrandSeries();
			series3.setBrandSeriesName("高富帅系列");
			series3.setBrandSeriesIntro("展现出男人的魅力");
			series3.setBrand(brand1);
			
			BrandSeries series4 = new BrandSeries();
			series4.setBrandSeriesName("钻石系列");
			series4.setBrandSeriesIntro("富贵的象征");
			series4.setBrand(brand2);
			
			BrandSeries series5 = new BrandSeries();
			series5.setBrandSeriesName("百富美系列");
			series5.setBrandSeriesIntro("最受女生欢迎的表");
			series5.setBrand(brand2);
			
			
			Commodity comH1 = new Commodity();
			comH1.setCommodityName("黄宝石-手表");
			comH1.setBrands(brand1);
			comH1.setBrandName(brand1.getBrandName());
			comH1.setBrandSeries(series2);
			comH1.setBrandSeriesName(series2.getBrandSeriesName());
			comH1.setOriginalCost(4000);
			
			Commodity comH2 = new Commodity();
			comH2.setCommodityName("钻石-手表");
			comH2.setBrands(brand2);
			comH2.setBrandName(brand2.getBrandName());
			comH2.setBrandSeries(series4);
			comH2.setBrandSeriesName(series4.getBrandSeriesName());
			comH2.setOriginalCost(5000);
			
			//图片
			Picture pic1 = new Picture();
			pic1.setPicPath("src/pic/15.jpg");
			pic1.setPicIntro("这是 [黄宝石-手表] 的默认相片.....");
			pic1.setPicDefault(true);
			pic1.setCommodity(comH1);
			
			Picture pic2 = new Picture();
			pic2.setPicPath("src/pic/15.jpg");
			pic2.setPicIntro("这是 [黄宝石-手表] 的相片之一.....");
			pic2.setPicDefault(false);
			pic2.setCommodity(comH1);
			
			Picture pic3 = new Picture();
			pic3.setPicPath("src/pic/16.jpg");
			pic3.setPicIntro("这是 [钻石-手表] 的默认相片.....");
			pic3.setPicDefault(true);
			pic3.setCommodity(comH2);
			
			//用户和收藏夹
			CommodityFavorites commodityFavorites1 = new CommodityFavorites();
			
			User user1 = new User();
			user1.setUserName("yjw1");
			commodityFavorites1.setUser(user1);
			
			commodityFavorites1.setCommodities(comH1);
			commodityFavorites1.setCommodityName(comH1.getCommodityName());
			commodityFavorites1.setComFavoPrice(comH1.getSpecialCost());
			
			//留言表
			Message msg1 = new Message();
			msg1.setSubject("关于黄宝石的..");
			msg1.setType("1");
			msg1.setContext("黄宝石真的很好...");
			
			Message msg2 = new Message();
			msg2.setSubject("关于红宝石的..");
			msg2.setType("1");
			msg2.setContext("红宝石真的很好...");
			
			msg1.setUser(user1);
			msg2.setUser(user1);
			//收货地址
			Address address1 = new Address();
			address1.setReceiverName("yjw1");
			address1.setProvice("广东省");
			address1.setCity("江门市");
			address1.setSection("蓬江区");
			
			Address address2 = new Address();
			address2.setReceiverName("yjw2");
			address2.setProvice("广东省");
			address2.setCity("广州市");
			address2.setSection("白云区");
			
			address1.setUser(user1);
			address2.setUser(user1);
			
			//用户订单
			Order order1 = new Order();
			order1.setPayTime(new Date());
			order1.setUser(user1);
			
			Order order2 = new Order();
			order2.setPayTime(new Date());
			order2.setUser(user1);
			
			//订单明细
			OrderDetail orderDetail1 = new OrderDetail();
			orderDetail1.setCommodity(comH1);
			orderDetail1.setCommodityName(comH1.getCommodityName());
			orderDetail1.setPrice(comH1.getOriginalCost());
			orderDetail1.setCommodityNum(2);
			
			OrderDetail orderDetail2 = new OrderDetail();
			orderDetail2.setCommodity(comH2);
			orderDetail2.setCommodityName(comH2.getCommodityName());
			orderDetail2.setPrice(comH2.getOriginalCost());
			orderDetail2.setCommodityNum(3);
			
			orderDetail1.setOrder(order1);
			orderDetail2.setOrder(order1);
			order1.setSumMoney(orderDetail1.getPrice()*orderDetail1.getCommodityNum()
					+orderDetail2.getPrice()*orderDetail2.getCommodityNum());
			
			session = HibernateSessionFactory.getSession();
			tx = session.beginTransaction();
			session.save(series1);
			session.save(series2);
			session.save(series3);
			session.save(series4);
			session.save(series5);
			session.save(comH1);
			session.save(comH2);
			session.save(pic1);
			session.save(pic2);
			session.save(pic3);
			session.save(commodityFavorites1);
			session.save(user1);
			session.save(msg1);
			session.save(msg2);
			session.save(address1);
			session.save(address2);
			session.save(order1);
			session.save(order2);
			session.save(orderDetail1);
			session.save(orderDetail2);
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
*/