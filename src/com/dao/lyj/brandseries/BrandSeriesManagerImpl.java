package com.dao.lyj.brandseries;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import util.PageController;

import com.models.Brand;
import com.models.BrandSeries;
import com.models.User;


public class BrandSeriesManagerImpl extends HibernateDaoSupport implements BrandSeriesManager {

	@Override
	public boolean add(BrandSeries brandseries) {
		System.out.println("add");
		if(this.check(brandseries))
		{
			this.getHibernateTemplate().save(brandseries);
			return true;
		}
		return false;
	}

	@Override
	public boolean check(BrandSeries brandseries) {
		String hql="from BrandSeries where brandSeriesName='"+brandseries.getBrandSeriesName()+"'";
		List list=this.getHibernateTemplate().find(hql);
		if(list.size()!=0){
			return false;
		}
		return true;
	}

	@Override
	public List<BrandSeries> findAll() {
		System.out.println("findAll");
		String hql = "from BrandSeries";
		List<BrandSeries> list = new ArrayList<BrandSeries>();
		list = this.getHibernateTemplate().find(hql);
		return list;
	}

	@Override
	public List<BrandSeries> findPage(int start, int maxSize) {
		try {
			final int starts = start;
			final int sizes = maxSize;
			final String queryString = "from BrandSeries";
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
		  String hql = "select count(*) from BrandSeries";
		  Long count = (Long)getHibernateTemplate().find(hql).listIterator().next();
		  return (long) count.intValue();
	}

	@Override
	public boolean delete(int brandseriesId) {
		System.out.println("deleteid"+brandseriesId);
		HibernateTemplate ht=this.getHibernateTemplate();
		BrandSeries a = ht.get(BrandSeries.class, brandseriesId);
		if(a!=null)
		{
			ht.delete(a);
			return true;
		}
		
		
		return false;
	}

	@Override
	public boolean update(BrandSeries brandseries) {
		this.getHibernateTemplate().update(brandseries);
		
		return true;
	}

	@Override
	public BrandSeries findById(int brandseriesId) {
		BrandSeries brand=this.getHibernateTemplate().get(BrandSeries.class, brandseriesId);
		
		if(brand!=null){
			
			return brand;
			
		}else{
			
			return null;
			
		}
	}

	@Override
	public BrandSeries findByName(String brandSeriesName) {
		
		String hql="from BrandSeries  where brandSeriesName='"+brandSeriesName+"'";
		List list=this.getHibernateTemplate().find(hql);
		if(list.size()!=0){
			Iterator iter=list.iterator();
			while(iter.hasNext()){
				BrandSeries u=(BrandSeries)iter.next();
				return u;
			}
		}
		return null;
	}



}
