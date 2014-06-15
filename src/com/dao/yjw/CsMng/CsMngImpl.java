package com.dao.yjw.CsMng;

import java.util.ArrayList;
import java.util.List;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.models.User;


public class CsMngImpl extends HibernateDaoSupport implements CsMng{

	@Override
	public User getCSById(int userId) {
		// TODO Auto-generated method stub
		User user = this.getHibernateTemplate().get(User.class, userId);
		if(user != null){
			return user;
		}else{
			return null;
		}
	}

	@Override
	public List<User> getAllCS(int role) {
		// TODO Auto-generated method stub
		String hql = "from User u where u.role=?";
		List<User> users = new ArrayList<User>();
		users = this.getHibernateTemplate().find(hql,role);
//		System.out.println(users.size());
		return users;
	}

	@Override
	public void dropCS(int userId) {
		// TODO Auto-generated method stub
		
		HibernateTemplate ht = this.getHibernateTemplate();
		User user = ht.get(User.class, userId);
		if(user!=null){
			ht.delete(user);
		}
	}

	@Override
	public void addCS(User user) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(user);
	}

	@Override
	public void updateCS(User user) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(user);
	}

	@Override
	public void changeTo0(int userId) {
		// TODO Auto-generated method stub
		User u = this.getHibernateTemplate().get(User.class, userId);
		if(u!=null){
			u.setRole(0);
			this.getHibernateTemplate().update(u);
		}
	}

	@Override
	public void changeTo1(int userId) {
		// TODO Auto-generated method stub
		User u = this.getHibernateTemplate().get(User.class, userId);
		if(u!=null){
			u.setRole(1);
			this.getHibernateTemplate().update(u);
		}
	}
	
	/*public static void main(String[] args) {
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		CsMng cs = (CsMng)ac.getBean("CsMngImpl");
		cs.dropCS(8);
	}*/
	
}
