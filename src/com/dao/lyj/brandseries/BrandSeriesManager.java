package com.dao.lyj.brandseries;

import java.util.List;
import com.models.BrandSeries;
public interface BrandSeriesManager {
	boolean add(BrandSeries brandseries);
    boolean check(BrandSeries brandseries);
    List<BrandSeries> findAll();
    List<BrandSeries> findPage(int start,int maxSize);
    Long getCounter();
    boolean delete(int brandseriesId);
    boolean update(BrandSeries brandseries);
    BrandSeries findById(int brandseriesId);
    BrandSeries findByName(String brandSeriesName);
}
