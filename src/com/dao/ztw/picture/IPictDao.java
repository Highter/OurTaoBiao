package com.dao.ztw.picture;

import java.util.List;

import com.models.Picture;

public interface IPictDao {
	List<Picture> getPict(int id);//id为商品的id
	Picture getDefaultPict(int id);
}
