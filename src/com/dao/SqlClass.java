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
			//Ʒ��
			Brand brand1 = new Brand();
			brand1.setBrandName("����ʿ");
			brand1.setBrandStory("�ⱳ���и������Ĺ���...");
			brand1.setBrandLogo("����ʿ�޵�");
			
			Brand brand2 = new Brand();
			brand2.setBrandName("�״�");
			brand2.setBrandStory("����һ�����ڡ��״�Ĺ���");
			brand2.setBrandLogo("�״�����");
			
			//ϵ��
			BrandSeries series1 = new BrandSeries();
			series1.setBrandSeriesName("������ϵ��");
			series1.setBrandSeriesIntro("�ʺ������С��Ů��..");
			series1.setBrand(brand1);
			
			BrandSeries series2 = new BrandSeries();
			series2.setBrandSeriesName("�ƽ�ϵ��");
			series2.setBrandSeriesIntro("�ʺϸ����ϲ������ʿ");
			series2.setBrand(brand1);
			
			BrandSeries series3 = new BrandSeries();
			series3.setBrandSeriesName("�߸�˧ϵ��");
			series3.setBrandSeriesIntro("չ�ֳ����˵�����");
			series3.setBrand(brand1);
			
			BrandSeries series4 = new BrandSeries();
			series4.setBrandSeriesName("��ʯϵ��");
			series4.setBrandSeriesIntro("���������");
			series4.setBrand(brand2);
			
			BrandSeries series5 = new BrandSeries();
			series5.setBrandSeriesName("�ٸ���ϵ��");
			series5.setBrandSeriesIntro("����Ů����ӭ�ı�");
			series5.setBrand(brand2);
			
			
			Commodity comH1 = new Commodity();
			comH1.setCommodityName("�Ʊ�ʯ-�ֱ�");
			comH1.setBrands(brand1);
			comH1.setBrandName(brand1.getBrandName());
			comH1.setBrandSeries(series2);
			comH1.setBrandSeriesName(series2.getBrandSeriesName());
			comH1.setOriginalCost(4000);
			
			Commodity comH2 = new Commodity();
			comH2.setCommodityName("��ʯ-�ֱ�");
			comH2.setBrands(brand2);
			comH2.setBrandName(brand2.getBrandName());
			comH2.setBrandSeries(series4);
			comH2.setBrandSeriesName(series4.getBrandSeriesName());
			comH2.setOriginalCost(5000);
			
			//ͼƬ
			Picture pic1 = new Picture();
			pic1.setPicPath("src/pic/15.jpg");
			pic1.setPicIntro("���� [�Ʊ�ʯ-�ֱ�] ��Ĭ����Ƭ.....");
			pic1.setPicDefault(true);
			pic1.setCommodity(comH1);
			
			Picture pic2 = new Picture();
			pic2.setPicPath("src/pic/15.jpg");
			pic2.setPicIntro("���� [�Ʊ�ʯ-�ֱ�] ����Ƭ֮һ.....");
			pic2.setPicDefault(false);
			pic2.setCommodity(comH1);
			
			Picture pic3 = new Picture();
			pic3.setPicPath("src/pic/16.jpg");
			pic3.setPicIntro("���� [��ʯ-�ֱ�] ��Ĭ����Ƭ.....");
			pic3.setPicDefault(true);
			pic3.setCommodity(comH2);
			
			//�û����ղؼ�
			CommodityFavorites commodityFavorites1 = new CommodityFavorites();
			
			User user1 = new User();
			user1.setUserName("yjw1");
			commodityFavorites1.setUser(user1);
			
			commodityFavorites1.setCommodities(comH1);
			commodityFavorites1.setCommodityName(comH1.getCommodityName());
			commodityFavorites1.setComFavoPrice(comH1.getSpecialCost());
			
			//���Ա�
			Message msg1 = new Message();
			msg1.setSubject("���ڻƱ�ʯ��..");
			msg1.setType("1");
			msg1.setContext("�Ʊ�ʯ��ĺܺ�...");
			
			Message msg2 = new Message();
			msg2.setSubject("���ں챦ʯ��..");
			msg2.setType("1");
			msg2.setContext("�챦ʯ��ĺܺ�...");
			
			msg1.setUser(user1);
			msg2.setUser(user1);
			//�ջ���ַ
			Address address1 = new Address();
			address1.setReceiverName("yjw1");
			address1.setProvice("�㶫ʡ");
			address1.setCity("������");
			address1.setSection("���");
			
			Address address2 = new Address();
			address2.setReceiverName("yjw2");
			address2.setProvice("�㶫ʡ");
			address2.setCity("������");
			address2.setSection("������");
			
			address1.setUser(user1);
			address2.setUser(user1);
			
			//�û�����
			Order order1 = new Order();
			order1.setPayTime(new Date());
			order1.setUser(user1);
			
			Order order2 = new Order();
			order2.setPayTime(new Date());
			order2.setUser(user1);
			
			//������ϸ
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