package com.dao.hyl.collect;

import java.util.List;

import com.models.Commodity;
import com.models.CommodityFavorites;
import com.models.Order;

public interface CollectManager {
	public boolean delete(int commodityFavoritesId);
	public Commodity look(int commodityId);
	public List<CommodityFavorites> findAll(int userId);
}
