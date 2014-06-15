package com.dao.yjw.CsMng;

import java.util.List;

import com.models.User;


public interface CsMng {
	
	//查看某个客服
	public User getCSById(int userId);
	//查看所有的客服
	public List<User> getAllCS(int role);
	//删除客服
	public void dropCS(int userId);
	//增加客服
	public void addCS(User user);
	//更新客服
	public void updateCS(User user);
	//改变角色
	public void changeTo0(int userId);
	public void changeTo1(int userId);
}
