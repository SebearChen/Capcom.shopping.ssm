package com.capcom.service.impl;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.capcom.dao.CommodityDao;
import com.capcom.domain.Commodity;
import com.capcom.service.CommodityService;

@Service
public class CommodityServiceImpl implements CommodityService {
	@Autowired
	private CommodityDao dao;

	@Override
	public Commodity querySingle(int commodityid) {
		// TODO Auto-generated method stub
		return dao.querySingle(commodityid);
	}

	@Override
	public List<List<Commodity>> queryIndex() {
		// TODO Auto-generated method stub
		List<List<Commodity>> list = new ArrayList<List<Commodity>>();
		list.add(dao.queryIndex("普通怪兽"));
		list.add(dao.queryIndex("宇宙人"));
		list.add(dao.queryIndex("斯菲亚合成兽"));
		return list;
	}

	@Override
	public List<Commodity> queryByName(String commodityname) {
		// 模糊查询
		return dao.queryName(commodityname);
	}
}