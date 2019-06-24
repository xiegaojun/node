const mysql = require("mysql");//加载数据库
const db_config = require("../conf/db_config.js");//加载数据库配置文件
const pool = mysql.createPool(db_config);//创建数据库连接池
const state = require("../state.js");//加载状态码

module.exports={
    //种草猫
    seedcat (req,res) {
        var query = req.query;
        if(query.id){//种草猫详细信息
            pool.getConnection((err, conn) => {
                if(err){res.send({"state":167,"msg":state[167]});return};
                var sql = "SELECT img,title,content FROM seedcat WHERE id=?";
                var sqlParams = [query.id];
                conn.query(sql, sqlParams, (err, result) => {
                    if(err){res.send({"state":168,"msg":state[168]});return};
                    if(result.length > 0){//有数据
                        res.send({"state":0,"msg":state[0],"result":result[0]});
                    }else{//无数据
                        res.send({"state":169,"msg":state[169]});
                    };
                    conn.release();
                });
            });
        }else{//种草猫列表
            pool.getConnection((err, conn) => {
                if(err){res.send({"state":170,"msg":state[170]});return};
                var sql = "SELECT id,img,title FROM seedcat";
                conn.query(sql, (err,result) => {
                    if(err){res.send({"state":171,"msg":state[171]});return};
                    if(result.length > 0){//有数据
                        res.send({"state":0,"msg":state[0],"result":result});
                    }else{//无数据
                        res.send({"state":172,"msg":state[172]});
                    };
                    conn.release();
                });
            });
        } 
    }
}
