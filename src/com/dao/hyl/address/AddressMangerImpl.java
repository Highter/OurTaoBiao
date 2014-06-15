package com.dao.hyl.address;

import java.util.ArrayList;
import java.util.List;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.models.Address;

public class AddressMangerImpl extends HibernateDaoSupport implements AddressManger{

	@Override
	public boolean add(Address address) {
		this.getHibernateTemplate().save(address);
		return true;
	}

	@Override
	public Address findByID(int ID) {
		Address address=this.getHibernateTemplate().get(Address.class, ID);
		if(address!=null){
			return address;
		}else{
			return null;
		}
		
	}

	@Override
	public boolean update(Address address) {
		this.getHibernateTemplate().update(address);
		return false;
	}

	@Override
	public boolean delete(int ID) {
		HibernateTemplate ht=this.getHibernateTemplate();
		Address a = ht.get(Address.class, ID);
		ht.delete(a);
		return true;
	}

	@Override
	public List<Address> findAll(int userId) {
		String hql = "from Address where user.userId=?";
		List<Address> list = new ArrayList<Address>();
		System.out.println("ID::"+userId);
		list = this.getHibernateTemplate().find(hql,userId);
		System.out.println(list.size());
		return list;
	}

	
	public static void main(String[] args) {
		
	}
}
