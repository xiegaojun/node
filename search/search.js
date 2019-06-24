const mysql = require("mysql");//数据库模块
const db_config = require("../conf/db_config.js");//数据库配置文件
const pool = mysql.createPool(db_config);//创建数据库连接池
const state = require("../state.js");//加载状态码

module.exports = {
    //搜索
    search (req, res) {
        var query = req.query;
        var num = 10;
        if(query.search && query.index && query.sort){
            pool.getConnection((err, conn) => {
                if(err){res.send({"state":176,"msg":state[176]});return};
                var sql = "SELECT id,name,price,goods_type_id,img,volume FROM search WHERE menu_name LIKE ? OR goods_type_name LIKE ? OR name LIKE ?";
                //query.sort	0:综合	1:价格升序	2:价格降序	3:销量
                if(query.sort == 1){
                    sql += " order by price asc ";
                }else if(query.sort == 2){
                    sql += " order by price desc ";
                }else if(query.sort == 3){
                    sql += " order by volume desc ";
                };
                sql += " LIMIT ?,?;"
                var sqlParams = [`%${query.search}%`, `%${query.search}%`, `%${query.search}%`, query.index*num, (query.index+1)*num-1];
                conn.query(sql, sqlParams, (err, result) => {
                    if(err){res.send({"state":177,"msg":state[177]});return};
                    if(result.length > 0){//有此类商品
                        res.send({"state":0,"msg":state[0],"result":result});
                    }else{//无此类商品
                        res.send({"state":178,"msg":state[178]});
                    };
                });
            });
        }else{//参数错误
            res.send({"state":2,"msg":state[2]});
        };
    }
}