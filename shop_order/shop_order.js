const mysql = require("mysql");//加载数据库
const db_config = require("../conf/db_config.js");//加载数据库配置文件
const pool = mysql.createPool(db_config);//创建数据库连接池
const util = require("../util/util.js");//加载工具模块
const state = require("../state.js");//加载状态码
const moment = require("moment");//加载日期转换中间件

module.exports = {
    //加入购物车
    setCar (req, res) {
        var query = req.query;
        if(query.uid && query.goods_id && query.price && query.num && query.style && query.img){
            //登录验证
            util.isLogin(req, res, query.uid).then(user => {//登录验证成功
                pool.getConnection((err, conn) => {
                    if(err){res.send({"state":125,"msg":state[125]});return};
                    var sql = "INSERT INTO shop_order (uid,goods_id,price,num,style,img,modify_time) VALUES (?,?,?,?,?,?,?);";
                    var sqlParams = [query.uid, query.goods_id, query.price, query.num, query.style, query.img, new Date()];
                    conn.query(sql, sqlParams, (err, result) => {
                        if(err){res.send({"state":126,"msg":state[126]});return};
                        if(result.affectedRows > 0){//加入购物车c成功
                            res.send({"state":0,"msg":state[0]});
                        }else{//加入购物车失败
                            res.send({"state":127,"msg":state[127]});
                        };
                        conn.release();
                    });
                });
            }).catch(user => {//登录验证失败
                res.send({"state":1,"msg":state[1]});
            });
        }else{//参数错误
            res.send({"state":2,"msg":state[2]});
        };
    },
    //获取购物车
    getCar (req, res) {
        var query = req.query;
        if(query.uid && query.state){
            //登录验证
            util.isLogin(req, res, query.uid).then(user => {//登录验证成功
                pool.getConnection((err, conn) => {
                    if(err){res.send({"state":106,"msg":state[106]});return};
                    var sql = "SELECT * FROM car WHERE uid=? AND state=?";
                    var sqlParams = [query.uid, query.state];
                    conn.query(sql, sqlParams, (err, result) => {
                        if(err){res.send({"state":107,"msg":state[107]});return};
                        if(result.length > 0){//购物车有商品
                            res.send({"state":0,"msg":state[0],"result":result});
                        }else{//购物车没有商品
                            res.send({"state":108,"msg":state[108]});
                        };
                        conn.release();
                    });
                });
            }).catch(user => {//登录验证失败
                res.send({"state":1,"msg":state[1]});
            });
        }else{//参数错误
            res.send({"state":2,"msg":state[2]});
        };
    },
    //设置商品数量
    setNum (req, res) {
        var query = req.query;
        if(query.order_id && query.num && query.uid){
            //登录验证
            util.isLogin(req, res, query.uid).then(user => {//登录验证成功
                pool.getConnection((err, conn) => {
                    if(err){res.send({"state":100,"msg":state[100]});return};
                    var sql = "UPDATE shop_order SET num=? WHERE id=? AND uid=?";
                    var sqlParams = [query.num, query.order_id, query.uid];
                    conn.query(sql, sqlParams, (err, result) => {
                        if(err){res.send({"state":101,"msg":state[101]});return};
                        if(result.affectedRows > 0){//设置数量成功
                            res.send({"state":0,"msg":state[0]});
                        }else{//设置数量失败
                            res.send({"state":102,"msg":state[102]});
                        };
                        conn.release();
                    });
                });
            }).catch(user => {//登录验证失败
                res.send({"state":1,"msg":state[1]});
            });
        }else{//参数错误
            res.send({"state":2,"msg":state[2]});
        };
    },
    //删除购物车商品
    delCar (req, res) {
        var query = req.query;
        if(query.order_id && query.uid){
            //登录验证
            util.isLogin(req, res, query.uid).then(user => {//登录验证成功
                pool.getConnection((err, conn) => {
                    if(err){res.send({"state":112,"msg":state[112]});return};
                    var sql = "DELETE FROM shop_order WHERE id=?";
                    var sqlParams = [query.order_id];
                    conn.query(sql, sqlParams, (err, result) => {
                        if(err){res.send({"state":113,"msg":state[113]});return};
                        if(result.affectedRows > 0){//删除成功
                            res.send({"state":0,"msg":state[0]});
                        }else{//删除失败
                            res.send({"state":114,"msg":state[114]});
                        };
                        conn.release();
                    });
                });
            }).catch(user => {//登录验证失败
                res.send({"state":1,"msg":state[1]});
            });
        }else{//参数错误
            res.send({"state":2,"msg":state[2]});
        };
    },
    //清理购物车
    carToOrder (req, res) {
        var query = req.query;
        if(query.order_id_arr && query.uid){
            //登录验证
            util.isLogin(req, res, query.uid).then(user => {//登录验证成功
                pool.getConnection((err, conn) => {
                    if(err){res.send({"state":109,"msg":state[109]});return};
                    var sql = "UPDATE shop_order SET state=1,order_time=?,modify_time=? WHERE uid=? AND (";
                    query.order_id_arr.forEach((id,i) => {
                        (i<query.order_id_arr.length-1)?(sql+=" id=? OR "):(sql+=" id=?);");
                    });
                    var sqlParams = [new Date(), new Date(), query.uid, ...req.query.order_id_arr];
                    conn.query(sql, sqlParams, (err, result) => {
                        if(err){res.send({"state":110,"msg":state[110]});return};
                        if(result.affectedRows == query.order_id_arr.length){//所有订单都成功提交
                            res.send({"state":0,"msg":state[0]});
                        }else{//有一个订单提交失败
                            res.send({"state":111,"msg":state[111]});
                        };
                        conn.release();
                    });
                });
            }).catch(user => {//登录验证失败
                res.send({"state":1,"msg":state[1]});
            });
        }else{//参数错误
            res.send({"state":2,"msg":state[2]});
        };
    },
    //生成订单
    setOrder (req, res) {
        var query = req.query;
        if(query.uid && query.goods_id && query.price && query.num && query.style && query.img){
            //登录验证
            util.isLogin(req, res, query.uid).then(user => {//登录验证成功
                pool.getConnection((err, conn) => {
                    if(err){res.send({"state":121,"msg":state[121]});return};
                    var sql = "INSERT INTO shop_order (uid,goods_id,price,num,style,img,state,order_time,modify_time) VALUES (?,?,?,?,?,?,?,?,?);";
                    var sqlParams = [query.uid, query.goods_id, query.price, query.num, query.style, query.img, 1, new Date(), new Date()];
                    conn.query(sql, sqlParams, (err, result) => {
                        if(err){res.send({"state":122,"msg":state[122]});return};
                        if(result.affectedRows > 0){//生成订单成功
                            //查询刚刚生成的订单id
                            conn.query("SELECT LAST_INSERT_ID();",(err, order_id) => {
                                if(err){//查询订单id失败
                                    res.send({"state":123,"msg":state[123]});
                                }else{//查询订单id成功
                                    res.send({"state":0,"result":order_id[0]['LAST_INSERT_ID()']});
                                };
                            });
                        }else{//生成订单失败
                            res.send({"state":124,"msg":state[124]});
                        };
                        conn.release();
                    });
                });
            }).catch(user => {//登录验证失败
                res.send({"state":1,"msg":state[1]});
            });
        }else{//参数错误
            res.send({"state":2,"msg":state[2]});
        };
    },
    //获取订单
    getOrder (req, res) {
        var query = req.query;
        if(query.uid && query.order_id){
            //登录验证
            util.isLogin(req, res, query.uid).then(user => {//登录验证成功
                pool.getConnection((err, conn) => {
                    if(err){res.send({"state":158,"msg":state[158]});return};
                    var sql = "SELECT * FROM car WHERE id=?";
                    var sqlParams = [query.order_id];
                    conn.query(sql, sqlParams, (err, result) => {
                        if(err){res.send({"state":159,"msg":state[159]});return};
                        if(result.length > 0){//获取订单成功
                            res.send({"state":0,"msg":state[0],"result":result});
                        }else{//无此订单
                            res.send({"state":160,"msg":state[160]});
                        };
                        conn.release();
                    });
                });
            }).catch(user => {//登录验证失败
                res.send({"state":1,"msg":state[1]});
            });
        }else{//参数错误
            res.send({"state":2,"msg":state[2]});
        };
    },
    //删除订单
    delOrder (req, res) {
        var query = req.query;
        if(query.order_id && query.uid){
            //登录验证
            util.isLogin(req, res, query.uid).then(user => {//登录验证成功
                pool.getConnection((err, conn) => {
                    if(err){res.send({"state":155,"msg":state[155]});return};
                    var sql = "UPDATE shop_order SET state=-1,del_time=?,modify_time=? WHERE id=?;";
                    var sqlParams = [new Date(), new Date(), query.order_id];
                    conn.query(sql, sqlParams, (err, result) => {
                        if(err){res.send({"state":156,"msg":state[156]});return};
                        if(result.affectedRows > 0){//删除订单成功
                            res.send({"state":0,"msg":state[0]});
                        }else{//删除订单失败
                            res.send({"state":157,"msg":state[157]});
                        };
                        conn.release();
                    });
                });
            }).catch(user => {//登录验证失败
                res.send({"state":1,"msg":state[1]});
            });
        }else{//参数错误
            res.send({"state":2,"msg":state[2]});
        };
    },
    //查看全部订单
    allOrder (req, res) {
        var query = req.query;
        if(query.uid){
            //登录验证
            util.isLogin(req, res, query.uid).then(user => {//登录验证成功
                pool.getConnection((err, conn) => {
                    if(err){res.send({"state":143,"msg":state[143]});return};
                    var sql = "SELECT * FROM car WHERE uid=? AND state<>0 ORDER BY modify_time DESC;";
                    var sqlParams = [query.uid];
                    var result = [];
                    conn.query(sql, sqlParams).on("error", err => {
                        res.send({"state":144,"msg":state[144]});
                    }).on("result", row => {
                        row.car_time = moment(row.car_time).format("YYYY-MM-DD HH:mm:ss");
                        row.order_time = moment(row.order_time).format("YYYY-MM-DD HH:mm:ss");
                        row.del_time = moment(row.del_time).format("YYYY-MM-DD HH:mm:ss");
                        row.buy_time = moment(row.buy_time).format("YYYY-MM-DD HH:mm:ss");
                        row.modify_time = moment(row.modify_time).format("YYYY-MM-DD HH:mm:ss");
                        result.push(row);
                    }).on("end", () => {
                        if(result.length > 0){//有订单
                            res.send({"state":0,"msg":state[0],"result":result});
                        }else{//没有订单
                            res.send({"state":145,"msg":state[145]});
                        };
                        conn.release();
                    });
                    
                });
            }).catch(user => {//登录验证失败
                res.send({"state":1,"msg":state[1]});
            });
        }else{//参数错误
            res.send({"state":2,"msg":state[2]});
        };
    },
    //购买商品
    buy (req, res) {
        var query = req.query;
        if(query.order_id.length>0 && query.uid && query.price){
            //登录验证
            util.isLogin(req, res, query.uid).then(user => {//登录验证成功
                pool.getConnection((err, conn) => {
                    if(err){res.send({"state":115,"msg":state[115]});return};
                    var sql = "UPDATE shop_order SET buy_time=?,modify_time=?,state=2 WHERE uid=? AND (";
                    query.order_id.forEach((x,i,arr) => {
                        (i<arr.length-1)?sql+=" id=? OR ":sql+=" id=?);";
                    });
                    var sqlParams = [new Date(), new Date(), query.uid, ...query.order_id];
                    conn.query(sql, sqlParams, (err, result) => {
                        if(err){res.send({"state":116,"msg":state[116]});return};
                        if(result.affectedRows > 0){//购买成功
                            res.send({"state":0,"msg":state[0]});
                            //添加积分
                            conn.query("UPDATE user SET points=user.points+? WHERE id=?",[Math.round(query.price/10000),query.uid]);
                        }else{//购买失败
                            res.send({"state":117,"msg":state[117]});
                        };
                        conn.release();
                    });
                });
            }).catch(user => {//登录验证失败
                res.send({"state":1,"msg":state[1]});
            });
        }else{//参数错误
            res.send({"state":2,"msg":state[2]});
        };
    }
}
