package com.dao.lyj.message;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.models.BrandSeries;
import com.models.Message;

public class MessageManagerImpl  extends HibernateDaoSupport implements  MessageManager {
	
	@Override
	public boolean add(Message message) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean check(Message message) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Message> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Message> findPage(int start, int maxSize) {
		try {
			final int starts = start;
			final int sizes = maxSize;
			final String queryString = "from Message";
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
		
		  String hql = "select count(*) from Message";
		  Long count = (Long)getHibernateTemplate().find(hql).listIterator().next();
		  return (long) count.intValue();
	}

	@Override
	public boolean delete(int messageId) {
		System.out.println("deleteid"+messageId);
		HibernateTemplate ht=this.getHibernateTemplate();
		Message a = ht.get(Message.class, messageId);
		if(a != null){
			ht.delete(a);
			return true;
		}else{
			return false;
		}
	}

	@Override
	public boolean update(Message message) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Message findById(int messageId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Message findByName(String messageName) {
		// TODO Auto-generated method stub
		return null;
	}


}
