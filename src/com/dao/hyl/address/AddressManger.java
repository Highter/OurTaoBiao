package com.dao.hyl.address;


import java.util.List;

import com.models.Address;

public interface AddressManger {
	public boolean add(Address address);
	public Address findByID(int ID);
	public boolean update(Address address);
	public boolean delete(int ID);
	public List<Address> findAll(int userId);
}
