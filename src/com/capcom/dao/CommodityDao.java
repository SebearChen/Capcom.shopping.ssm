package com.capcom.dao;

import java.util.List;

import org.apache.ibatis.annotations.ResultType;
import org.apache.ibatis.annotations.Select;
import com.capcom.domain.Commodity;

public interface CommodityDao {
	// 查询单个
	@Select("select * from commodity where commodityid=#{commodityid}")
	@ResultType(Commodity.class)
	public Commodity querySingle(int commodityid);

	// 查询主页的商品信息
	@Select("select * from commodity where commoditytype=#{commoditytype}")
	@ResultType(Commodity.class)
	public List<Commodity> queryIndex(String commoditytype);

	// 根据商品名模糊查询
	@Select("select * from commodity where commodityname LIKE CONCAT(CONCAT('%', #{commodityname}),'%');")
	@ResultType(Commodity.class)
	public List<Commodity> queryName(String commodityname);
}