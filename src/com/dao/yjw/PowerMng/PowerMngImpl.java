package com.dao.yjw.PowerMng;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.dao.yjw.CsMng.CsMng;
import com.dao.yjw.CsMng.CsMngImpl;
import com.dao.yjw.UserMng.UserMng;
import com.dao.yjw.UserMng.UserMngImpl;
import com.models.Power;
import com.models.User;

public class PowerMngImpl extends HibernateDaoSupport implements PowerMng {

	@Override
	public boolean setPower(int powerId, String looOder, String lookOD,
			String ohutDown, int userId) {
		// TODO Auto-generated method stub
		Power power = getPowerById(userId);
		if(power != null){
			power.setLooOder(looOder);
			power.setLookOD(lookOD);
			power.setOhutDown(ohutDown);
			this.getHibernateTemplate().update(power);
			return true;
		}else{
			return false;
		}
	}

	@Override
	public Power getPowerById(int userId) {
		// TODO Auto-generated method stub
		String hql = "from Power where user.userId=?";
		List<Power> powers = this.getHibernateTemplate().find(hql, userId);
		if (powers.size() >= 0) {
			Power power = powers.get(0);
			return power;
		} else {
			return null;
		}
	}

	@Override
	public void setAllPower(String looOder, String lookOD,
			String OhutDown) {
		// TODO Auto-generated method stub
		String hql = "from User u where u.role=?";
		List<User> users = new ArrayList<User>();
		users = this.getHibernateTemplate().find(hql,1);
		for(int i=0;i<users.size();i++){
			System.out.println(users.get(i).getUserId());
			Power po = getPowerById(users.get(i).getUserId());
//			System.out.println(po);
			if(po != null){
				po.setLooOder(looOder);
				po.setLookOD(lookOD);
				po.setOhutDown(OhutDown);
				this.getHibernateTemplate().update(po);
			}else{
				System.out.println("---------");
			}
		}
	}

	public static void main(String[] args) {

		ApplicationContext ac = new ClassPathXmlApplicationContext(
				"applicationContext.xml");
		PowerMng pmi = (PowerMng) ac.getBean("PowerMngImpl");
		pmi.setAllPower("1", "01", "1");
			
	}
}
