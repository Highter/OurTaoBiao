package com.dao.yjw.UserMng;

import java.util.List;

import com.models.User;

public interface UserMng {
	//�鿴ĳ���û�
	public User getUserById(int userId);
	//�鿴���е��û�
	public List<User> getAllUser(int role);
	//ɾ���û�
	public void dropUser(int userId);
	//�ı��ɫ
	public void changeTo1(int userId);
	//�����û�
	public void addUser(User user);
}
