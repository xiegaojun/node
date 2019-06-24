const crypto = require("crypto");//加载node自带的加密模块

//采用AES对称加密算法
module.exports = {
    //加密
    encrypt (data, key) {//要加密的数据data   加密后用于解密的钥匙key
        const cipher = crypto.createCipher("aes192",key);
        var crypted = cipher.update(data, 'utf8', 'hex');
        crypted += cipher.final('hex');
        return crypted;
    },
    //解密
    decrypt (encrypted, key) {//要解密的数据encrypted   加密后用于解密的钥匙key
        try{
            const decipher = crypto.createDecipher('aes192', key);
            var decrypted = decipher.update(encrypted, 'hex', 'utf8');
            decrypted += decipher.final('utf8');
            return decrypted;
        } catch (error){//解密失败
            return ""; 
        }
    }
}
