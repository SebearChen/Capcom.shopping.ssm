package com.capcom.service;

import java.util.List;

import com.capcom.domain.Commodity;

public interface CommodityService {
	// 模糊查询
	List<Commodity> queryByName(String commodityname);

	// 查询单个
	Commodity querySingle(int commodityid);

	List<List<Commodity>> queryIndex();
}