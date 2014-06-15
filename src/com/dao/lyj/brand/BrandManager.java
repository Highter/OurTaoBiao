package com.dao.lyj.brand;

import java.util.List;

import com.models.Brand;

public interface BrandManager {
	boolean add(Brand brand);
    boolean check(Brand brand);
    List<Brand> findAll();
    List<Brand> findPage(int start,int maxSize);
    Long getCounter();
    boolean delete(int brandId);
    boolean update(Brand brand);
    Brand findById(int brandId);
    Brand findByName(String brandName);
    boolean findByIdA(String brandId);
	
}
