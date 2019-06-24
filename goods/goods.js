const mysql = require("mysql");//加载数据库
const db_config = require("../conf/db_config.js");//加载数据库配置文件
const pool = mysql.createPool(db_config);//创建数据库连接池
const state = require("../state.js");//加载状态码

module.exports = {
    //加载菜单
    showMenu (req, res) {
        var query = req.query;
        if(!query.menu_id){//加载菜单左列表
            pool.getConnection(function(err,conn){
                if(err){res.send({"state":161,"msg":state[161]});return};
                var sql = "SELECT id,name FROM menu";
                conn.query(sql,function(err,result){
                    if(err){res.send({"state":162,"msg":state[162]});return};
                    if(result.length > 0){//有数据
                        res.send({"state":0,"msg":state[0],"result":result});
                    }else{//无数据
                        res.send({"state":163,"msg":state[163]});
                    };
                    conn.release();
                });
            });
        }else{//加载菜单右列表
            pool.getConnection(function(err,conn){
                if(err){res.send({"state":164,"msg":state[164]});return};
                var sql = "SELECT id,name,img FROM goods_type ";
                (req.query.menu_id==0)?sql+= " WHERE ishd=?":sql+=" WHERE menu_id=?";
                var sqlParams = [req.query.menu_id];
                conn.query(sql, sqlParams, function(err,result){
                    if(err){res.send({"state":165,"msg":state[165]});return};
                    if(result.length > 0){//有数据
                        res.send({"state":0,"msg":state[0],"result":result});
                    }else{//无数据
                        res.send({"state":166,"msg":state[166]});
                    };
                    conn.release();
                });
            });
        };
    },
    //加载单件商品信息
    goodsInfo (req, res) {
        var query= req.query;
        if(query.id){
            pool.getConnection(function(err,conn){
                if(err){res.send({"state":118,"msg":state[118]});return};
                var sql = "SELECT name,price,img1,img2,img3,img4,img5,address,volume,goods_id,express FROM goods_info WHERE goods_id=?";
                var sqlParams = [query.id];
                conn.query(sql, sqlParams, function(err, result){
                    if(err){res.send({"state":119,"msg":state[119]});return};
                    if(result.length > 0){//有这件商品
                        res.send({"state":0,"msg":state[0],"result":result});
                    }else{//没有这件商品
                        res.send({"state":120,"msg":state[120]});
                    };
                    conn.release();
                });
            });
        }else{//参数错误
            res.send({"state":2,"msg":state[2]});
        };
    },
    //加载商品
    goods (req, res) {
        var query = req.query;
        if(query.goods_type_id){//商品排序
            pool.getConnection(function(err,conn){
                if(err){res.send({"state":128,"msg":state[128]});return};
                var sql = "SELECT * FROM goods WHERE goods_type_id=?";
                //query.sort	0:综合	1:价格升序	2:价格降序	3:销量
                if(query.sort == 1){
                    sql += " order by price asc";
                }else if(query.sort == 2){
                    sql += " order by price desc";
                }else if(query.sort == 3){
                    sql += " order by volume desc";
                }
                var sqlParams = [query.goods_type_id];
                conn.query(sql, sqlParams, function(err, result){
                    if(err){res.send({"state":129,"msg":state[129]});return};
                    if(result.length > 0){//加载成功
                        res.send({"state":0,"msg":state[0],"result":result});
                    }else{//加载失败
                        res.send({"state":130,"msg":state[130]});
                    }
                    conn.release();
                });
            });
        }else{//随机加载十条商品
            pool.getConnection(function(err,conn){
                if(err){res.send({"state":103,"msg":state[103]});return};
                var sql = "SELECT * FROM goods ORDER BY RAND() LIMIT 10";
                conn.query(sql, function(err, result){
                    if(err){res.send({"state":104,"msg":state[104]});return};
                    if(result.length > 0){//加载成功
                        res.send({"state":0,"msg":state[0],"result":result});
                    }else{//加载失败
                        res.send({"state":105,"msg":state[105]});
                    }
                    conn.release();
                });
            });
        }
    }
}
