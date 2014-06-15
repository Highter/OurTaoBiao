package com.dao.lyj.commodity;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.models.Commodity;



public class CommodityManagerImpl extends HibernateDaoSupport implements CommodityManager {

	@Override
	public boolean add(Commodity commodity) {
		System.out.println("Êý¾Ý¿â±£´æ");
		this.getHibernateTemplate().save(commodity);
		return true;
	}
	@Override
	public Session different()
	{
		return this.getSession();
	}
	@Override
	public boolean check(Commodity commodity) {
		this.getHibernateTemplate().save(commodity);
		return true;
	}

	@Override
	public List<Commodity> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Commodity> findPage(int start, int maxSize) {
		try {
			final int starts = start;
			final int sizes = maxSize;
			final String queryString = "from Commodity";
			return getHibernateTemplate().executeFind(new HibernateCallback() {
				public Object doInHibernate(Session session)
						throws HibernateException, SQLException {
					List list2 = session.createQuery(queryString)
							.setFirstResult(starts).setMaxResults(sizes).list();
					return list2;
				}
			});
		} catch (RuntimeException re) {
			throw re;
		}
	}

	@Override
	public Long getCounter() {
		  String hql = "select count(*) from Commodity";
		  Long count = (Long)getHibernateTemplate().find(hql).listIterator().next();
		  return (long) count.intValue();
	}

	@Override
	public boolean delete(int commodityId) {
		
		HibernateTemplate ht=this.getHibernateTemplate();
		Commodity a = ht.get(Commodity.class, commodityId);
		if(a!=null)
		{
			ht.delete(a);
			return true;
		}
		return false;
		
	}

	@Override
	public boolean update(Commodity commodity) {
	this.getHibernateTemplate().update(commodity);
		
		return true;
	}

	@Override
	public Commodity findById(int commodityId) {
		Commodity commodity=this.getHibernateTemplate().get(Commodity.class, commodityId);
		
		if(commodity!=null){
			
			return commodity;
			
		}else{
			
			return null;
			
		}
	}

	@Override
	public Commodity findByName(String commodityName) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
