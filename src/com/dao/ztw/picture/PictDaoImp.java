package com.dao.ztw.picture;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.models.Picture;

public class PictDaoImp extends HibernateDaoSupport implements IPictDao {

	@Override
	public List<Picture> getPict(int id) {
		String hql="from Picture p where p.id=?";  //配置文件中，ID的名称是pictureId
		List<Picture> list=this.getHibernateTemplate().find(hql, new Object[]{id});
		return list;
	}

	@Override
	public Picture getDefaultPict(int id) {
		String hql="from Picture p where p.id=? and p.picDefault=true";
		List<Picture> list=this.getHibernateTemplate().find(hql, new Object[]{id});
		if(list!=null&&list.size()>0){
			return list.get(0);
		}
		return null;
	}
	
	public static void main(String[] args) {
		ApplicationContext ac=new ClassPathXmlApplicationContext("applicationContext.xml");
		IPictDao ic = (IPictDao)ac.getBean("pictDao");
		Picture c=ic.getDefaultPict(18);
		System.out.println(c.getPicPath()+" "+c.getPicDefault());
	}

}
