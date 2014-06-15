package com.dao.yjw.UserMng;

import java.util.List;

import com.models.User;

public interface UserMng {
	//查看某个用户
	public User getUserById(int userId);
	//查看所有的用户
	public List<User> getAllUser(int role);
	//删除用户
	public void dropUser(int userId);
	//改变角色
	public void changeTo1(int userId);
	//增加用户
	public void addUser(User user);
}
