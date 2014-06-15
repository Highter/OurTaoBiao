package com.dao.yjw.CsMng;

import java.util.List;

import com.models.User;


public interface CsMng {
	
	//�鿴ĳ���ͷ�
	public User getCSById(int userId);
	//�鿴���еĿͷ�
	public List<User> getAllCS(int role);
	//ɾ���ͷ�
	public void dropCS(int userId);
	//���ӿͷ�
	public void addCS(User user);
	//���¿ͷ�
	public void updateCS(User user);
	//�ı��ɫ
	public void changeTo0(int userId);
	public void changeTo1(int userId);
}
