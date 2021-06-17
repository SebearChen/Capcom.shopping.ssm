package com.capcom.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.capcom.domain.Commodity;
import com.capcom.service.CommodityService;

@Controller
public class CommodityController {
	@Autowired
	private CommodityService commodityService;

	// 查看商品详情
	@RequestMapping("getCommodityById")
	public String commoditybyid(int commodityid, Model model) {
		model.addAttribute("commodity", commodityService.querySingle(commodityid));
		return "commodityDetail";
	}

	// 查看商品详情
	@RequestMapping("getCommodityIndex")
	@ResponseBody
	public List<List<Commodity>> commodityindex(HttpServletResponse response) throws IOException {
		return commodityService.queryIndex();
	}

	// 模糊查询商品列表
	@RequestMapping("selectByName")
	public String selectByName(String commodityname, Model model) {
		model.addAttribute("glist", commodityService.queryByName(commodityname));
		return "commodityList";
	}
}
