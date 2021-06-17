<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=tf-8">
    <title>怪物猎人.中国</title>
    <link rel="stylesheet" href="css/list.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
</head>

<body>
    <!-- 快捷导航模块 start -->
    <section class="shortcut">
        <div class="w">
            <div class="fl">
                <ul>
                    <a href="http://localhost:8080/capcom.shopping.ssm/">怪物猎人·中国 &nbsp;&nbsp;欢迎您！&nbsp;&nbsp;</a>
                    <li>
                        <a href="">${usertable.userName}</a> &nbsp; <a href="register.jsp" class="style_red">注册</a>
                    </li>
                </ul>
            </div>
            <div class="fr">
                <ul>
                    <li><a onclick="">我的订单</a></li>
                </ul>
            </div>
        </div>
    </section>
    <!-- 列表页主体部分 -->
    <div class="w">
        <div class="">
            <img src="images/bg.png" alt="">
        </div>
        <td align="right">
            <form action="selectByName" class="form-inline pull-right">
                <div class="form-group">
                    <input type="text" name="commodityname" class='find' placeholder="寻觅猎物...">
                </div>
                <button type="submit" class='find'>搜索</button>
            </form>
        </td>
        <div class="sk_bd">
            <table>
                <tr>
                    <th width="285px">图片</th>
                    <th width="228px">商品名称</th>
                    <th width="228px">商品类型</th>
                    <th width="228px">上市时间</th>
                    <th width="228px">商品价格</th>
                </tr>
            </table>
            <div class="sk_bd" id="data1"></div>
            <div class="sk_bd" id="data2"></div>
            <div class="sk_bd" id="data3"></div>
        </div>
    </div>
    <!-- 底部模块的制作 start -->
    <footer class="footer">
        <div class="w">
            <div class="mod_help">
                <dl>
                    <dt>怪兽.中国</dt>
                    <a href="#" class="card">
                        <h2>关于我们</h2>
                    </a><br><br>
                    <a href="#" class="card">
                        <h2>联系我们</h2>
                    </a>
                </dl>
                <dl>
                    <dt>传送门</dt>
                    <a href="#" class="card">
                        <h2>帮助中心</h2>
                    </a><br><br>
                    <a href="#" class="card">
                        <h2>联系客服</h2>
                    </a>
                </dl>
                <dl>
                    <dd>
                    <dt>微信</dt>
                    <img src="images/iu_qrcode.png" class="qrcode">
                    </dd>
                </dl>
                <dl>
                    <dd>
                    <dt>微博</dt>
                    <img src="images/iu_qrcode.png" class="qrcode">
                    </dd>
                </dl>
                <dl>
                    <dd>
                    <dt>客户端</dt>
                    <img src="images/iu_qrcode.png" class="qrcode">
                    </dd>
                </dl>
            </div>
            <div class="mod_copyright">
                <div class="copyright">
			                    地址：广东省珠海市唐家湾金凤路6号 邮编：519088 电话：0756-3622745 招生咨询电话：0756-3622966 邮箱: zhbit@bitzh.edu.cn <br>
			                    版权所有©北京理工大学珠海学院 粤ICP备05063448号
                </div>
            </div>
        </div>
    </footer>
    <!-- 底部模块的制作 end -->
</body>
<script type="text/javascript">
    $(function () {
        $.get("getCommodityIndex", null, function (arr) {
            var s = "";
            for (var i = 0; i < arr[0].length; i++) {
                var g = arr[0][i];
                s += "<span><a href='${pageContext.request.contextPath}/getCommodityById?commodityid=" +
                    g.commodityid + "'><img class='monster' src='./images/" + g.commodityphoto + "'/><li class='monster'>" +
                    g.commodityname + "</li><li class='monster'>" + g.commoditytype + "</li><li class='monster'>" + g.pubdate + "</li><li class='monster'>￥ " + 
                    g.commodityprice + " 元</li></a></span><br>";
            }
            $("#data1").html(s);
            s="";
			for(var i=0;i<arr[1].length;i++){
				var g=arr[1][i];
				s += "<span><a href='${pageContext.request.contextPath}/getCommodityById?commodityid=" +
	                g.commodityid + "'><img class='monster' src='./images/" + g.commodityphoto + "'/><li class='monster'>" +
	                g.commodityname + "</li><li class='monster'>" + g.commoditytype + "</li><li class='monster'>" + g.pubdate + "</li><li class='monster'>￥ " + 
	                g.commodityprice + " 元</li></a></span><br>";
			}
			$("#data2").html(s);
			s="";
			for(var i=0;i<arr[2].length;i++){
				var g=arr[2][i];
				s += "<span><a href='${pageContext.request.contextPath}/getCommodityById?commodityid=" +
	                g.commodityid + "'><img class='monster' src='./images/" + g.commodityphoto + "'/><li class='monster'>" +
	                g.commodityname + "</li><li class='monster'>" + g.commoditytype + "</li><li class='monster'>" + g.pubdate + "</li><li class='monster'>￥ " + 
	                g.commodityprice + " 元</li></a></span><br>";
			}
			$("#data3").html(s);
        });
    });
</script>

</html>