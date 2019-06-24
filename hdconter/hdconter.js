const mysql = require("mysql");//加载数据库
const db_config = require("../conf/db_config.js");//加载数据库配置文件
const pool = mysql.createPool(db_config);//创建数据库连接池
const state = require("../state.js");//加载状态码

module.exports = {
    //加载活动中心商品
    hdconter (req, res) {
        var query = req.query;
        //活动商品
        if(query.menu_id){
            pool.getConnection(function(err,conn){
                if(err){res.send({"state":134,"msg":state[134]});return};
                var sql = "SELECT goods_id,name,price,img,volume FROM hdconter ";
                (query.menu_id==0)?sql+= " WHERE ishd=? ORDER BY RAND() LIMIT 10;":sql+=" WHERE menu_id=?";
                var sqlParams = [query.menu_id];
                conn.query(sql, sqlParams, function(err,result){
                    if(err){res.send({"state":135,"msg":state[135]});return};
                    if(result.length > 0){//加载成功
                        res.send({"state":0,"msg":state[0],"result":result});
                    }else{//加载失败
                        res.send({"state":136,"msg":state[136]});
                    };
                    conn.release();
                });
            });
        //活动商品类型列表
        }else{
            pool.getConnection(function(err,conn){
                if(err){res.send({"state":131,"msg":state[131]});return};
                var sql = "SELECT id,name FROM menu;";
                conn.query(sql,function(err,result){
                    if(err){res.send({"state":132,"msg":state[132]});return};
                    if(result.length > 0){//加载成功
                        res.send({"state":0,"msg":state[0],"result":result});
                    }else{//加载失败
                        res.send({"state":133,"msg":state[133]});
                    };
                    conn.release();
                });
            });
        };
    }
}
