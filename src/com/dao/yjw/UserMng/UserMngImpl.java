package com.dao.yjw.UserMng;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.models.User;

public class UserMngImpl extends HibernateDaoSupport implements UserMng{

	@Override
	public User getUserById(int userId) {
		// TODO Auto-generated method stub
		User user = this.getHibernateTemplate().get(User.class, userId);
		if(user != null){
			return user;
		}else{
			return null;
		}
	}

	@Override
	public List<User> getAllUser(int role) {
		// TODO Auto-generated method stub
		String hql = "from User u where u.role=?";
		List<User> users = new ArrayList<User>();
		users = this.getHibernateTemplate().find(hql,role);
		return users;
	}

	@Override
	public void dropUser(int userId) {
		// TODO Auto-generated method stub
		HibernateTemplate ht = this.getHibernateTemplate();
		User user = ht.get(User.class, userId);
		if(user != null){
			ht.delete(user);
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

	@Override
	public void addUser(User user) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(user);
	}
	
	public static void main(String[] args) {
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		UserMng um = (UserMng)ac.getBean("UserMngImpl");
		System.out.println(um.getAllUser(1));
	}
}
