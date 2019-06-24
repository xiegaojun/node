const express = require("express");
const server = express();
const bodyParser = require("body-parser");
const cookieParser = require("cookie-parser");
const multer = require("multer");
const me = require("./me/me.js");
const seedcat = require("./seedcat/seedcat.js");
const hdconter = require("./hdconter/hdconter.js");
const goods = require("./goods/goods.js");
const shop_order = require("./shop_order/shop_order.js");
const search = require("./search/search.js");

server.listen(9000);
server.use(bodyParser.urlencoded({ extended: true }));
server.use(cookieParser());
server.use(multer({"dest":"./headerImg/"}).any());

//跨域访问
server.use(function(req,res,next){
	res.setHeader("Access-Control-Allow-Origin","http://192.168.0.100:8080");
	res.setHeader("Access-Control-Allow-Credentials",true);
	next();
});

//me
server.use("/req/login", me.login);//账号密码登录
server.use("/req/autoLogin", me.autoLogin);//自动登录
server.use("/req/outLogin", me.outLogin);//退出登录
server.use("/req/register", me.register);//用户注册
server.use("/req/userHeader", me.userHeader);//修改头像
server.use("/req/usernick", me.userNick);//修改昵称
server.use("/req/userpwd", me.userPwd);//修改密码

//seedcat
server.use("/req/home/seedcat",seedcat.seedcat);//种草猫

//search
server.use("/req/search", search.search);//搜索

//hdconter
server.use("/req/home/hdconter", hdconter.hdconter);//活动中心

//goods
server.use("/req/showMenu", goods.showMenu);//菜单
server.use("/req/goodsInfo", goods.goodsInfo);//查看商品
server.use("/req/goods", goods.goods);//获取商品列表

//shop_order
server.use("/req/setCar", shop_order.setCar);//加入购物车
server.use("/req/getCar", shop_order.getCar);//获取购物车
server.use("/req/setNum", shop_order.setNum);//增加数量
server.use("/req/delCar", shop_order.delCar);//删除购物车的商品
server.use("/req/carToOrder", shop_order.carToOrder);//购物车提交订单
server.use("/req/setOrder", shop_order.setOrder);//直接提交订单
server.use("/req/getOrder", shop_order.getOrder);//获取订单
server.use("/req/delOrder", shop_order.delOrder);//删除订单
server.use("/req/allOrder", shop_order.allOrder);//全部订单
server.use("/req/buy", shop_order.buy);//购买

//other
server.use("/",function(req,res){
    res.redirect(302, 'https://m.xiegaojun.cn/');
});
