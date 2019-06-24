const mysql = require("mysql");//数据库模块
const fs = require("fs");//文件模块
const path = require("path");//路径模块
const db_config = require("../conf/db_config.js");//数据库配置文件
const crypto = require("../crypto/crypto.js");//加密模块
const pool = mysql.createPool(db_config);//创建数据库连接池
const util = require("../util/util.js");//加载工具模块
const state = require("../state.js");//加载状态码

module.exports = {
    //登录
    login (req, res) {
        var query = req.query;
        var body = req.body;
        if(query.username && !query.password){//验证用户名
            pool.getConnection(function(err,conn){
                if(err){res.send({"state":137,"msg":state[137]});return};
                var sql = "SELECT user_name FROM user WHERE user_name=?";
                var sqlParams = [query.username];
                conn.query(sql, sqlParams, function(err,result){
                    if(err){res.send({"state":138,"msg":state[138]});return};
                    if(result.length != 0){//验证成功
                        res.send({"state":0,"msg":state[0]});
                    }else{//验证失败
                        res.send({"state":139,"msg":state[139]});
                    };
                    conn.release();
                });
            }); 
        }else if(body.username && body.password){//登录
            pool.getConnection(function(err,conn){
                if(err){res.send({"state":140,"msg":state[140]});return};
                var sql = "SELECT * FROM user WHERE user_name=? AND user_pwd=?";
                var sqlParams = [body.username,body.password];
                conn.query(sql, sqlParams, function(err,result){
                    if(err){res.send({"state":141,"msg":state[141]});return};
                    if(result.length > 0){//登录成功
                        //用户信息
                        var user = result[0];
                        //添加登录时间
                        conn.query("UPDATE user SET login_time=? WHERE id=?",[new Date(), user.id]);
                        //用自己的密码作为加密和解密的key
                        var [pwd,key] = [user.user_pwd,user.user_pwd];
                        //密码加密
                        var pwd_crypto = crypto.encrypt(pwd,key);
                        //清除所有cookie
                        Object.keys(req.cookies).forEach(i => {res.clearCookie(i)});
                        //设置cookie
                        res.cookie(result[0].id,pwd_crypto,{maxAge:7*24*3600*1000});
                        //删除密码
                        delete user.user_pwd;
                        res.send({"state":0,"msg":state[0],"result":user});
                    }else{//用户不存在
                        res.send({"state":142,"msg":state[142]}); 
                    };
                    conn.release();
                });
            });
        }else{//参数错误
            res.send({"state":2,"msg":state[2]});
        };
    },
    //自动登录
    autoLogin (req, res) {
        //登录验证
        util.isLogin(req, res).then(user => {//登录成功
            res.send({"state":0,"msg":state[0],"result":user});
        }).catch(user => {//登录验证失败
            res.send({"state":1,"msg":state[1]});
        });
    },
    //退出登录
    outLogin (req, res) {
        //清除cookie
        Object.keys(req.cookies).forEach(i => {
            res.clearCookie(i);
        });
        res.send({"state":0,"msg":state[0]});
    },
    //用户注册
    register (req, res) {
        var body = req.body;
        if(body.username && body.password){
            pool.getConnection((err, conn) => {
                if(err){res.send({"state":146,"msg":state[146]});return};
                var sql = "INSERT INTO user (user_name,user_pwd) VALUES (?,?);";
                var sqlParams = [body.username,body.password];
                conn.query(sql, sqlParams, (err, result) => {
                    if(err){res.send({"state":147,"msg":state[147]});return};
                    if(result.affectedRows > 0){//注册成功
                        res.send({"state":0,"msg":state[0]});
                    }else{//注册失败
                        res.send({"state":148,"msg":state[148]});                                                
                    };
                    conn.release();
                });
            });
        }else{//参数错误
            res.send({"state":2,"msg":state[2]});
        };
    },
    //修改头像
    userHeader (req, res) {
        var file = req.files[0];
        if(file){//有数据
            var ext = path.parse(file.originalname).ext;//文件后缀
            var host = "https://m.xiegaojun.cn/headerImg/";
            //登录验证
            util.isLogin(req, res).then(user => {//登录验证成功
                fs.rename(file.path, file.path+ext, err => {
                    if(err){
                        res.send({"state":179,"msg":state[179]});
                    }else{
                        res.send({"state":0,"msg":state[0],"result":host+file.filename+ext});
                        pool.query("UPDATE user SET user_header=? WHERE id=?",[host+file.filename+ext, user.id]);
                        console.log(host+file.filename+ext);
                    };
                });
            }).catch(user => {//登录验证失败
                res.send({"state":1,"msg":state[1]});
            });
        }else{//参数错误
            res.send({"state":2,"msg":state[2]});
        };
    },
    //修改昵称
    userNick (req, res) {
        var query = req.query;
        if(query.usernick && !query.uid){//验证昵称
            pool.getConnection(function(err,conn){
                if(err){res.send({"state":149,"msg":state[149]});return};
                var sql = "SELECT user_name FROM user WHERE user_nick=? OR user_name=?";
                var sqlParams = [query.usernick, query.usernick];
                conn.query(sql, sqlParams, function(err,result){
                    if(err){res.send({"state":150,"msg":state[150]});return};
                    if(result.length <= 0){//验证成功
                        res.send({"state":0,"msg":state[0]});
                    }else{//昵称已存在
                        res.send({"state":151,"msg":state[151]});
                    };
                    conn.release();
                });
            });
        }else if(query.usernick && query.uid){//修改昵称
            //登录验证
            util.isLogin(req, res, query.uid).then(user => {//登录验证成功
                pool.getConnection((err, conn) => {
                    if(err){res.send({"state":152,"msg":state[152]});return};
                    var sql = "UPDATE user SET user_nick=? WHERE id=?";
                    var sqlParams = [query.usernick, query.uid];
                    conn.query(sql, sqlParams, (err, result) => {
                        if(err){res.send({"state":153,"msg":state[153]});return};
                        if(result.affectedRows > 0){//修改昵称成功
                            res.send({"state":0,"msg":state[0]});
                        }else{//修改昵称失败
                            res.send({"state":154,"msg":state[154]});
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
    //修改密码
    userPwd (req, res) {
        var body = req.body;
        if(body.oldpwd && body.newpwd && body.uid){
            //登录验证
            util.isLogin(req, res, body.uid).then(user => {//登录验证成功
                pool.getConnection((err, conn) => {
                    if(err){res.send({"state":173,"msg":state[173]});return};
                    var sql = "UPDATE user SET user_pwd=? WHERE id=? AND user_pwd=?";
                    var sqlParams = [body.newpwd, body.uid, body.oldpwd];
                    conn.query(sql, sqlParams, (err, result) => {
                        if(err){res.send({"state":174,"msg":state[174]});return};
                        if(result.affectedRows > 0){//修改密码成功
                            res.send({"state":0,"msg":state[0]});
                        }else{//修改密码失败
                            res.send({"state":175,"msg":state[175]});
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
