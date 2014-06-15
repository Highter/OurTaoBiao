package com.dao.lyj.commodity;

import java.util.List;

import org.hibernate.Session;

import com.models.Commodity;

public interface CommodityManager {
	boolean add(Commodity commodity);
    boolean check(Commodity commodity);
    List<Commodity> findAll();
    List<Commodity> findPage(int start,int maxSize);
    Long getCounter();
    boolean delete(int commodityId);
    boolean update(Commodity commodity);
    Commodity findById(int commodityId);
    Commodity findByName(String commodityName);
	Session different();
}
