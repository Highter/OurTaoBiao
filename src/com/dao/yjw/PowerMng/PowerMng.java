package com.dao.yjw.PowerMng;

import com.models.Power;

public interface PowerMng {
	
	//���ݸ���Ȩ�ޱ�ʶ��������Ȩ��
	public boolean setPower(int powerId,String looOder,String lookOD,String OhutDown,int userId);
	
	//�����û�id���õ�Ȩ�ޱ�
	public Power getPowerById(int userId);
	
	//���ݸ���Ȩ�ޱ�ʶ�������á������˵�Ȩ�ޡ�Ȩ��
	public void setAllPower(String looOder,String lookOD,String OhutDown);

	
}
