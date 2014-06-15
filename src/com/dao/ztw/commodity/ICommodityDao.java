package com.dao.ztw.commodity;

import java.util.List;

import com.models.Commodity;

public interface ICommodityDao {
	public List <Commodity> getCommodityBySaleNum(final int offset,final int pageSize ,String commodityType); 
	public Commodity getCommById(int id);
}
