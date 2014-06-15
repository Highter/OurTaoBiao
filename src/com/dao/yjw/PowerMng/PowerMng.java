package com.dao.yjw.PowerMng;

import com.models.Power;

public interface PowerMng {
	
	//根据各种权限标识符来设置权限
	public boolean setPower(int powerId,String looOder,String lookOD,String OhutDown,int userId);
	
	//根据用户id来得到权限表
	public Power getPowerById(int userId);
	
	//根据各种权限标识符来设置【所有人的权限】权限
	public void setAllPower(String looOder,String lookOD,String OhutDown);

	
}
