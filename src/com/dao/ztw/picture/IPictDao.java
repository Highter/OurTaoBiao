package com.dao.ztw.picture;

import java.util.List;

import com.models.Picture;

public interface IPictDao {
	List<Picture> getPict(int id);//idΪ��Ʒ��id
	Picture getDefaultPict(int id);
}
