<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>怪物猎人 · 商品详情页</title>
</head>

<body>
	<div class="container">
		<div class="row">
			<div class="col-xs-6 col-md-6">
				<a href="#" class="thumbnail"> <img src="./images/${commodity.commodityphoto}" width="560" height="560" alt="${commodity.commodityname}" />
				</a>
			</div>
			<div style="float: left">
				<div style="height: 560px">
					<div class="panel-heading">商品详情</div>
						<div class="panel-body">
							<p>商品名称:<small>${commodity.commodityname}</small></p>
							<p>商品价格:&nbsp;&nbsp;&nbsp;${commodity.commodityprice}</p>
							<p>上市时间:&nbsp;&nbsp;&nbsp;${commodity.pubdate}</p>
							<p>详细介绍:</p>
							<p>${commodity.commodityintro }</p>
							<a href="${pageContext.request.contextPath}/getDirectOrder?commodityid=${commodity.commodityid}&commodityprice=${commodity.commodityprice}&commodityname=${commodity.commodityname}"
									class="btn btn-warning">购买</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>