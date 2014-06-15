package com.dao.hyl.collect;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.models.Commodity;
import com.models.CommodityFavorites;
import com.models.Order;


public class CollectMangerImpl extends HibernateDaoSupport implements CollectManager {

	@Override
	public boolean delete(int commodityFavoritesId) {
		HibernateTemplate ht=this.getHibernateTemplate();
		CommodityFavorites c = ht.get(CommodityFavorites.class, commodityFavoritesId);
		ht.delete(c);
		return true;
	}

	@Override
	public Commodity look(int commodityId) {
		HibernateTemplate ht = this.getHibernateTemplate();
		Commodity c = ht.get(Commodity.class, commodityId);
		return c;
	}

	@Override
	public List<CommodityFavorites> findAll(int userId) {
		List<CommodityFavorites> list= null;
		String hql = "from CommodityFavorites   where user.userId=?";
		HibernateTemplate ht=this.getHibernateTemplate();
		list = ht.find(hql, new Object[]{userId});
		return list;
	}
	
//	public static void main(String[] args) {
//		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
//		CollectManager cm = (CollectManager) ac.getBean("CollectManager");
//		List<CommodityFavorites> list=cm.findAll(1);
//		System.out.println(list.size());
//		System.out.println(list);
//	}
}
