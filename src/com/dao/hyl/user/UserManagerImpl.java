package com.dao.hyl.user;

import java.util.Iterator;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.models.User;

public class UserManagerImpl extends HibernateDaoSupport implements UserManager{

	public boolean check(User user) {
		String hql="from User  where userName='"+user.getUserName()+"'";
		List list=this.getHibernateTemplate().find(hql);
		if(list.size()!=0){
			Iterator iter=list.iterator();
			while(iter.hasNext()){
				User u=(User)iter.next();
				String p1=user.getPassWord();
				String p2=u.getPassWord();
				if(p1.equals(p2)){
					return true;
				}
			}
		}
		return false;
	}

	public boolean addUser(User user) {
		if(!check(user)){
			this.getHibernateTemplate().save(user);
			return true;
		}else {
			return false;
		}
		
	}

	@Override
	public User findUserByUsername(String userName) {
		String hql="from User  where userName='"+userName+"'";
		List<User> list=this.getHibernateTemplate().find(hql);
		
//		System.out.println(list);
		User user=list.get(0);
		return user;
	}

	@Override
	public boolean update(User user) {
		this.getHibernateTemplate().update(user);
		return true;
	}

	@Override
	public User findUserById(int id) {
	
		User user=this.getHibernateTemplate().get(User.class, id);
		return user;
	}
	
}
