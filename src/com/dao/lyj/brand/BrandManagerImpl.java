package com.dao.lyj.brand;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;


import com.models.Brand;
import com.models.BrandSeries;

public class BrandManagerImpl extends HibernateDaoSupport implements BrandManager  {

	@Override
	public boolean add(Brand brand) {
		System.out.println("add");
		if(this.check(brand))
		{
			this.getHibernateTemplate().save(brand);
			return true;
		}
		return false;
	}

	@Override
	public boolean check(Brand brand) {
		String hql="from Brand where brandName='"+brand.getBrandName()+"'";
		List list=this.getHibernateTemplate().find(hql);
		if(list.size()!=0){
			return false;
		}
		return true;
	}

	@Override
	public List<Brand> findAll() {
		String hql = "from Brand";
		List<Brand> list = new ArrayList<Brand>();
		list = this.getHibernateTemplate().find(hql);
		return list;
	}
    //实现分页查询
	@Override
	public List<Brand> findPage(int start,int maxSize){
		try {
			final int starts = start;
			final int sizes = maxSize;
			final String queryString = "from Brand";
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
	public Long  getCounter() {
		
		  String hql = "select count(*) from Brand";
		  Long count = (Long)getHibernateTemplate().find(hql).listIterator().next();
		  return (long) count.intValue();
		  
	}

	@Override
	public boolean delete(int brandId) {
		HibernateTemplate ht=this.getHibernateTemplate();
		Brand a = ht.get(Brand.class, brandId);
		if(a!=null)
		{
			ht.delete(a);
			return true;
		}
		
		
		return false;
	}

	@Override
	public boolean update(Brand brand) {
		
		this.getHibernateTemplate().update(brand);
		
		return true;	
	}

	@Override
	public Brand findById(int brandId) {
		
		Brand brand=this.getHibernateTemplate().get(Brand.class, brandId);
		
		if(brand!=null){
			
			return brand;
			
		}else{
			
			return null;
			
		}
	}

	@Override
	public boolean findByIdA(String brandId) {
		String hql="from Brand where brandId='"+brandId+"'";
		List list=this.getHibernateTemplate().find(hql);
		if(list.size()!=0){
			return true;
		}
		return false;
		
		
	}

	@Override
	public Brand findByName(String brandName) {
		String hql="from Brand  where brandName='"+brandName+"'";
		List list=this.getHibernateTemplate().find(hql);
		if(list.size()!=0){
			Iterator iter=list.iterator();
			while(iter.hasNext()){
				Brand u=(Brand)iter.next();
				return u;
			}
		}
		return null;
	}


}
