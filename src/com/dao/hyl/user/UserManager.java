package com.dao.hyl.user;

import com.models.User;

public interface UserManager {
	public boolean check(User user);
	public boolean addUser(User user);
	public User findUserByUsername(String userName);
	public boolean update(User user);
	public User findUserById(int id);
}
