package com.dao.ztw.commodity;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.models.Commodity;

public class CommodityDaoImp extends HibernateDaoSupport implements ICommodityDao {
	
	//通过调用这个函数， 得到人气最高的或者热售中的商品
	public List <Commodity> getCommodityBySaleNum(final int offset,final int pageSize ,String commodityType) {
		// TODO Auto-generated method stub
		final String hql = "from Commodity c order by c."+commodityType+" desc";
		
		//分页处理
		List<Commodity> list = this.getHibernateTemplate().executeFind(new HibernateCallback()
		{
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
		   			List <Commodity> result=session.createQuery(hql).setFirstResult(offset).setMaxResults(pageSize).list();
		   			return result;
	   	}
	  }
  );
//		List<Commodity> list=this.getHibernateTemplate().find(hql);
//		if(list != null&&list.size()>0){
//			System.out.println(list.size());
////			System.out.println("第一个："+list.get(0).getSaleNum());
////			System.out.println("第二个："+list.get(1).getSaleNum());
////			return list.get(0);
//		}
		return list;
	}
	
	public Commodity getCommById(int id){
		String hql="from Commodity c where c.commodityId=? ";
		List<Commodity> list=this.getHibernateTemplate().find(hql,new Object[]{id});
		if(list!=null&&list.size()>0){
			return list.get(0);
		}
		return null;
	}
//	public static void main(String[] args) {
//		ApplicationContext ac=new ClassPathXmlApplicationContext("applicationContext.xml");
//		ICommodityDao ic = (ICommodityDao)ac.getBean("commodityDao");
//		Commodity c=ic.getCommById(17);
//		System.out.println(c);
//	}
	

}
