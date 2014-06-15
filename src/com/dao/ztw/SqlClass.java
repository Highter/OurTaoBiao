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
			//Ʒ��
			Brand brand1 = new Brand();
			brand1.setBrandName("����");
			brand1.setBrandStory("�ⱳ���и������Ĺ���...");
			brand1.setBrandLogo("�����޵�");
			
			Brand brand2 = new Brand();
			brand2.setBrandName("�״�");
			brand2.setBrandStory("����һ�����ڡ��״�Ĺ���");
			brand2.setBrandLogo("�״�����");
			
			//ϵ��
//			BrandSeries series1 = new BrandSeries();
//			series1.setBrandSeriesName("����Tissot �����ϵ��");
//			series1.setBrandSeriesIntro("�ʺ������С��Ů��..");
//			series1.setBrand(brand1);
			
//			BrandSeries series2 = new BrandSeries();
//			series2.setBrandSeriesName("�����ϵ�� ");
//			series2.setBrandSeriesIntro("�ʺϸ����ϲ������ʿ");
//			series2.setBrand(brand1);
			
//			BrandSeries series3 = new BrandSeries();
//			series3.setBrandSeriesName("����Tissot ��Ľϵ��	");
//			series3.setBrandSeriesIntro("չ�ֳ����˵�����");
//			series3.setBrand(brand1);
			
//			BrandSeries series4 = new BrandSeries();
//			series4.setBrandSeriesName("���������ϵ��");
//			series4.setBrandSeriesIntro("���������");
//			series4.setBrand(brand2);
			
			BrandSeries series5 = new BrandSeries();
			series5.setBrandSeriesName("����泳�100ϵ��");
			series5.setBrandSeriesIntro("����Ů����ӭ�ı�");
			series5.setBrand(brand1);
			
			BrandSeries series4 = new BrandSeries();
			series4.setBrandSeriesName("�״�߹�ϵ��");
			series4.setBrandSeriesIntro("���������");
			series4.setBrand(brand2);
			
//			BrandSeries series6 = new BrandSeries();
//			series6.setBrandSeriesName("�״��˶�ϵ��");
//			series6.setBrandSeriesIntro("������ʵ");
//			series6.setBrand(brand2);
//			
//			BrandSeries series7 = new BrandSeries();
//			series7.setBrandSeriesName("��ʱ��Kienzle");
//			series7.setBrandSeriesIntro("��ʱ��.....");
			 
//			private int commodityId;
//			private String commodityName;//��Ʒ����
//			private String proPlace;//����
//			private String brandName;//Ʒ������
//			private String brandSeriesName;//Ʒ��ϵ������
//			private String model;//�ͺ�
//			private String style;//��ʽ
//			private String size;//�ߴ�
//			private String thickness;//���
//			private String chip;//��о
//			private String chipCategory;//��о���
//			private String watchCase;//���
//			private String dial;//���� 
//			private String cover;//����
//			private String watchband;//���
//			private String waterproof;//��ˮ
//			private String function;//����;
//			private String pack;//��װ
//			private float originalCost;//ԭ��
//			private float specialCost;//�ؼ�
//			private Date onSaleTime;//�ϼ�ʱ��
//			private long hunmanNum;//����
//			private int saleNum;//������
//			private String remarks;//��ע
//			private Brand brands;
			
			Commodity comH1 = new Commodity();
			comH1.setCommodityName("����-�ֱ�8");
			comH1.setBrands(brand1);
			comH1.setBrandName(brand1.getBrandName());
			comH1.setBrandSeries(series5);
			comH1.setBrandSeriesName(series5.getBrandSeriesName());
			comH1.setOriginalCost(7640);
			comH1.setChip("��е��8 ");
			comH1.setDial("��ɫ 8");
			comH1.setWatchband("������5");
			comH1.setWaterproof("��ˮ5");
			comH1.setRemarks("����Ϊ�������Ըе��˶����");
			comH1.setOnSaleTime(new Date());
			comH1.setHunmanNum(2246);
			comH1.setSaleNum(1429);
			comH1.setModel("T41.1.483.33");
			comH1.setSize("39����");
			comH1.setThickness("7mm");
//			comH1.setChipCategory("ETA2824-1-2");
			comH1.setWatchCase("�����׹�");
			comH1.setCover("����ʯˮ������ ");
			comH1.setFunction("����");
			comH1.setPack("��װ�С�����ļ���˵���顢���޿�");
			comH1.setSpecialCost(6590);
			
			
			Commodity comH2 = new Commodity();
			comH2.setCommodityName("�״�-�ֱ�8");
			comH2.setBrands(brand2);
			comH2.setBrandName(brand2.getBrandName());
			comH2.setBrandSeries(series4);
			comH2.setBrandSeriesName(series4.getBrandSeriesName());
			comH2.setOriginalCost(6022);
			comH2.setChip("��е�� 8");
			comH2.setDial("��ɫ 8");
			comH2.setWatchband("����8 ");
			comH2.setWaterproof("��ˮ8");
			comH2.setRemarks("����ŷʽ��� ��������8");
			comH2.setOnSaleTime(new Date());
			comH2.setHunmanNum(3235);
			comH2.setSaleNum(2222);
			comH2.setModel("V73091237790");
			comH2.setSize("39����");
			comH2.setThickness("7mm");
//			comH2.setChipCategory("ETA2824-1-2");
			comH2.setWatchCase("С����7");
			comH2.setCover("�����ʲ��� ");
			comH2.setFunction("����");
			comH2.setPack("��װ�С�����ļ���˵���顢���޿�");
			comH2.setSpecialCost(3990);
			
			Commodity comH3 = new Commodity();
			comH3.setCommodityName("����-�ֱ�9");
			comH3.setBrands(brand1);
			comH3.setBrandName(brand1.getBrandName());
			comH3.setBrandSeries(series5);
			comH3.setBrandSeriesName(series5.getBrandSeriesName());
			comH3.setOriginalCost(2640);
			comH3.setChip("��е��9 ");
			comH3.setDial("��ɫ9");
			comH3.setWatchband("������9");
			comH3.setWaterproof("��ˮ9");
			comH3.setRemarks("����Ϊ�������Ըе��˶����");
			comH3.setOnSaleTime(new Date());
			comH3.setHunmanNum(6246);
			comH3.setSaleNum(5429);
			comH3.setModel("T41.1.483.33");
			comH3.setSize("39����");
			comH3.setThickness("7mm");
//			comH1.setChipCategory("ETA2824-1-2");
			comH3.setWatchCase("�����׹�");
			comH3.setCover("����ʯˮ������ ");
			comH3.setFunction("����");
			comH3.setPack("��װ�С�����ļ���˵���顢���޿�");
			comH3.setSpecialCost(1590);
			
			
			Commodity comH4 = new Commodity();
			comH4.setCommodityName("�״�-�ֱ�9");
			comH4.setBrands(brand2);
			comH4.setBrandName(brand2.getBrandName());
			comH4.setBrandSeries(series4);
			comH4.setBrandSeriesName(series4.getBrandSeriesName());
			comH4.setOriginalCost(9022);
			comH4.setChip("��е�� 9");
			comH4.setDial("��ɫ 9");
			comH4.setWatchband("����9 ");
			comH4.setWaterproof("��ˮ9");
			comH4.setRemarks("����ŷʽ��� ��������9");
			comH4.setOnSaleTime(new Date());
			comH4.setHunmanNum(9235);
			comH4.setSaleNum(222);
			comH4.setModel("V73091237790");
			comH4.setSize("39����");
			comH4.setThickness("7mm");
//			comH2.setChipCategory("ETA2824-1-2");
			comH4.setWatchCase("С����9");
			comH4.setCover("�����ʲ��� ");
			comH4.setFunction("����");
			comH4.setPack("��װ�С�����ļ���˵���顢���޿�");
			comH4.setSpecialCost(8990);
			
			//ͼƬ
			Picture pic1 = new Picture();
			pic1.setPicPath("pic/15.jpg");
			pic1.setPicIntro("���� [����-�ֱ�] ��Ĭ����Ƭ.....");
			pic1.setPicDefault(true);
			pic1.setCommodity(comH1);
			
			Picture pic2 = new Picture();
			pic2.setPicPath("pic/15.jpg");
			pic2.setPicIntro("���� [����-�ֱ�] ����Ƭ֮һ.....");
			pic2.setPicDefault(false);
			pic2.setCommodity(comH1);
			
			Picture pic3 = new Picture();
			pic3.setPicPath("pic/16.jpg");
			pic3.setPicIntro("���� [�״�-�ֱ�] ��Ĭ����Ƭ.....");
			pic3.setPicDefault(true);
			pic3.setCommodity(comH2);
			
			Picture pic4 = new Picture();
			pic4.setPicPath("pic/15.jpg");
			pic4.setPicIntro("���� [����-�ֱ�] ��Ĭ����Ƭ.....");
			pic4.setPicDefault(true);
			pic4.setCommodity(comH3);
			
			Picture pic5 = new Picture();
			pic5.setPicPath("pic/15.jpg");
			pic5.setPicIntro("���� [����-�ֱ�] ����Ƭ֮һ.....");
			pic5.setPicDefault(false);
			pic5.setCommodity(comH3);
			
			Picture pic6 = new Picture();
			pic6.setPicPath("pic/16.jpg");
			pic6.setPicIntro("���� [�״�-�ֱ�] ��Ĭ����Ƭ.....");
			pic6.setPicDefault(true);
			pic6.setCommodity(comH4);
			
			//�û����ղؼ�
//			CommodityFavorites commodityFavorites1 = new CommodityFavorites();
//			
//			User user1 = new User();
//			user1.setUserName("yjw1");
//			commodityFavorites1.setUser(user1);
//			
//			commodityFavorites1.setCommodities(comH1);
//			commodityFavorites1.setCommodityName(comH1.getCommodityName());
//			commodityFavorites1.setComFavoPrice(comH1.getSpecialCost());
			
			//���Ա�
//			Message msg1 = new Message();
//			msg1.setSubject("���ڻƱ�ʯ��..");
//			msg1.setType("1");
//			msg1.setContext("�Ʊ�ʯ��ĺܺ�...");
//			
//			Message msg2 = new Message();
//			msg2.setSubject("���ں챦ʯ��..");
//			msg2.setType("1");
//			msg2.setContext("�챦ʯ��ĺܺ�...");
//			
//			msg1.setUser(user1);
//			msg2.setUser(user1);
//			//�ջ���ַ
//			Address address1 = new Address();
//			address1.setReceiverName("yjw1");
//			address1.setProvice("�㶫ʡ");
//			address1.setCity("������");
//			address1.setSection("���");
//			
//			Address address2 = new Address();
//			address2.setReceiverName("yjw2");
//			address2.setProvice("�㶫ʡ");
//			address2.setCity("������");
//			address2.setSection("������");
//			
//			address1.setUser(user1);
//			address2.setUser(user1);
//			
//			//�û�����
//			Order order1 = new Order();
//			order1.setPayTime(new Date());
//			order1.setUser(user1);
//			
//			Order order2 = new Order();
//			order2.setPayTime(new Date());
//			order2.setUser(user1);
//			
//			//������ϸ
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
