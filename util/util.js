const mysql = require("mysql");//数据库模块
const db_config = require("../conf/db_config.js");//数据库配置文件
const crypto = require("../crypto/crypto.js");//加密模块
const pool = mysql.createPool(db_config);//创建数据库连接池

module.exports = {
    //登录验证
    isLogin (req, res, uid) {
        return new Promise((resolve, reject) => {
            var user = "";
            var cookie_arr = Object.keys(req.cookies);
            if(cookie_arr.length>0 || cookie_arr[uid]){
                pool.getConnection((err,conn) => {
                    if(err) reject(user);
                    var sql = "SELECT * FROM user WHERE id=?";
                    var sqlParams = uid?[uid]:[cookie_arr[0]];
                    conn.query(sql, sqlParams, function(err,result){
                        if(err) reject(user);
                        if(result.length != 0){//用户存在
                            var [encrypted,key] = [req.cookies[result[0].id],result[0].user_pwd];
                            var pwd = crypto.decrypt(encrypted,key);
                            if(pwd == result[0].user_pwd){//验证成功
                                conn.query("UPDATE user SET login_time=? WHERE id=?",[new Date(), result[0].id]);//添加登录时间
                                user = result[0];
                                delete user.user_pwd;
                                conn.release();
                                resolve(user);
                            }else{//密码错误
                                conn.release();
                                reject(user);
                            };
                        }else{//用户不存在
                            conn.release();
                            reject(user);
                        };
                    });
                });
            }else{//登录失败
                return reject(user);
            };
        });
    }
}
